'''
Created on Nov 30, 2015

@author: NiharKhetan
'''
import pandas as pd
from pandas import DataFrame
import os, Dataset
import matplotlib.pyplot as plt


if __name__ == '__main__':
    fileName = 'main/dataset_4_unbalanced_normalized.csv'
    csvFileName = os.path.join(Dataset.__path__[0], fileName)
    df = pd.read_csv(csvFileName)
    print df.corr()
    plt.matshow(df.corr())
    plt.show()