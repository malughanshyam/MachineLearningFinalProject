'''
Created on Nov 29, 2015

@author: NiharKhetan
'''
from sklearn import preprocessing

if __name__ == '__main__':
    le = preprocessing.LabelEncoder()
    le.fit(["paris", "paris", "tokyo", "amsterdam"])
    print list(le.classes_)
    