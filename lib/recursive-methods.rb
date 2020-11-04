# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
    # raise NotImplementedError, "Method not implemented"
    if n < 0
        raise ArgumentError
    elsif n <= 1
        return 1
    else
        return n * factorial(n-1)
    end
end

# Time complexity: O(n)
# Space complexity: O(n^2)
def reverse(s)
    # raise NotImplementedError, "Method not implemented"
    if s.length <= 1
        return s
    else
        return "#{s[-1] + reverse(s[1..-2]) + s[0]}"
    end
end

# Time complexity: O(n)
# Space complexity: O(n^2)
def reverse_inplace(s)
    #raise NotImplementedError, "Method not implemented"
    if s.length <= 1
        return s
    else
        return "#{s[-1] + reverse(s[1..-2]) + s[0]}"
    end
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
    # raise NotImplementedError, "Method not implemented"
    if n<=0
        return 0
    else
        return 2 + bunny(n-1)
    end
end

# Time complexity: O(n)
# Space complexity: O(n^2)
def nested(s)
    # raise NotImplementedError, "Method not implemented"
    if s.length == 0
        return true
    elsif s.length%2 != 0
        return false
    elsif s[0] == "(" && s[-1] == ")"
        return nested(s[1..-2])
    else
        return false
    end
end

# Time complexity: O(n)
# Space complexity: O(n^2)
def search(array, value)
    # raise NotImplementedError, "Method not implemented"
    if array.length == 0
        return false
    elsif array[0] == value
        return true
    else
        search(array[1..-1], value)
    end

end

# Time complexity: O(n)
# Space complexity: O(n^2)
def is_palindrome(s)
    # raise NotImplementedError, "Method not implemented"
    if s.length < 2
        return true
    elsif s[0] != s[-1]
        return false
    else
        return is_palindrome(s[1..-2])
    end
end

# Time complexity: O(n) or O(m), whichever is shorter
# Space complexity: O(n^2)
def digit_match(n, m)
    # raise NotImplementedError, "Method not implemented"
    n = n.to_s
    m = m.to_s

    if n.length == 0 || m.length == 0
        return 0
    elsif n[-1] == m[-1]
        return 1 + digit_match(n[0..-2], m[0..-2])
    else
        return 0 + digit_match(n[0..-2], m[0..-2])
    end

end