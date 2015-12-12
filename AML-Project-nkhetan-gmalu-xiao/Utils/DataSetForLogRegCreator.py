'''
Created on Nov 29, 2015

@author: NiharKhetan
'''
from sklearn import preprocessing
from DataParser.CSVHandler import *


def dataStringDiscreteToNumericEncoder(vector):
    colNumToEncode = [0,2,3,4,6,7,8,17]
    
    le = preprocessing.LabelEncoder()
    for colNum in colNumToEncode:
        colToEncode = []
        for i in range(1, len(vector)):
            colToEncode.append(vector[i][colNum])
        le.fit(colToEncode)
        encodedColumn = le.transform(colToEncode)       
        for i in range(1, len(vector)):
            vector[i][colNum] = encodedColumn[i - 1]
    return vector

if __name__ == '__main__':
    
    datasetDir = os.path.join(os.pardir,'Dataset','main')
    balancedDataFile = os.path.join(datasetDir,'dataset_7_balanced.csv')
    trainingData = "main/dataset_3_balanced_normalized.csv"
    vector = readFileAsVector(trainingData)
    encodedVector = dataStringDiscreteToNumericEncoder(vector)   
    writeCSVFile(balancedDataFile, encodedVector)
    print "Done"
    
