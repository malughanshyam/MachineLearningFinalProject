import matplotlib.pyplot as plt
import numpy as np
from sklearn.metrics import roc_auc_score


def perf_measure(y_actual, y_hat):
    TP = 0
    FP = 0
    TN = 0
    FN = 0

    for i in range(len(y_hat)): 
        if y_actual[i]==y_hat[i]==1:
            TP += 1
    for i in range(len(y_hat)): 
        if y_actual[i]==1 and y_actual!=y_hat[i]:
            FP += 1
    for i in range(len(y_hat)): 
        if y_actual[i]==y_hat[i]==0:
            TN += 1
    for i in range(len(y_hat)): 
        if y_actual[i]==0 and y_actual!=y_hat[i]:
            FN += 1

    return(TP, FP, TN, FN)


if __name__ == '__main__':
    trueValues = [0,0,1,1,0,0,1,1,1,1,1,1]
    predicted = [0,0,0,0,1,1,1,1,1,1,1,1]
    print perf_measure(trueValues, predicted)
    '''
    score = np.array([0.9, 0.8, 0.7, 0.6, 0.55, 0.54, 0.53, 0.52, 0.51, 0.505, 0.4, 0.39, 0.38, 0.37, 0.36, 0.35, 0.34, 0.33, 0.30, 0.1])
    y = np.array([1,1,0, 1, 1, 1, 0, 0, 1, 0, 1,0, 1, 0, 0, 0, 1 , 0, 1, 0])
    
    roc_x = []
    roc_y = []
    min_score = min(score)
    max_score = max(score)
    thr = np.linspace(min_score, max_score, 30)
    FP=0
    TP=0
    N = sum(y)
    P = len(y) - N
    
    for (i, T) in enumerate(thr):
        for i in range(0, len(score)):
            if (score[i] > T):
                if (y[i]==1):
                    TP = TP + 1
                if (y[i]==0):
                    FP = FP + 1
        roc_x.append(FP/float(N))
        roc_y.append(TP/float(P))
        FP=0
        TP=0
    
    plt.scatter(roc_x, roc_y)
    plt.show()
    
    print roc_auc_score(y, score)
    '''