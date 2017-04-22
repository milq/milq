from my_module.operations.elementary import multiply, divide
from my_module.operations.exponentiation import square

def universal_gravitation_of_newton(m1, m2, r):
    """
    This function return Newton's law of universal gravitation
    """
    G = 6.6726e-11
    return multiply(G, divide(multiply(m1, m2), square(r)))
    