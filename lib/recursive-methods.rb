# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: 0(n)
def factorial(n)

    if n < 0
        raise ArgumentError
    elsif n == 0
        return 1
    else
        return n * factorial(n-1)
    end

end

# Time complexity: ? O(n)
# Space complexity: O(n)^2
def reverse(s)
    # raise ArgumentError
    if s.length == 0 || s.length == 1
        return s
    else
        return s[-1] + reverse(s[0...-1])
    end
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse_inplace(s)
    # raise NotImplementedError, "Method not implemented"
    return my_first_rapper(s, index = 0, last = -1)
end

def my_first_rapper(s, index = 0, last = -1)
    if index >= s.length/2 || s.length <= 1
        return s
    else
        s[index], s[last] = s[last], s[index]
        my_first_rapper(s, index + 1, last - 1)
    end
end


# Time complexity: ?
# Space complexity: ?
def bunny(n)
    # raise NotImplementedError, "Method not implemented"

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