a# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: ?
# Space complexity: ?
def factorial(n)
    # raise NotImplementedError, "Method not implemented"
    t_fact(n, 1)
end

def t_fact(n, i)
    return i if n == 1

    return t_fact(n - 1, i * n)
end

# Time complexity: ?
# Space complexity: ?
def reverse(s)
    # raise NotImplementedError, "Method not implemented"
    return s if string.length <= 1

    return s[-1] + reverse(s[0..-2])

end

# Time complexity: ?
# Space complexity: ?
def reverse_inplace(s)

    inplace_helper(s, 0)
end


def inplace_helper(s, i)
    return s if i == s.length / 2
    s[0 + i], s[-1 - i] = s[-1 - i], s[0 + i]

    inplace_helper( s, i + 1)
end

# Time complexity: ?
# Space complexity: ?
def bunny(n)
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