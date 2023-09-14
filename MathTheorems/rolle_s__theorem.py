import numpy as np

def function(x):
    return np.sin(x) + np.sin(2*x)

def derivative(x):
    return np.cos(x) + 2*np.cos(2*x)

def rolles_theorem(interval_start, interval_end, tolerance=1e-6, max_iterations=100):
    if interval_start >= interval_end:
        return None
    
    for _ in range(max_iterations):
        midpoint = (interval_start + interval_end) / 2
        if abs(derivative(midpoint)) < tolerance:
            return midpoint
        
        if derivative(interval_start) * derivative(midpoint) < 0:
            interval_end = midpoint
        else:
            interval_start = midpoint
    
    return None

# Define the interval for Rolle's Theorem
interval_start = 0
interval_end = 2 * np.pi

result = rolles_theorem(interval_start, interval_end)

if result is not None:
    print(f"A point where the derivative is approximately zero: {result}")
    print(f"Value of the function at that point: {function(result)}")
else:
    print("No point found within the given interval.")
