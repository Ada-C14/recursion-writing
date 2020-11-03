# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n) - it takes one recursion for every increase in n
# Space complexity: O(n) - because of the system stack
def factorial(n)
    raise ArgumentError if n < 0
    return 1 if n <= 1
    return n * factorial(n-1)
end

# Time complexity: O(n) - It takes n recursions for each character
# Space complexity: O(n^2) - n is number of characters
# String objects with length n * (n-1) * (n-2) ... are made
def reverse(s)
    return s if s.length <= 1
    return reverse(s[1..-1]) + s[0]
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