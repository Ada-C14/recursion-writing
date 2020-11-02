# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# The number of times that the method will be called increases
# proportionally as you increase the size of n.
# "n - 1" controls the main method and there are no other methods
# called inside of the main method.
# Space complexity: O(n)
# The method only needs to track the local variable and the return value
# of each function call for factorial(n). There are no other data structures
# being created. So, the space complexity is how many stack frames
# need to be added to the stack, which is based on how many times it runs.
def factorial(n)
    raise ArgumentError if n < 0

    return 1 if n == 0

    return n * factorial(n - 1)
end

# Time complexity: ?
# Space complexity: ?
def reverse(s)
    raise NotImplementedError, "Method not implemented"
end

# Time complexity: ?
# Space complexity: ?
def reverse_inplace(s)
    raise NotImplementedError, "Method not implemented"
end

# Time complexity: ?
# Space complexity: ?
def bunny(n)
    raise NotImplementedError, "Method not implemented"
end

# Time complexity: ?
# Space complexity: ?
def nested(s)
    raise NotImplementedError, "Method not implemented"
end

# Time complexity: ?
# Space complexity: ?
def search(array, value)
    raise NotImplementedError, "Method not implemented"
end

# Time complexity: ?
# Space complexity: ?
def is_palindrome(s)
    raise NotImplementedError, "Method not implemented"
end

# Time complexity: ?
# Space complexity: ?
def digit_match(n, m)
    raise NotImplementedError, "Method not implemented"
end