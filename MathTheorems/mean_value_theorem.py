
#  (0) Given Equation
def equation(x):
    return pow(x, 3) + (4 * x)


def f(x):
    a, b = x
    # (1) Checking the interval
    fa = equation(a)
    fb = equation(b)
    return (fb-fa) / (b-a)


def main ():
    #  (0) Given Intervals
    intervals = [-1, 1]
    print(f"output={f(intervals)}")


if "__main__" == __name__:
    main()