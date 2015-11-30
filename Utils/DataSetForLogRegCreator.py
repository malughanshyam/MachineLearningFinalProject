'''
Created on Nov 29, 2015

@author: NiharKhetan
'''
from sklearn import preprocessing
from DataParser.CSVHandler import *

if __name__ == '__main__':
    
    trainingData = "training/training_dataset_4_unbalanced_normalized.csv"
    vector = readFileAsVector(trainingData)
    vec = ["paris", "paris", "paris", "tokyo","amsterdam"]
    le = preprocessing.LabelEncoder()
    le.fit(["paris", "paris", "tokyo", "amsterdam"])
    print list(le.classes_)
    vec = le.transform(vec)
    print vec
    print vector[0]
    print vector[1]

    for i in range(len(vector[0])):
        print vector[0][i], "(",i,") ->", vector[1][i]
    colToEncode = [0,2,3,4,6,7,8,17]
    