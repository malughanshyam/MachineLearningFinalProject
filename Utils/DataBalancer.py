'''
Created on Nov 29, 2015

@author: NiharKhetan
'''


from DataParser.ReadCSV import readFileAsVector

def balanceData(vector):
    
    kickedCars = []
    for row in vector:
        if row[-1] == '1':
            kickedCars.append(row)
            print kickedCars
            break
            
    
if __name__ == '__main__':
    training_data = "training/training_exluding_f1_2_3_5_8_9_10_11_13_27_28_29_30.csv"
    vector = readFileAsVector(training_data)
    balanceData(vector)
    