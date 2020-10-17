# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
    raise ArgumentError if n < 0

    if n <= 1
        return 1
    else
        return n * factorial(n -1)
    end
end

# Time complexity: O(n^2) - n = length of the string
# Space complexity: O(n^2)
def reverse(s)
    if s.length <= 1
        return s
    else
        return s[-1] + reverse(s.slice(1..-2)) + s[0]
    end
end

# Time complexity: O(n^2)
# Space complexity: O(n^2)
def reverse_inplace(s, first = 0, last = (s.length - 1))
    if last  <= first
        return s
    else
        s[last], s[first] = s[first], s[last]
        reverse_inplace(s, first + 1, last - 1)
        return s
    end
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
    if n <= 0
        return 0
    else
        return bunny(n - 1) + 2
    end
end

# Time complexity: O(s)
# Space complexity: O(s)
def nested_helper(s, first, last)
    if s[first] == s[last]
        return false
    else
        if s[first] != s[last] && first < s.length / 2
            return nested_helper(s, first + 1, last - 1)
        end
        return true
    end


end
def nested(s)
    if s.length == 0
        return true
    else
        return nested_helper(s, 0, -1)
    end
end

# Time complexity: best case: O(1); worst case: O(n), where n is the length of the array
# Space complexity: O(n^2)
def search(array, value)
    if array.empty?
        return false
    elsif array[0] == value
        return true
    else
        search(array[1..-1], value)
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