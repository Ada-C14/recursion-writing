# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
    raise ArgumentError.new("can't accept negative numbers") if n < 0
    return 1 if n == 0
    return n * factorial(n-1)
end

# Time complexity: O(n^2)
# Space complexity: O(n^2)
def reverse(s)
    return s if s.length <= 1 # base case
    return s[-1] + reverse(s[1..-2]) + s[0] #recursive case
end

# Time complexity: O(n^2)
# Space complexity: O(n^2)
def reverse_inplace(s)
    return reverse_in_place_helper(s, 0, -1)
end

def reverse_in_place_helper(s, first, last)
    if first >= last
        return ""
    else
        s[first], s[last] = s[last], s[first]
        return reverse_in_place_helper(s, first + 1, last - 1)
    end
end

# Time complexity: O(n^2)
# Space complexity: O(n^2)
def bunny(n)
    raise ArgumentError.new("can't accept negative numbers") if n < 0
    return n if n == 0
    return 2 + bunny(n-1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def nested(s)
    return true if s == ""
    return false unless s[0] == "(" && s[-1] == ")"
    return nested(s[1..-2])
end

# Time complexity: O(n)
# Space complexity: O(n)
def search(array, item)
    return false if array.length == 0
    return true if array.first == item
    return search(array[1..-1], item)
end

# Time complexity: O(n)
# Space complexity: O(n)
def is_palindrome(s)
    return true if s == ""
    return false unless s[0] == s[-1]
    return is_palindrome(s[1..-2])
end

# Time complexity: O(n^2)
# Space complexity: O(n^2)

def digit_match(n, m, count = 0)

    if n.to_s.length == 0 || m.to_s.length == 0
        return count
    end

    if n.to_s[-1] == m.to_s[-1]
        count += 1
    end

    return digit_match(n.to_s[0..-2], m.to_s[0..-2], count)
end