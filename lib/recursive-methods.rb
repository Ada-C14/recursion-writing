# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
    unless n >= 0
        raise ArgumentError, "Number must be greater than or equal to 0"
    end

    return 1 if n == 0

    return n * factorial(n-1)
end

# Time complexity: O(n^2)
# Space complexity: O(n^2)
def reverse(s)
    return s if s.length <= 1

    reverse_s = reverse(s[1..-1])
    reverse_s += s[0]

    return reverse_s
end

# Time complexity: O(n^2)
# Space complexity: O(n^2)
def reverse_inplace(s)
    return s if s.length <= 1

    reverse_s = reverse(s[1..-1])
    reverse_s += s[0]

    return reverse_s
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
    return 0 if n == 0

    return 2 + bunny(n-1)
end

# Time complexity: O(n^2)
# Space complexity: O(n^2)
def nested(s)
    return true if s == ""

    if s[0] == "(" && s[-1] == ")"
        return nested(s[1..-2])
    else
        return false
    end
end

# Time complexity: O(n^2)
# Space complexity: O(n^2)
def search(array, value)
    return false if array == []

    if value == array[0]
        return true
    else
        return search(array[1..-1], value)
    end
end

# Time complexity: O(n^2)
# Space complexity: O(n^2)
def is_palindrome(s)
    return true if s.length < 2

    if s[0] != s[-1]
        return false
    else
        return is_palindrome(s[1..-2])
    end
end

# Time complexity: O(n^2)
# Space complexity: O(n^2)
def digit_match(n, m)
    n = n.to_s
    m = m.to_s

    return 0 if (n.length == 0 || m.length == 0)

    if n[-1] == m[-1]
        return (1 + digit_match(n[0..-2], m[0..-2]))
    end

    return digit_match(n[0..-2], m[0..-2])
end
