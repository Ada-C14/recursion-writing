# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
    if n == 0
        return 1
    elsif n < 0
        raise ArgumentError
    else
        return n * factorial(n-1)
    end
end

puts factorial(5)

# Time complexity: ?
# Space complexity: ?
def reverse(s)
    if s.length <=1
        return s
    end

    return s[-1] + reverse(s[1..-2]) + s[0]
end

# Time complexity: O(n^2)
# Space complexity: O(n^2)
def reverse_inplace(s)
    if s.length <=1
        return s
    end

    new_s = reverse_inplace(s[1..-2])
    s[1..-2] = new_s
    s[0] , s[-1] = s[-1], s[0]
    return s
end

puts reverse_inplace("hello world")

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
    return 0 if n == 0
    return 2 + bunny(n - 1)
end

# Time complexity: ?
# Space complexity: ?
def nested(s)
    raise NotImplementedError, "Method not implemented"
end

# Time complexity: O(n^2)
# Space complexity: O(n^2)
def search(array, value)
    if array[0] == value
        return true
    elsif array.length < 1
        return false
    else
        return search(array[1..-1], value)
    end
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