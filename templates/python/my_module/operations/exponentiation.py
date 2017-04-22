from my_module.operations.elementary import multiply

def square(a):
    """
    This function return the square of ``a``.
    """
    return multiply(a, a)

def cube(a):
    """
    This function return the cube of ``a``.
    """
    b = multiply(a, a)
    return multiply(b, a)
