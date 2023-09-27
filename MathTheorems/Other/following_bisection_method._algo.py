from fractions import Fraction
# INPUT endpoints a,b; tolerance TOL; maximum numbers of iterations n_0.
# OUTPUT approximate solution p or message of failure.

# Step 1 Set i = 1
#              FA = f(a)
# Step 2 While i <= N_0 do Steps 3-6.
#      Step 3 Set p = a + (b - a) / 2; (computer p_i.)
#      Step 4 If FP = 0 or (b - a) / 2 < TOL then
#            OUTPUT (p); (Procedure completed successfully.)
#            STOP.
#      Step 5 Set i = i + 1.
#      Step 6 If FA * FP > 0 then set a = p; (Computer a_i, bi.)
#                                      FA = FP
#                            else set b = p. (FA is unchanged.))
# Step 7 Output ('Method failed after N_0 iterations, N_0, =',N_o);
#        (The procedure was unsuccessful.)
#        STOP.


# Inputs
a = 1
b = 2
TOL = 5
MAX_ITER = 10

# Given Equation using lamda to define the function, can use pow(num, raise)
f = lambda x: ((x)**3) + 4 * ((x)**2) - 10

# Step 1
i = 1
FA = f(a)
print(FA)
# Step 2
while i <= MAX_ITER:
    # Step 3
    p = a + (b - a) / 2
    # Step 4
    FP = f(p)
    if FP == 0 or (b - a) / 2 < TOL:
        print(f'{Fraction(p)} = {p}')
        break
    # Step 5
    i += 1
    # Step 6
    if FA * FP > 0:
        a = p
        FA = FP
    else:
        b = p

# Step 7
# print('Output (Method failed after N_0 iterations, N_0 = N_o)')

