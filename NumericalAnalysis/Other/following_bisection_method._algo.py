from fractions import Fraction

# INPUT endpoints a,b; tolerance TOL; maximum numbers of iterations N.
# OUTPUT approximate solution p or message of failure.

# Step 1 Set i = 1
#              FA = f(a)
# Step 2 While i <= N do Steps 3-6.
#      Step 3 Set p = a + (b - a) / 2; (computer p_i.)
#      Step 4 If FP = 0 or (b - a) / 2 < TOL then
#            OUTPUT (p); (Procedure completed successfully.)
#            STOP.
#      Step 5 Set i = i + 1.
#      Step 6 If FA * FP > 0 then set a = p; (Computer a_i, bi.)
#                                      FA = FP
#                            else set b = p. (FA is unchanged.))
# Step 7 Output ('Method failed after N iterations, N, =',N_o);
#        (The procedure was unsuccessful.)
#        STOP.


# Given Equation using lamda to define the function, can use pow(num, raise)
f = lambda x: ((x) ** 3) + 4 * ((x) ** 2) - 10

# INPUT endpoints a,b; tolerance TOL; maximum numbers of iterations n_0.
a = 1
b = 2
TOL = 5
N = 10

# Step 1 Set i = 1
i = 1
FA = f(a)

# Step 2 While i <= N do Steps 3-6.
while i <= N:
    # Step 3 Set p = a + (b - a) / 2; (computer p_i.)
    p = a + (b - a) / 2
    FP = f(p)

    # Step 4 If FP = 0 or (b - a) / 2 < TOL then
    if FP == 0 or (b - a) / 2 < TOL:
        print(f"Approximate solution: {p}")  # Procedure completed successfully.
        break

    # Step 5 Set i = i + 1.
    i += 1

    # Step 6 If FA * FP > 0 then set a = p; (Computer a_i, bi.)
    if FA * FP > 0:
        a = p
        FA = FP
    else:
        b = p  # FA is unchanged.

# Step 7 Output ('Method failed after N iterations, N, =',N_o);
else:
    print(f"Method failed after N iterations, N = {i}")
    print("The procedure was unsuccessful.")
