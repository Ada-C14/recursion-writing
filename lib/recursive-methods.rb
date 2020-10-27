# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
    raise ArgumentError if n < 0
    return 1 if n == 0
    return n * factorial(n-1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse(s)
    return s if s.length <= 1
    return s[-1] + reverse(s[1..-2]) + s[0]
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse_inplace(s)
    return reverse_inplace_internal(s, 0)
end

def reverse_inplace_internal(s, level)
    return s if s.length - level * 2 <= 1
    s[level], s[-1 - level] = s[-1 - level], s[level]
    return reverse_inplace_internal(s, level + 1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
    return 0 if n == 0
    return 2 if n == 1
    return 2 + bunny(n-1)
end

# Time complexity: ?
# Space complexity: ?
def nested(s)
    return false if s.length % 2 == 1
    return true if s == ""
    return s[0] != s[-1] && nested(s[1..-2])
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