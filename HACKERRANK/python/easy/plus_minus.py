#!/bin/python3

import math
import os
import random
import re
import sys

#
# Complete the 'plusMinus' function below.
#
# The function accepts INTEGER_ARRAY arr as parameter.
#

def plusMinus(arr):
    
    n = len(arr)
    proportion=[
        0, # positive
        0, # negative
        0  # zero
    ]
    
    # logic
    for i in range(n):
        if arr[i] > 0:
            proportion[0] += 1
        elif arr[i] < 0:
            proportion[1] += 1
        elif arr[i] == 0:
            proportion[2] += 1
    
    # print(proportion[0])
    # print(proportion[1])
    # print(proportion[2])
    proportion[0] /= n
    proportion[1] /= n
    proportion[2] /= n
    
    for i in proportion:
        print(i)
    
    
if __name__ == '__main__':
    n = int(input().strip())

    arr = list(map(int, input().rstrip().split()))

    plusMinus(arr)
