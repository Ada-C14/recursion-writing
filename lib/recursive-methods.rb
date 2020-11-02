# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
    raise ArgumentError.new("You can't take the factorial of a negative number") if n < 0
    return 1 if n == 0
    return n * factorial(n-1)
end

# Time complexity: O(n^2)
# Space complexity: O(n^2)
def reverse(s)
    return s if s.length <= 1
    return s[-1] + reverse(s[1..-2]) + s[0]
end

# Time complexity: ?
# Space complexity: ?
def reverse_inplace(s)
    raise NotImplementedError, "Method not implemented"
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
    return false unless s[0] == "(" && s[-1] == ")"
    return nested(s[1..-2])
end

# Time complexity: O(n)
# Space complexity: O(n)
def search(array, value, index = 0)
    return true if array[index] == value
    return false if index >= array.length
    return search(array, value, index + 1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def is_palindrome(s, first = 0, last = -1)
    return false if s[first] != s[last]
    return true if first == s.length
    return is_palindrome(s, first + 1, last - 1)
end

# Time complexity: O(n^2)? - because of to_s?
# Space complexity: O(n^2) - again because of to_s?
def digit_match(n, m, index = -1, match = 0)
    if n.to_s[index] == nil || m.to_s[index] == nil
        return match
    end
    if n.to_s[index] == m.to_s[index]
        match += 1
    end
    return digit_match(n, m, index - 1, match)
end


def fib(n)
    raise ArgumentError.new("cannot have negative numbers in fibonacci sequence") if n < 0
    return 0 if n == 0
    return 1 if n == 1
    return fib(n - 1) + fib(n - 2)
end