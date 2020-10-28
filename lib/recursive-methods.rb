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

def reverse_inplace_internal(s, index)
    return s if s.length - index * 2 <= 1
    s[index], s[-1 - index] = s[-1 - index], s[index]
    return reverse_inplace_internal(s, index + 1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
    return 0 if n == 0
    return 2 if n == 1
    return 2 + bunny(n-1)
end

# Time complexity: O(n)
# Space complexity: O(n^2)
def nested(s)
    return false if s.length % 2 == 1
    return true if s == ""
    return s[0] != s[-1] && nested(s[1..-2])
end

# Time complexity: O(n)
# Space complexity: O(n^2)
def search(array, value)
    return false if array.empty?
    if array[0] == value
        return true
    else
        return search(array[1..-1], value)
    end
end

# Time complexity: O(n)
# Space complexity: O(n^2)
def is_palindrome(s)
    return s[0] == s[-1] if s.length <= 2
    return s[0] == s[-1] && is_palindrome(s[1..-2])
end

# Time complexity: O(a) a is the length of the lesser of n and m.
# Space complexity: O(a^2)
def digit_match(n, m)
    matches = (n % 10 == m % 10 ? 1 : 0)
    return matches if m < 10 || n < 10
    return matches + digit_match(n/10, m/10)
end
