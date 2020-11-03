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

def nested(s, i = 1 )
    return true if (i - 1) * 2 >= s.size

    if s[i - 1] == "(" && s[-i] == ")"
        return nested(s, i + 1)
    end
    return false
end
puts nested("()")
puts nested("((((()))))")
puts nested("(")

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

# # Time complexity: O(n)
# # Space complexity: O(n)
def digit_match(n, m , i = -1, count = 0)
    n = n.to_s
    m = m.to_s

    return count if n[i].nil? || m[i].nil?

    if n[i] == m[i]
       return digit_match(n, m, i - 1, count + 1)
    end

    return digit_match(n, m, i - 1, count)

end

# Time complexity: O(2^n)
# Space complexity: O(n)
def fibonacci(num)
    return num if num <= 1

    fibonacci(num - 1) + fibonacci(num - 2)
end

