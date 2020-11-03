# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: 0(n)
# Space complexity: 0(n)
def factorial(n)
    raise ArgumentError if n <= 0
    return 1 if n == 0
    return n * (factorial(n-1))
end

# Time complexity: 0(1)
# Space complexity: 0(1)
def reverse(s)
    reversed_string = ""
    i = 0
    while i < s.length
        reversed_string = s[i] + reversed_string
        i += 1
    end
    return reversed_string
end

# Time complexity: 0(n)
# Space complexity: 0(n)
def reverse_inplace(s)
    return s if s == ""
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
    return 0 if n == 0
    return 2 if n == 1
    return 2 + bunny(n-1)
end

# Time complexity: ?
# Space complexity: ?
def nested(s)
    raise NotImplementedError, "Method not implemented"
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
# Space complexity: O(n)
def is_palindrome(s)
    if s.length <= 1
        return true
    end

    if s[0] != s[-1]
        return false
    end
    return is_palindrome(s[1..-2])
end

# Time complexity: ?
# Space complexity: ?
def digit_match(n, m)
    raise NotImplementedError, "Method not implemented"
end