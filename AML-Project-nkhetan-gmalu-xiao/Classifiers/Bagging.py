'''
Created on Nov 30, 2015

@author: NiharKhetan
'''

import os, Dataset
import pandas as pd
from pandas import DataFrame
from sklearn.svm import LinearSVC
from sklearn.cross_validation import train_test_split
from sklearn.preprocessing import LabelEncoder
from Utils.LabelEncoderMultiColumn import MultiColumnLabelEncoder
from sklearn.metrics import accuracy_score
from sklearn.metrics import f1_score
from sklearn.metrics import precision_score
from sklearn.metrics import recall_score
from sklearn.metrics import roc_auc_score
from sklearn.ensemble import BaggingClassifier
from sklearn.neighbors import KNeighborsClassifier
from sklearn.tree import DecisionTreeClassifier
from sklearn import metrics

if __name__ == '__main__':
    fileName = 'main/dataset_4_unbalanced_normalized.csv'
    csvFileName = os.path.join(Dataset.__path__[0], fileName)
    df = pd.read_csv(csvFileName)
    df = MultiColumnLabelEncoder(columns = ['Auction','Make','Transmission','WheelType','Nationality','Size','TopThreeAmericanName','VNST']).fit_transform(df)
    
    df.apply(LabelEncoder().fit_transform)
    print df
    target = df['IsBadBuy']
    del df['IsBadBuy']
    
    X, y = df, target
    
    X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=.30, random_state=42)
        
    bagging = BaggingClassifier(DecisionTreeClassifier(random_state=0), max_samples = 0.5, max_features = 0.5)
    builtModel = bagging.fit(X_train, y_train)
    Y_predicted = builtModel.predict(X_test)
    fpr,tpr,_ = metrics.roc_curve(y_test,Y_predicted)
    
    print "Accuracy :: ", accuracy_score(y_test, Y_predicted)
    print "Precision :: ", precision_score(y_test, Y_predicted,average='weighted')
    print "Recall :: ", recall_score(y_test, Y_predicted,average='weighted')
    print "F1 Score :: ", f1_score(y_test, Y_predicted,average='weighted')
    print "AUC Score:: ", metrics.auc(fpr, tpr)