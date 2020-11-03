# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
    raise ArgumentError,"unvailed number" if n < 0
    return 1 if n == 0
    return n * factorial(n-1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse(s)
    if s.length <= 1
        return s
    end

    i = 1
    reversed_string = ""
    while i <= s.length
        reversed_string += s[-i]
        i += 1
    end
    return reversed_string
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse_inplace(s)
    if s.length <= 1
        return s
    end

    return s[-1] + reverse(s[1..-2]) + s[0]
end


# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
    return 0 if n == 0
    return 2 if n == 1
    return bunny(n-1)+2
end

# Time complexity: O(n)
# Space complexity: O(n)
def nested(s, i = 1 )
    return true if s.empty?
    if s[i+1] == "(" && s[-i] == ")"
        return true
    else
        return false
    end

    return nested(s, i - 1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def search(array, value, i = 0)
    return false if i >= array.length
    return true if array[i] == value

    return search(array, value, i + 1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def is_palindrome(s)
    return s[0] == s[-1] && (s.length <= 2 || is_palindrome(s[1..-2]))

end

# Time complexity: O(n)
# Space complexity: O(n)
def digit_match(n, m, i = 0, count = 0)
    n.to_s
    m.to_s

    if n[i] == m[i]
        return count + 1
    else
        return count
    end

    return digit_match(n, m, i + 1, count)
end