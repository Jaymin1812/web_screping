#   Decorators and Metaprogramming: create a Python decorator that logs the execution time of a function.

import time                 

def execution_time(func):
    def wrapper():
        start_time = time.time()                #time.time() is a function that returns the current time in seconds 
        print(start_time)
        result = func()
        end_time = time.time()
        print(end_time)
        execution_time = end_time - start_time          #diffrence  to startime and endtime
        print(f"{func.__name__} took {execution_time:.5f} seconds to execute.")
        return result
    return wrapper

# Example usage of the decorator
@execution_time
def some_function():
    # Simulate some time-consuming task
    time.sleep(5)
some_function()