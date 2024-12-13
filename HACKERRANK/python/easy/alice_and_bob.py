#!/bin/python3

import os

#
# Complete the 'compareTriplets' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts following parameters:
#  1. INTEGER_ARRAY a
#  2. INTEGER_ARRAY b
#


def compareTriplets(a, b):
    score = [0, 0]  # alice [0] and bob [1]
    n = len(a)

    for i in range(n):
        if (a[i] > b[i]):
            score[0] += 1
        elif (a[i] < b[i]):
            score[1] += 1
        elif (a[i] == b[i]):
            pass
    return score


if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    a = list(map(int, input().rstrip().split()))

    b = list(map(int, input().rstrip().split()))

    result = compareTriplets(a, b)

    fptr.write(' '.join(map(str, result)))
    fptr.write('\n')

    fptr.close()
