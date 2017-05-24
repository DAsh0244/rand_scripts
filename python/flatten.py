import sys
import itertools


l_flatten = lambda l: list(itertools.chain.from_iterable(l))

flatten(l: list)
    """
    flattens a list of iterables. 
    Only works on a list of lists. must only contain iterables.
    """
    return  list(itertools.chain.from_iterable(l))
    

