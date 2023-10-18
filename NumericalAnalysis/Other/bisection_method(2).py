from fractions import Fraction

"""
Note:
This method is for the question with has Intervals in it, not finding the root of the function

Steps:
1. Insert the interval of the function which is [a, b] to get the symbol for a and b
2. Check if a is negative and b is positive (Continue)
3. Apply the bisection method formula: Pn = (a + b) / 2
"""


def equation(x):
    # (1) base on input formula, this is the 'function'
    return ((x)^2) - 3 


def f(x):
    a, b = x
    ans1 = equation(a)
    ans2 = equation(b)

    # get the symbol of a and b, basically if a less than 0 then it is negative and b must be postivie
    if ans1 < 0 and ans2 > 0:
        # do the bisection method formula as P var in main
        return ((a) + (b)) / 2
    return "Cannot perform the bisection method"

def main ():
    # (2) interval [a, b], base on input interval
    # (3) twist to create a table for the outputs: https://byjus.com/maths/bisection-method/
    interval = [1, 2]
    
    i = interval[0]
    n = 8 # since 1 to 7
    for i in range(i, n):
        # print("test")
        # print(f"f({i}) = {f(interval)}")
        print(f"iteration={i}, interval={interval}")
        interval[0] = i
    
    
    # ans = f(interval)
        
    # # convert ans to a fraction
    # print(f"ans = {Fraction(ans)} => {ans}")

if "__main__" == __name__:
    main()
   

