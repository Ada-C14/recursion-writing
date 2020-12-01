# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n) ['n' being the number of times factorial computation has to be implemented until n reaches 0]
# Space complexity: 0(n) ['n' being the number of function calls on the stack]
def factorial(n)
    raise ArgumentError if n < 0
    return 1 if n == 0
    return n * factorial(n - 1)

end

# Time complexity: O(n^2)
# Space complexity: O(n^2)
def reverse(s, i = 1)
    return s if s == "" || s.length < 2
    reversed = reverse(s[1..-1])
    reversed += s[0]
    return reversed
end

# Time complexity: O(n) -still has to iterate over every element in string
# Space complexity: O(n) -stack can get very large if string is big
def reverse_inplace_helper(s, start, finish)
    if start < finish
        s[start], s[finish] = s[finish], s[start]
        return reverse_inplace_helper(s, start + 1, finish - 1)
    else
        return s
    end
end


def reverse_inplace(s)
    return reverse_inplace_helper(s, 0, s.length - 1)
end


# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
    return 0 if n <= 0
    return 2 + bunny(n - 1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def nested(s)
    return true if s == "" || s.length == 0
    return false if s.length.odd?
    while s[0] == '(' && s[-1] == ')'
        return nested(s[1..-2])
    end
        return false
    end

# Time complexity: O(n) best case O(1) if item is in index 1?
# Space complexity: O(n) best case O(1) if item is in index 1?
def search(array, value, i = 0)
    return true if array[i] == value
    return false if i >= array.length
    return search(array, value, i + 1)

end

# Time complexity: O(n) - traversing the whole string
# Space complexity: O(n) -traversing the whole string
def is_palindrome(s)
    return true if s == "" || s.length < 2
    return false if s[0] != s[-1]
        return is_palindrome(s[1..-2])
end

# Time complexity: O(n)
# Space complexity: O(n)
def digit_helper(n, m, match = 0, place = 0)
    return 1 if n == 0 && m == 0 && place == 0
    return match if n == 0 || m == 0
    match += 1 if n % 10 == m % 10
    return digit_helper(n/10, m/10, match, place + 1)
    return match
end

def digit_match(n, m)
    return digit_helper(n, m, 0,  0)
end
