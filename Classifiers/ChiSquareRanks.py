'''
Created on Nov 30, 2015

@author: NiharKhetan
'''
import os, Dataset
import pandas as pd
from pandas import DataFrame

if __name__ == '__main__':
    fileName = 'main/dataset_4_unbalanced_normalized.csv'
    csvFileName = os.path.join(Dataset.__path__[0], fileName)
    df = pd.read_csv(csvFileName)
    target = df['IsBadBuy']
    del df['IsBadBuy']