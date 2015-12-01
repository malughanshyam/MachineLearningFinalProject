'''
Created on Nov 30, 2015

@author: NiharKhetan
'''
import os, Dataset
import pandas as pd
from pandas import DataFrame
import pandas as pd
from sklearn.metrics import accuracy_score
from sklearn.cross_validation import train_test_split
from sklearn.feature_selection import chi2
from sklearn.feature_selection import SelectKBest
from sklearn import tree
from sklearn import linear_model
from sklearn.svm import SVC
from sklearn.naive_bayes import GaussianNB
from random import randint
from sklearn.svm import LinearSVC
from sklearn.multiclass import OneVsRestClassifier
from sklearn.preprocessing import LabelEncoder
from Utils.LabelEncoderMultiColumn import MultiColumnLabelEncoder
from sklearn import metrics
from sklearn.metrics import f1_score

def findMaxIndex(a):
    max = 0
    maxIndex = -1
    for i in range(len(a)):
        if a[i] > max:
            max = a[i]
            maxIndex = i
    return maxIndex

if __name__ == '__main__':
    fileName = 'main/dataset_4_unbalanced_normalized.csv'
    csvFileName = os.path.join(Dataset.__path__[0], fileName)
    df = pd.read_csv(csvFileName)
    df = MultiColumnLabelEncoder(columns = ['Auction','Make','Transmission','WheelType','Nationality','Size','TopThreeAmericanName','VNST']).fit_transform(df)
    
    df.apply(LabelEncoder().fit_transform)
    
    target = df['IsBadBuy']
    del df['IsBadBuy']
    classifierDict = {"decisionTree":[[],[],[]], "logreg":[[],[],[]], "naivebayes":[[],[],[]], "svm":[[],[],[]]}
    X, y = df, target
    for X_features in range(1, 22, 2):
        X, y = df, target
        print("Feature Count::\t" +str(X_features))
        ch2 = SelectKBest(chi2, k=X_features)
        X = ch2.fit_transform(X, y)
    
        # Splitting the data to train and test
        X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=.30, random_state=42)
    
        # Decision Tree
        clf = tree.DecisionTreeClassifier(max_depth=70)
        
        print "Decision Tree model"
        d = clf.fit(X_train, y_train)
        print "starting predication"
        Y_predicted = d.predict(X_test)
        fpr,tpr,_ = metrics.roc_curve(y_test,Y_predicted)
        print "Accuracy :: ", accuracy_score(y_test, Y_predicted)
        print "F1 Score :: ", f1_score(y_test, Y_predicted,average='weighted')
        print "AUC Score:: ", metrics.auc(fpr, tpr)
        classifierDict["decisionTree"][0].append(accuracy_score(y_test, Y_predicted))
        classifierDict["decisionTree"][1].append(f1_score(y_test, Y_predicted,average='weighted'))
        classifierDict["decisionTree"][2].append(metrics.auc(fpr, tpr))
        print("\n")
    
        #Linear Regression
        regr= linear_model.LogisticRegression(C=10000)
        print("Logistic Regression model")
        d = regr.fit(X_train, y_train)
        print("starting predication")
        Y_predicted = d.predict(X_test)
        fpr,tpr,_ = metrics.roc_curve(y_test,Y_predicted)
        print "Accuracy :: ", accuracy_score(y_test, Y_predicted)
        print "F1 Score :: ", f1_score(y_test, Y_predicted,average='weighted')
        print "AUC Score:: ", metrics.auc(fpr, tpr)
        classifierDict["logreg"][0].append(accuracy_score(y_test, Y_predicted))
        classifierDict["logreg"][1].append(f1_score(y_test, Y_predicted,average='weighted'))
        classifierDict["logreg"][2].append(metrics.auc(fpr, tpr))
        print("\n")
           
        #SVM
        svm = LinearSVC(C=100000)
        print("SVM model")
        d = svm.fit(X_train, y_train)
        print("starting predication")
        Y_predicted = d.predict(X_test)
        print("SVM model Accuracy is")
        fpr,tpr,_ = metrics.roc_curve(y_test,Y_predicted)
        print "Accuracy :: ", accuracy_score(y_test, Y_predicted)
        print "F1 Score :: ", f1_score(y_test, Y_predicted,average='weighted')
        print "AUC Score:: ", metrics.auc(fpr, tpr)
        classifierDict["svm"][0].append(accuracy_score(y_test, Y_predicted))
        classifierDict["svm"][1].append(f1_score(y_test, Y_predicted,average='weighted'))
        classifierDict["svm"][2].append(metrics.auc(fpr, tpr))
        print("\n")
 
    
        #Naive Bayes
        print("Naive Bayes")
        d = svm.fit(X_train, y_train)
        print("starting predication")
        Y_predicted = d.predict(X_test)
        print("Naive Bayes model Accuracy is")
        fpr,tpr,_ = metrics.roc_curve(y_test,Y_predicted)
        print "Accuracy :: ", accuracy_score(y_test, Y_predicted)
        print "F1 Score :: ", f1_score(y_test, Y_predicted,average='weighted')
        print "AUC Score:: ", metrics.auc(fpr, tpr)
        classifierDict["naivebayes"][0].append(accuracy_score(y_test, Y_predicted))
        classifierDict["naivebayes"][1].append(f1_score(y_test, Y_predicted,average='weighted'))
        classifierDict["naivebayes"][2].append(metrics.auc(fpr, tpr))
        print("\n")
        print("-------------------------------------------------------------------------------------------------------------")
    print "Decision tree max index accuracy: ", findMaxIndex(classifierDict["decisionTree"][0])
    print "Decision tree max index fscore: ", findMaxIndex(classifierDict["decisionTree"][1])
    print "Decision tree max index auc: ", findMaxIndex(classifierDict["decisionTree"][2])
    print '\n'
    print "logreg tree max index accuracy: ", findMaxIndex(classifierDict["logreg"][0])
    print "logreg tree max index fscore: ", findMaxIndex(classifierDict["logreg"][1])
    print "logreg tree max index auc: ", findMaxIndex(classifierDict["logreg"][2])
    print '\n'
    print "svm tree max index accuracy: ", findMaxIndex(classifierDict["svm"][0])
    print "svm tree max index fscore: ", findMaxIndex(classifierDict["svm"][1])
    print "svm tree max index auc: ", findMaxIndex(classifierDict["svm"][2])
    print '\n'
    print "naivebayes tree max index accuracy: ", findMaxIndex(classifierDict["naivebayes"][0])
    print "naivebayes tree max index fscore: ", findMaxIndex(classifierDict["naivebayes"][1])
    print "naivebayes tree max index auc: ", findMaxIndex(classifierDict["naivebayes"][2])