# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: o(n)
# Space complexity: o(n)
def factorial(n)

    if n == 0 || n == 1
        return 1
    elsif n < 0
        raise ArgumentError, " Enter a number greater than 0."
    else
        return n * factorial(n - 1)
    end
end

# Time complexity: o(n) - N being the lenght of string
# Space complexity: o(n) - we would need n amount of space for each character in string
def reverse(s)
    if s.length <= 1
        return s
    else
        return reverse(s[1..-1]) + s[0]
    end

end

# Time complexity: ?
# Space complexity: ?
def reverse_inplace(s)
    raise NotImplementedError, "Method not implemented"
end

# Time complexity: o(n)
# Space complexity: o(n
def bunny(n)
    return n if n == 0

    if n == 1
        return 2
    else
        return 2 + bunny(n - 1)
    end
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

# Time complexity: o(n)
# Space complexity: o(n)
def is_palindrome(s)
    if s.length <= 1
        return true
    elsif s[0] != s[-1]
        return false
    else
        return is_palindrome(s[1..-2])
    end
end

# Time complexity: ?
# Space complexity: ?
def digit_match(n, m)
    raise NotImplementedError, "Method not implemented"
end