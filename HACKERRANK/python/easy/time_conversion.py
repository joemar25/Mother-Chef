#!/bin/python3

import math
import os
import random
import re
import sys

#
# Complete the 'timeConversion' function below.
#
# The function is expected to return a STRING.
# The function accepts STRING s as parameter.
#


def timeConversion(s):
    # Extract the AM/PM part
    period = s[-2:]

    # Extract the hour part
    hour = int(s[:2])

    # Extract the rest of the time
    rest = s[2:-2]

    # Convert to 24-hour format
    if period == 'AM':
        if hour == 12:
            hour_24 = '00'
        else:
            hour_24 = f"{hour:02d}"
    else:  # period == 'PM'
        if hour == 12:
            hour_24 = '12'
        else:
            hour_24 = f"{hour + 12:02d}"

    # Combine the hour with the rest of the time
    return hour_24 + rest


if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    s = input()

    result = timeConversion(s)

    fptr.write(result + '\n')

    fptr.close()
