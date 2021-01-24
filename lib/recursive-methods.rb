# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: ?
# Space complexity: ?
def factorial(n)
    raise ArgumentError if n < 0
    if n == 0
        return 1
    else
        return n * factorial(n-1)
    end
end

# Time complexity: O(n^2)
# Space complexity: O(n^2)
def reverse(s)
    if s.length <= 1
        return s
    end
    reverse_s = reverse(s[1..-1])
    reverse_s += s[0]

    return reverse_s
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse_inplace(s, first = 0, last = s.length-1)

    if s.length == 0 || s.length == 1
        return s
    end

    return s if first >= last
    temp = s[first]
    s[first] = s[last]
    s[last] = temp

    return reverse_inplace(s, first + 1, last - 1)

end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
    return n if n == 0
    return 2 + bunny(n - 1)
end

# Time complexity: O(n^2)
# Space complexity: O(n^2)
def nested(s)
    return true if s == ""
    return false if s[0] != "(" || s[-1] != ")"
    return nested(s[1...-1])
end

# Time complexity: O(n)
# Space complexity: O(n)
def search(array, value)
    return false if array.length == 0
    return true if array[0] == value
    return search(array[1..-1], value)

end

# Time complexity: O(n)
# Space complexity: O(n)
def is_palindrome(s, first = 0,last = s.length-1)

    return true if s.empty? || first >= last
    return false if s[first] != s[last]

    return is_palindrome(s, first + 1, last - 1)

end

# Time complexity: ?
# Space complexity: ?
def digit_match(n, m)
    return 1 if n == 0 && m == 0
    return 0 if n <= 1 || m <= 1
    if n % 10 == m % 10
        return 1 + digit_match(n / 10, m / 10)
    else
        return digit_match(n / 10, m / 10)
    end
end

def fibonacci(n)
    return 0 if n == 0
    return 1 if n == 1
    return fibonacci(n - 1) + fibonacci(n - 2)
end