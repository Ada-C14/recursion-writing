# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
    raise ArgumentError if n < 0
    return 1 if n == 0

    return n * factorial(n - 1)
end

# Time complexity: ? O(n^2)
# Space complexity: ? O(n^2)
def reverse(s)
    return s if s.length <= 1

    return s[-1] + reverse(s[1..-2]) + s[0]
end

# Time complexity: ? O(n^2)
# Space complexity: ? O(n^2)
def reverse_inplace(s)
    return s if s.length <= 1

    return s[-1] + reverse(s[1..-2]) + s[0]
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
    return 0 if n <= 0

    return bunny(n-1) + 2
end


# Time complexity: O(s)
# Space complexity: 0(s)
#
def nested(s, first, last)

end

# Time complexity: O(n)
# Space complexity: O(n)
def search(array, value, i = 0)
    return false if i >= array.length
    return true if array[i] == value

    return search(array, value, i + 1)
end

# # Time complexity: O(n)
# # Space complexity: O(n)
def is_palindrome(s)
    return false if s[0] != s[-1]

    return true if s.length < 2
    return is_palindrome(s[1..-2])
end

# # Time complexity: ?
# # Space complexity: ?
def match_digits(n,m)

end

puts match_digits(0,0)
# Time complexity: O(n) 
# Space complexity: O(n)
def fibonacci(num)
    return num if num <= 1
    fibonacci(num - 1) + fibonacci(num - 2)
end
