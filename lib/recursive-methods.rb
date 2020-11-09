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

# Time complexity: O(n)
# Space complexity: O(n)
def reverse(s)
    if s.length <= 1
        return s
    else
        return reverse(s[1..-1]) + s[0]
    end
end

# # Time complexity: O(1)
# # Space complexity: O(1)
def reverse_inplace(s)
    if s.length <= 1
        return s
    else
        return s.reverse!
    end
end
#
# # Time complexity: O(n)
# # Space complexity: O(n)
def bunny(n)
    if n == 0
        return 0
    else
        return 2 + bunny(n-1)
    end
end
#
# # Time complexity: ?
# # Space complexity: ?
# def nested(s)
#     raise NotImplementedError, "Method not implemented"
# end
#
# # Time complexity: ?
# # Space complexity: ?
# def search(array, value)
#     raise NotImplementedError, "Method not implemented"
# end
#
# # Time complexity: ?
# # Space complexity: ?
# def is_palindrome(s)
#     raise NotImplementedError, "Method not implemented"
# end
#
# # Time complexity: ?
# # Space complexity: ?
# def digit_match(n, m)
#     raise NotImplementedError, "Method not implemented"
# end