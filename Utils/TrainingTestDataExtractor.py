'''
Created on Nov 29, 2015

@author: NiharKhetan, Ghanshyam Malu
'''
import random, pickle
from DataParser.CSVHandler import *

def getTrainingAndTestIndices(trainingDataPercent, totalDataSize):
     
    ''' Training and Test Row numbers based on the size of dataset '''

    trainingWgt = int(trainingDataPercent * totalDataSize)
    
    allIndices = range(1,totalDataSize)
    trainingRowNum = random.sample(range(1, totalDataSize), trainingWgt)
    testRowNum = list(set(allIndices) - set(trainingRowNum)) 
    
    return trainingRowNum, testRowNum
    
def createNewTrainingAndTestIndices():
    
    #      ['dataset_0_balanced.csv', 'dataset_0_unbalanced.csv', 'dataset_1_balanced_discretized.csv', 'dataset_2_unbalanced_discretized.csv', 'dataset_3_balanced_normalized.csv', 'dataset_4_unbalanced_normalized.csv', 'dataset_5_balanced_handpicked_features.csv', 'dataset_6_unbalanced_handpicked_features.csv']]
    vector = readFileAsVector('main/dataset_0_balanced.csv')
    trainingRowNumBalanced, testRowNumBalanced = getTrainingAndTestIndices(trainingDataPercent, len(vector))
    
    vector = readFileAsVector('main/dataset_0_unbalanced.csv')
    trainingRowNumUnBalanced, testRowNumUnBalanced = getTrainingAndTestIndices(trainingDataPercent, len(vector))
    
    
    allIndexDict = {
                 'trainingRowNumBalanced':trainingRowNumBalanced,
                 'testRowNumBalanced':testRowNumBalanced,
                 'trainingRowNumUnBalanced':trainingRowNumUnBalanced,
                 'testRowNumUnBalanced':testRowNumUnBalanced
                 }
    output = open(os.path.join(datasetDir,'TrainingAndTestIndexDictPickle.pkl'), 'wb')
    pickle.dump(allIndexDict, output)
    output.close()
    
    return allIndexDict

def getExistingTrainingAndTestIndices():
    pkl_file = open(os.path.join(datasetDir,'TrainingAndTestIndexDictPickle.pkl'), 'rb')
    allIndexDict = pickle.load(pkl_file)

    pkl_file.close()
    return allIndexDict

def extractRows(datasetVector,trainingRowNumBalanced):
    
    extractedRows = [datasetVector[0]]     
    for idx in trainingRowNumBalanced:
        extractedRows.append(datasetVector[idx])
      
    return extractedRows       
   

if __name__ == '__main__':
    trainingDataPercent = 0.7
    datasetDir = os.path.join(os.pardir,'Dataset','main')
    trainDataDir = os.path.join(os.pardir,'Dataset','train')
    testDataDir = os.path.join(os.pardir,'Dataset','test')
    
#     allIndexDict = createNewTrainingAndTestIndices()
    allIndexDict = getExistingTrainingAndTestIndices()
    
    allDatasetNameList = os.listdir(datasetDir)
    allDatasetNameList.remove('raw')
    allDatasetNameList.remove('training.csv')
    allDatasetNameList.remove('TrainingAndTestIndexDictPickle.pkl')
    
    balancedDatasets = []
    unBalancedDatasets = []
    
    for dataset in allDatasetNameList:
        if '_balanced' in dataset.lower():
            balancedDatasets.append(dataset)
        elif '_unbalanced' in dataset.lower():
            unBalancedDatasets.append(dataset)
            
    # Balanced dataset
    for dataset in balancedDatasets:
        datasetVector = readFileAsVector(os.path.join(datasetDir,dataset))
        print
        print "Extracting", str(trainingDataPercent*100) +'%', "Train dataset for", dataset
        trainData = extractRows(datasetVector,allIndexDict['trainingRowNumBalanced'])
        trainDataFileName = os.path.join(trainDataDir,'train_'+ dataset)
        writeCSVFile(trainDataFileName, trainData)

        print "Extracting ", str((1-trainingDataPercent)*100) +'%', "Test dataset for", dataset
        testData = extractRows(datasetVector,allIndexDict['testRowNumBalanced'])
        testDataFileName = os.path.join(testDataDir,'test_'+ dataset)
        writeCSVFile(testDataFileName, testData)        
        
        print
        print "-"*40
        
    # UnBalanced dataset
    for dataset in unBalancedDatasets:
        datasetVector = readFileAsVector(os.path.join(datasetDir,dataset))
        print
        print "Extracting", str(trainingDataPercent*100) +'%', "Train dataset for", dataset
        trainData = extractRows(datasetVector,allIndexDict['trainingRowNumUnBalanced'])
        trainDataFileName = os.path.join(trainDataDir,'train_'+ dataset)
        writeCSVFile(trainDataFileName, trainData)

        print "Extracting ", str((1-trainingDataPercent)*100) +'%', "Test dataset for", dataset
        testData = extractRows(datasetVector,allIndexDict['testRowNumUnBalanced'])
        testDataFileName = os.path.join(testDataDir,'test_'+ dataset)
        writeCSVFile(testDataFileName, testData)        
        
        print
        print "-"*40
