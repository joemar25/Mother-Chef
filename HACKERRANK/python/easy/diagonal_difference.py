#!/bin/python3

import math
import os
import random
import re
import sys

#
# Complete the 'diagonalDifference' function below.
#
# The function is expected to return an INTEGER.
# The function accepts 2D_INTEGER_ARRAY arr as parameter.
#


def diagonalDifference(arr):
    n = len(arr)
    left = 0
    right = 0

    for i in range(n):
        left += arr[i][i]
        right += arr[i][n - i - 1]

        # 1 (0,0) 2 (0,1) 3 (0,2)
        # 4 (1,0) 5 (1,1) 6 (1,2)
        # 9 (2,0) 8 (2,1) 9 (2,2)

        # answer (left):
        # 0, 0 = 1
        # 1, 1 = 5
        # 2, 2 = 9

        # answer (right):
        # 0, (3-0-1) 2 = 3
        # 1, (3-1-1) 2 = 5
        # 2, (3-2-1) 2 = 9

    return abs(left - right)


if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    n = int(input().strip())

    arr = []

    for _ in range(n):
        arr.append(list(map(int, input().rstrip().split())))

    result = diagonalDifference(arr)

    fptr.write(str(result) + '\n')

    fptr.close()
