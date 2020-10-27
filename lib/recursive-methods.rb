# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n) ['n' being the number of times factorial computation has to be implemented until n reaches 0]
# Space complexity: 0(n) ['n' being the number of function calls on the stack]
def factorial(n)
    raise ArgumentError if n < 0
    return 1 if n == 0
    return n * factorial(n - 1)

end

# Time complexity: ?
# Space complexity: ?
def reverse(s, i = 1)
    return s if s == "" || s.length < 2
    reversed = reverse(s[1..-1])
    reversed += s[0]
    return reversed
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