# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)

    raise ArgumentError if n < 0

    if n == 0 #base case
        return 1
    else
        return n * factorial(n-1)
    end
end

# Time complexity: O(n^2)
# Space complexity: O(n^2)
def reverse(s)
    if s.length <= 1
        return s
    else
        return s[-1] + reverse(s[1..-2]) + s[0]
    end
end



# Time complexity: ?
# Space complexity: ?
def reverse_inplace(s)
    if s.length <= 1
        return s
    else
        return reverse_inplace(s[1..-1]) + s[0]
    end
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
    if n == 0
        return 0
    else
        return 2 + bunny(n-1)
    end
end

# Time complexity: O(n^2)
# Space complexity: O(n^2)
def nested(s)
    if s.empty?
        return true
    elsif s[0] == s[-1]
        return false
    else
        return nested(s[1..-2])
    end
end

# Time complexity: O(n^2)
# Space complexity: O(n^2)
def search(array, value)
    if array.empty?
        return false
    elsif array[0] == value
        return true
    else
        return search(array[1..-1], value)
    end
end

# Time complexity: O(n^2)
# Space complexity: O(n^2)
def is_palindrome(s)
    if s.length == 1 || s.empty?
        return true
    end

    if s[0] == s[-1]
        is_palindrome(s[1..-2])
    else
        return false
    end
end

# Time complexity: ?
# Space complexity: ?
def digit_match(n, m)
    raise NotImplementedError, "Method not implemented"
end