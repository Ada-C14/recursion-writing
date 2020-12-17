# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n), where n is the number handed to the method.
# Space complexity: O(n) as well
def factorial(n)
    raise ArgumentError if n < 0
    return 1 if n == 0 || n == 1
    return n * factorial(n-1)
end

# Time complexity: O(n^2), where n is the length of the string passed
# Space complexity: O(n^2)
def reverse(s)
    return s if s.length <= 1
    return s[-1] + reverse(s[0..-2])
end

# Time complexity: O(n^2), where n is the length of the string passed .. does the replace impact this as well??
# Space complexity: O(n^2)
def reverse_inplace(s)
    return s if s.length <= 1
    n = s[-1] + reverse_inplace(s[0..-2])
    return s.replace n
end

# Time complexity: O(n) where n is the number passed to the method
# Space complexity: O(n) as well
def bunny(n)
    return 0 if n == 0
    return 2 if n == 1
    return 2 + bunny(n-1)
end

# Time complexity: O(n^2) where n is the length of the string
# Space complexity: O(n^2)
def nested(s)
    return true if s == ""
    return false unless (s.length % 2) == 0
    if s[0] == "(" && s[-1] == ")"
        return nested(s[1..-2])
    else
        return false
    end
end

# Time complexity: O(n^2) where n is the length of the array
# Space complexity: O(n^2)
def search(array, value)
    return false if array.empty?
    return true if value == array[0]
    unless array[0] == value
        return search(array[1..-1], value)
    end
end

# Time complexity: O(n^2) where n is the length of string
# Space complexity: O(n^2)
def is_palindrome(s)
    if s.length < 2
        return true
    elsif s[0] != s[-1]
        return false
    else
        return is_palindrome(s[1..-2])
    end
end

# Time complexity: how do you account for the method in the method?? Guess: O(n^2 + m^2) where n & m are length of their respective digits
# Space complexity: O(n^2 + m^2)
def digit_match(n, m)
    counter = 0
    n = n.digits
    m = m.digits
    return digit_match_helper(n, m, counter)
end

def digit_match_helper(n, m, counter)
    if n.length < 1 || m.length < 1
        return counter
    elsif n[0] == m[0]
        counter += 1
    end
    return digit_match_helper(n[1..-1], m[1..-1], counter)
end