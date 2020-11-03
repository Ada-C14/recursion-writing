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

# Time complexity: O(n^2) the slicing method is O(n) itself, within another O(n) method
# Space complexity: O(n^2) the slicing method is O(n) itself, within another O(n) method
def reverse(s)
    if s == nil || s.length == 0
        return ""
    else
        return reverse(s[1..-1]) + s[0]
    end
end

# Time complexity: O(n) the reverse_inplace method without the helper, is O(1),
# the if statement is O(n), and the recursion is O(n), they are not nested, so we are still at O(n)
# Space complexity: O(n) because we have as many stack calls as we have steps
def reverse_inplace_helper(s, start_position, end_position)
    if start_position >= end_position
        return
    end

    temp = s[start_position]
    s[start_position] = s[end_position]
    s[end_position] = temp

    reverse_inplace_helper(s, start_position + 1, end_position -1 )
end

def reverse_inplace(s)
    if s == nil || s.length == 0
        return ""
    else
        reverse_inplace_helper(s, 0, s.length - 1)
        return s
    end

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