# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n); n operations are completed in total (1 for each level except base case)
# Space complexity: O(n); stack will have n+1 levels
def factorial(n)
    # raise NotImplementedError, "Method not implemented"
    raise ArgumentError, "Must pass an positive integer value or 0." if n < 0
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