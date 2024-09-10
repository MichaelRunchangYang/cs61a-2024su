def multiply(m, n):
    """Takes two positive integers and returns their product using recursion.
    >>> multiply(5, 3)
    15
    """
    "*** YOUR CODE HERE ***"
    if m == 1:
        return n
    elif n == 1:
        return m
    elif m < n:
        return n + multiply(m-1, n)
    else:
        return m + multiply(m, n-1)