# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n) since n operations will be needed to compute factorial(n)
# Space complexity: O(n) since each recursive call will end up with a stack frame on the call stack, so n in total for factorial(n)
def factorial(n)
    if n < 0
        raise ArgumentError
    elsif n == 0 || n == 1
        return 1
    else
        return n*factorial(n-1)
    end
end

# Time complexity:
# Space complexity:
def reverse(s)

end

# Time complexity: ?
# Space complexity: ?
def reverse_inplace(s)
    raise NotImplementedError, "Method not implemented"
end

# Time complexity: ?
# Space complexity: ?
def bunny(n)
    raise NotImplementedError, "Method not implemented"
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