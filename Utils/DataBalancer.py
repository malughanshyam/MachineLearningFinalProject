'''
Created on Nov 29, 2015

@author: NiharKhetan
'''
import random
from DataParser.CSVHandler import *

def convertStringToNumeric(vector):
    for i in range(0,len(vector)):
        for j in range(0,len(vector[i])):
            if vector[i][j].isdigit():
                vector[i][j] = float(vector[i][j])
    return vector


def balanceData(vector):
    
    kickedCars = []
    for row in vector:
        if row[-1] == 1 or row[-1] == '1':
            kickedCars.append(row)
    
    #appending 3 times in vector
    for row in kickedCars:
        vector.append(row)
        vector.append(row)
        vector.append(row)
    
    for i in range(0, 6767):
        randNum = random.randrange(1, len(kickedCars))
        vector.append(kickedCars[randNum])
    
    return vector       

if __name__ == '__main__':
    datasetDir = os.path.join(os.pardir,'Dataset','main')
    balancedDataFile = os.path.join(datasetDir,'dataset_0_balanced.csv')
    rawData = "main/raw/training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30.csv"
    vector = readFileAsVector(rawData)
    #vector = convertStringToNumeric(vector)
    balancedDataVector = balanceData(vector)
    writeCSVFile(balancedDataFile, balancedDataVector)
    
    