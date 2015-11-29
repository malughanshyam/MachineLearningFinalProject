'''
Created on Nov 29, 2015

@author: NiharKhetan
'''
import random
from DataParser.ReadCSV import *

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
        randNum = random.randrange(0, len(kickedCars))
        vector.append(kickedCars[randNum])
    
    return vector       
  
def writeCSVFile(csvFileName,data):
    with open(csvFileName, 'wb') as csvfile:
        csvWriter = csv.writer(csvfile)
        for row in data:
            csvWriter.writerow(row)
  

if __name__ == '__main__':
    trainingDir = os.path.join(os.pardir,'Dataset','training')
    balancedDataFile = os.path.join(trainingDir,'training_balanced.csv')
    trainingData = "training/training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30.csv"
    vector = readFileAsVector(trainingData)
    #vector = convertStringToNumeric(vector)
    balancedDataVector = balanceData(vector)
    writeCSVFile(balancedDataFile, balancedDataVector)
    
    