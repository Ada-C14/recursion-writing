# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: ?
# Space complexity: ?
def factorial(n)

    raise ArgumentError if n < 0
    return 1 if n == 0
    return n * factorial(n - 1)

end

# Time complexity: ?
# Space complexity: ?
def reverse(s)
    if s.length <= 1
        return s
    end

    return s[-1] + reverse(s[1..-2]) + s[0]
end


# Time complexity: ?
# Space complexity: ?
def reverse_inplace(s, i = 0, j = s.length - 1)
    return s if s.length == 0 || s.length == 1
    return s if i >= j
    temp = s[i]
    s[i] = s[j]
    s[j] = temp

    return reverse_inplace(s, i + 1, j - 1)
end


# Time complexity: ?
# Space complexity: ?
def bunny(n)
    return 0 if n <= 0
    return 2 + bunny(n - 1)
end

# Time complexity: ?
# Space complexity: ?
def nested(s, i = 0, j = s.length - 1)
    return true if s.empty? || i > j && s[i] != s[j]
    return false if s.length == 1 || s[i] == s[j]
    return nested(s, i + 1, j - 1)

end

# Time complexity: ?
# Space complexity: ?
def search(array, value)

end

# Time complexity: ?
# Space complexity: ?
def is_palindrome(s)

end

# Time complexity: ?
# Space complexity: ?
def digit_match(n, m)

end