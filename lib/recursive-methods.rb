# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
    raise ArgumentError, "Cannot calculate the factorial for a negative number" if n < 0

    if n <= 1
        return 1
    else
        return n * factorial(n - 1)
    end
end

# Time complexity: O(n)
# Space complexity: O(1)
def reverse(s)
    if s.length <= 1
        return s
    else
        return s[-1] + reverse(s[0..-2])
    end
end

# Time complexity: ?
# Space complexity: ?
def reverse_inplace(s)
    raise NotImplementedError, "Method not implemented"
end


# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
    if n == 0
        return n
    else
        return 2 + bunny(n - 1)
    end
end

# Time complexity: ?
# Space complexity: ?
def nested(s)
    raise NotImplementedError, "Method not implemented"
end

# Time complexity: ?
# Space complexity: ?
def search(array, value)
    raise NotImplementedError, "Method not implemented"
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

# Time Complexity: ?
# Space Complexity: ?
def fib(n)
    raise ArgumentError, "Number must be greater than or equal to 0" if n < 0
    if n == 0
        return n
    elsif n <= 2
        return 1
    else
        return fib(n - 1) + fib(n - 2)
    end
end