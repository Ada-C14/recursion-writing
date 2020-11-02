# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: ? O(n)
# Space complexity: ? O(1)
def factorial(n)
    # raise NotImplementedError, "Method not implemented"
    t_fact(n, 1)
end

def t_fact(n, i)
    return i if n == 1

    return t_fact(n - 1, i * n)
end

# Time complexity: ?O(n)
# Space complexity: ? O(n^2)
def reverse(s)
    # raise NotImplementedError, "Method not implemented"
    return s if string.length <= 1

    return s[-1] + reverse(s[0..-2])

end

# Time complexity: ? O(n)
# Space complexity: ? O(n^2)
def reverse_inplace(s)

    inplace_helper(s, 0)
end


def inplace_helper(s, i)

    return s if i == s.length / 2
    s[0 + i], s[-1 - i] = s[-1 - i], s[0 + i]

    inplace_helper( s, i + 1)
end

# Time complexity: ? O(n)
# Space complexity: ? O(n)
def bunny(n)
    if n == 1
        return 2
    else
        return 2 + bunny(n - 1)
    end
end

# Time complexity: ? O(n^2)
# Space complexity: ? O(n^2)
def nested(s)
    if s.length < 1
        return true
    elsif s[0] == s[-1]
        return false
    else
        return nested(s[1..-2])
    end
end

# Time complexity: ? O(n^2)
# Space complexity: ? O(n^2)
def search(array, value)
    if array.length == 0
        return false
    elsif array[0] == value
        return true
    else
        return search(array[1..-1], value)
    end
end

# Time complexity: ? O(n^2)
# Space complexity: ? O(n^2)
def is_palindrome(s)
    if s.length < 2
        return true
    elsif s[0] != s[-1]
        return false
    else
        return is_palindrome(s[1..-2])
    end
end

# Time complexity: ? O(n^2)
# Space complexity: ? O(n^2)
def digit_match(n, m)
    n = n.to_s
    m = m.to_s
    p n
    p m
    if n.length == 0 || m.length == 0
        return 0
    elsif n[-1] == m[-1]
        return 1 + digit_match(n[0..-2], m[0..-2])
    else
        return digit_match(n[0..-2], m[0..-2])
    end
end