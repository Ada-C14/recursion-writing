# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: ?
# Space complexity: ?
def factorial(n)
    if n == 0
        return 1
    elsif n <= 0
        raise ArgumentError
    else
    return n * factorial(n-1)
    end
end

# Time complexity: ?
# Space complexity: ?
def reverse(s)
    if s.length <= 1
        return s
    end

    return s[-1] + reverse(s[1..-2]) + s[0]
end

# Time complexity: ?
# Space complexity: ?
def reverse_inplace(s)
    if s.length <= 1
        return s
    end

    return s[-1] + reverse_inplace(s[1..-2]) + s[0]
end

# Time complexity: ?
# Space complexity: ?
def bunny(n)
    if n == 0
        return 0
    end

    return 2 + bunny(n-1)
end

# Time complexity: ?
# Space complexity: ?
def nested(s)
    if s.length < 1
        return true
    elsif  s == "(" || s == ")"
        return false
    elsif s[0] == "(" && s[-1] == ")"
        return nested(s[1..-2])
    else
        return false
    end

end

# Time complexity: ?
# Space complexity: ?
def search(array, value)
    if array.empty?
        return false
    elsif value == array[0]
        return true
    else
        return search(array[1..-1], value)
    end
end

# Time complexity: ?
# Space complexity: ?
def is_palindrome(s)
    if s.length < 1
        return true
    elsif s[0] != s[-1]
        return false
    else
        return is_palindrome(s[1..-2])
    end
end

# Time complexity: ?
# Space complexity: ?
def digit_match(n, m)
    matching_numbers = 0
    # num1 = 1072503891
    # num2 = 62530841
    #     num1 = 0
    #     num2 = 62530841

    if n[-1] == m[-1]
        return matching_numbers += 1
    else
        return 0
    end

    return digit_match(n[-2..0], m[-1..0])

end