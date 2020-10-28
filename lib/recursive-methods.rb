# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n) run n times to get all the nums
# Space complexity: O(n) call stack memory
def factorial(n)
    raise ArgumentError if n < 0
    return 1 if n <= 1
    return n * factorial(n - 1)
end

# Time complexity: O(n^2): O(n) string concatenation * O(n) recursive operation
# Space complexity: O(n^2): O(n) call stack memory * O(n) new string
def reverse(s, index = s.length - 1)
    return s[0] || "" if index <= 0
    return s[index] + reverse(s, index - 1)
end

# Time complexity: O(n): n being the length of s
# Space complexity: O(n) call stack memory
def reverse_inplace(s, i = 0, j = s.length - 1)
    return s || ""  if i >= j
    swap(s, i, j)
    return reverse_inplace(s, i + 1, j - 1)
end

def swap(s, i, j)
    temp = s[i]
    s[i] = s[j]
    s[j] = temp
end

# Time complexity: O(n)
# Space complexity: O(n) call stack memory
def bunny(n)
    return 0 if n == 0
    return bunny(n - 1) + 2
end

# Time complexity: O(n)
# Space complexity: O(n) call stack memory
def nested(s, i = 0, j = s.length - 1)
    return true if i == j - 1 && s[i] != s[j] || s == ""
    return false if s[i] == s[j] || s.length.odd?
    return nested(s, i + 1, j - 1)
end

# Time complexity: O(n)
# Space complexity: O(n) call stack memory
def search(array, value, index = 0)
    return true if array[index] == value
    return false if index >= array.length
    return search(array, value, index + 1)
end

# Time complexity: O(n)
# Space complexity: O(n) call stack memory
def is_palindrome(s, i = 0, j = s.length - 1)
    return true if i >= j && s[i] == s[j] || s == ""
    return false if s[i] != s[j]
    return is_palindrome(s, i + 1, j - 1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def digit_match(n, m, index = 0, matches = 0)
    return matches if index > lesser_length(n, m) - 1
    if n.digits[index] == m.digits[index]
        return digit_match(n, m, index + 1, matches + 1)
    else
        return digit_match(n, m, index + 1, matches)
    end
end

def lesser_length(n, m)
    n - m < 0 ? (return n.digits.length) : (return m.digits.length)
end


# Time complexity: O(n)
# Space complexity: O(n)
def fibonacci(n)
    return 0 if n == 0
    return 1 if n == 1
    return fibonacci(n - 1) + fibonacci(n - 2)
end

