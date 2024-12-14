#!/bin/python3

import math
import os
import random
import re
import sys

#
# Complete the 'miniMaxSum' function below.
#
# The function accepts INTEGER_ARRAY arr as parameter.
#


def miniMaxSum(arr):

    # sort in order to get the proper placing of the min and max

    arr.sort()
    calc_min = 0
    calc_max = 0

    for i in range(0, len(arr) - 1):
        calc_min += arr[i]

    for i in range(1, len(arr)):
        calc_max += arr[i]

    print(calc_min, calc_max)


if __name__ == '__main__':

    arr = list(map(int, input().rstrip().split()))

    miniMaxSum(arr)
