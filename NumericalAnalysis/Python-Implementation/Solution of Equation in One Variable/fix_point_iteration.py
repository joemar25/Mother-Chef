# Fixed-Point Iteration

# INPUT initial approximation P1; tolerance TOL; maximum number of iterations N.
# OUTPUT approximate solution p or message or failure.

# Step 1 Set i = 1.
# Step 2 While i < N do Step 3-6
# 	Step 3 Set p = g(P0). (Compute P).
# 	Step 4 If |p-p0| < TOL then
# 		OUTPUT (p); (The procedure was successful.)
# 		STOP.
# 	Step 5. Set i = i + 1
# 	Step 6. Set P0 = P1. (Update P0).
#   Step 7. OUTPUT ('The method failed after N0 iterations, N =', N0);
# 	    (The procedure was unsuccessful)
# 	    STOP.



