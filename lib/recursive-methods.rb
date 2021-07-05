# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n) => n operation will be needed! when n increases, time increases
# Space complexity: O(n) => n number of recursive call
def factorial(n)

    return 1 if n == 0
    raise ArgumentError if n < 0

    return n * factorial(n - 1)
end
#==========================================
# Time complexity: O(n) => n operation will be needed!
# Space complexity: O(n^2) => we have a slice method and with each recursive call a new string is created.
def reverse(s)
    return s if s.length <= 1

    return s[-1] + reverse(s[0..-2])
end
# =========================================
def reverse_inplace_helper(s, first = 0, last = s.length - 1)
    if first < last
        s[first], s[last] = s[last], s[first]
        return reverse_inplace_helper(s, first + 1, last - 1)
    else
        return s
    end
end
# Time complexity: O(n)
# Space complexity: O(n)
def reverse_inplace(s)
    return s if s.length <= 1
    reverse_inplace_helper(s)
end
#===================================

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
    return n if n == 0
    return 2 + bunny(n - 1)
end
#======================================
# Time complexity: O(n)
# Space complexity: O(n^2) => slice method - each recursive call create a new string
def nested(s)
    if s.empty?
        return true
    elsif s[0] == "(" && s[-1] == ")"
        return nested(s[1..-2])
    else
        return false
    end
end
#======================================
# helper function for search
# linear search
def recursive_search(array, value, current_index = 0)
    return false if current_index > array.length
    return true if array[current_index] == value
    recursive_search(array, value, current_index + 1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def search(array, value)
    return recursive_search(array, value)
end
#===============================================
# Time complexity: O(n)
# Space complexity: O(n)
def is_palindrome(s, first = 0, last = s.length - 1)
    return true if s.empty?
    return true if first == last

    if s[first] != s[last]
        return false
    end
    return is_palindrome(s, first + 1, last - 1)
end

#=============================================

# Time complexity: ? O(n)
# Space complexity: ? O(n)
def digit_match(n, m, count = 0, index = -1)
    n = n.to_s
    m = m.to_s
    return count if n[index].nil? || m[index].nil?

    if n[index] == m[index]
        count += 1
    end
    return digit_match(n, m, count, index - 1)

end


