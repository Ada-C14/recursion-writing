# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
    raise ArgumentError if n <= -1
    return 1 if n == 0
    return n * factorial(n-1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse(s)

    return "" if s.length == 0
    return s if s.length == 1

    return s[s.length-1].chr + reverse(s[0, s.length-1])
end

# Time complexity: O(n)
# Space complexity: 0(n)
def reverse_inplace(s)
    return "" if s.length == 0
    return s if s.length == 1

    return s[s.length-1].chr + reverse_inplace(s[0, s.length-1])
end

# Time complexity: o(n)
# Space complexity: o(n)
def bunny(n)
    if n == 0
        return 0
    else
        return 2 + bunny(n - 1)
    end
end

# Time complexity: o(n)
# Space complexity: o(n)
def nested(s)
    return true if s == ""
    first = s[0] # (
    last = s[s.length - 1] # )
    rest = s[1...s.length - 1]

    return first == '(' && last == ')' && nested(rest)

end

# Time complexity: ?
# Space complexity: ?
def search(array, value)
    return false if array.length == 0
    rest = value[1...array.length - 1]
    return value == array[0] || value == array[array.length - 1] || search(rest, value)
end

# Time complexity: o(n)
# Space complexity: o(n)
def is_palindrome(s)
    return true if s == ""

    first = s[0]
    last = s[s.length - 1]
    rest = s[1...s.length-1]

    return first == last && is_palindrome(rest)
end

# Time complexity: o(n)
# Space complexity: o(n)
def digit_match(n, m)
    return 0 if n <= 0
    return 0 if m <= 0

    # n = n.to_s
    # m = m.to_s
    first_n = n[0]
    first_m = m[0]
    last_n = n[-1]
    last_m = m[1]
    rest_n = n[1...n.length - 1]
    rest_m = m[1...m.length - 1]
    total = 0
    if first_n == first_m || last_n == last_m
        total += 1
        digit_match(rest_n, rest_m)
    else
        return 0
    end
    return total
end