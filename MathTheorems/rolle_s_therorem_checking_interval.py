"""
1. Check if function is continuous and differentiable (must be polynomial)
2. Prov the function is f(a) = f(b)
3. Find the derrivative of the function
4. Find C and then factor out (f'(c))
5. Evaluate the function if it satisfies the interval a and b
"""


# (0)
def equation(x):
    # (1) base on input formula, this is the 'function', it must be polynomial
    return (x - 3) * (x + 4) * (x - 4)


# (2)
def f(x):
    # distribute x value to a and b since x is a list [a, b]
    a, b = x
    # use equation to determine if a and b is equal
    a = equation(a)
    b = equation(b)

    # if a and b is equal, return True
    if a != b:
        return False

    # if true then it satisfies the 1st condition
    return True


def main():
    # (1) interval [a, b], base on input interval
    intervals = [
        [-2, 1],
        [-1, 2],
        [-3, 1],
        [-1, 6],
    ]

    # loop through the interval and print the result
    for counter, i in enumerate(intervals):
        print(f"{counter + 1}. interval {i},  {f(i)}")


if __name__ == "__main__":
    main()
