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
from sklearn.feature_selection import RFE
from sklearn.svm import SVR
 
if __name__ == '__main__':
    fileName = 'main/dataset_4_unbalanced_normalized.csv'
    csvFileName = os.path.join(Dataset.__path__[0], fileName)
    df = pd.read_csv(csvFileName)
    df = MultiColumnLabelEncoder(columns = ['Auction','Make','Transmission','WheelType','Nationality','Size','TopThreeAmericanName','VNST']).fit_transform(df)
    
    df.apply(LabelEncoder().fit_transform)
    
    target = df['IsBadBuy']
    del df['IsBadBuy']
    
    X, y = df, target
    n_classes = 1
    
    X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=.30, random_state=42)
    
    
    estimator = SVR(kernel="linear")
    #going with default None where half features are selected
    selector = RFE(estimator, 5, step=1)
    selector = selector.fit(X_train, y_train)
    print selector.support_
    print selector.ranking_
    '''
    Y_predicted = builtModel.predict(X_test)
    y_score = svm.fit(X_train, y_train).decision_function(X_test)

    print "Accuracy :: ", accuracy_score(y_test, Y_predicted)
    print "Precision :: ", precision_score(y_test, Y_predicted)
    print "Recall :: ", recall_score(y_test, Y_predicted)
    print "F1 Score :: ", f1_score(y_test, Y_predicted)
    print "AUC Score:: ", roc_auc_score(y_test, y_score)
    '''