# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n), where n is the length
# Space complexity: O(n), uses up some space in the call stack until it reaches the base case
def factorial(n)
    if n == 0
        return 1
    elsif n <= 0
        raise ArgumentError
    else
    return n * factorial(n-1)
    end
end

# Time complexity: O(n^2)
# Space complexity: O(n^2)
def reverse(s)
    if s.length <= 1
        return s
    end

    return s[-1] + reverse(s[1..-2]) + s[0]
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse_inplace(s)
    first = 0
    last = s.length - 1
    return reverse_inplace_helper(s, first, last)
end

def reverse_inplace_helper(s, first = 0, last = s.length - 1)
    if first > last
        return s
    end

    temp = s[first]
    s[first] = s[last]
    s[last] = temp

    return reverse_inplace_helper(s, first + 1, last - 1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
    if n == 0
        return 0
    end

    return 2 + bunny(n-1)
end

# Time complexity: O(n^2)
# Space complexity: O(n^2)
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

# Time complexity: O(n^2)
# Space complexity: O(n^2)
def search(array, value)
    if array.empty?
        return false
    elsif value == array[0]
        return true
    else
        return search(array[1..-1], value)
    end
end

# Time complexity: O(n^2)
# Space complexity: O(n^2)
def is_palindrome(s)
    if s.length < 1
        return true
    elsif s[0] != s[-1]
        return false
    else
        return is_palindrome(s[1..-2])
    end
end

# Time complexity: O(n^2)?
# Space complexity: O(n^2)?
def digit_match(n, m)
    n = n.to_s
    m = m.to_s

    count = 0
    return digit_match_counter(n, m, count)
end

def digit_match_counter(n, m, count)
    if n.length == 0 || m.length == 0
        return count
    elsif n[-1] == m[-1]
        count += 1
    end

    return digit_match_counter(n[0..-2], m[0..-2], count)
end