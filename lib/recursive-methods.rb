# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: o(n)
# Space complexity: o(n)
def factorial(n)
    return 1 if n == 1

    if n < 0
        raise ArgumentError.new("n must be >=0")
    end

    return n * factorial(n-1)
end

# Time complexity: ?
# Space complexity: ?
def reverse(s)

end

# Time complexity: ?
# Space complexity: ?
def reverse_inplace(s)
    return reverse_inplace_recursive(s, 0)
end

def reverse_inplace_recursive(s, index)

    if s.length / 2 == index
        return s
    end

    temp_char = s[index]
    s[index] = s[s.length - 1 - index]
    s[s.length - 1 - index] = temp_char

    # alternative way for the same thing
    # temp_char =  s[s.length - 1 - index]
    # s[s.length - 1 - index] = s[index]
    # s[index] = temp_char

    return reverse_inplace_recursive(s, index + 1)
end

# Time complexity: ?
# Space complexity: ?
def bunny(n)
    if n == 0
        return n
    end

    return 2 + bunny(n - 1)
end

# Time complexity: ?
# Space complexity: ?
def nested(s, index = 0)
    if s.length % 2 == 1
        return false
    end

    if s.length / 2 == index
        return true
    end

    if s[index] == s[s.length - 1 - index]
        return false
    end

    return nested(s, index + 1)

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