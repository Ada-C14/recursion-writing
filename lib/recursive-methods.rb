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

# Time complexity: ?
# Space complexity: ?
def reverse_inplace(s)
    return s if s == "" || s.length < 2
    return s[-1] + reverse_inplace(s[1..-2]) + s[0]
end


# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
    return 0 if n <= 0
    return 2 + bunny(n - 1)
end

# Time complexity: ?
# Space complexity: ?
def nested(s)
    return true if s == "" || s.length == 0
    return false if s.length.odd?
    while s[0] == '(' && s[-1] == ')'
        return nested(s[1..-2])
    end
        return false
    end

# Time complexity: ?
# Space complexity: ?
def search(array, value, i = 0)
    return true if array[i] == value
    return false if i >= array.length
    return search(array, value, i + 1)

end

# Time complexity: ?
# Space complexity: ?
def is_palindrome(s)
    return true if s == "" || s.length < 2
    return false if s[0] != s[-1]
        return is_palindrome(s[1..-2])
end

# Time complexity: ?
# Space complexity: ?
def digit_match(n, m)
    puts "Sorry, I couldn't figure this one out!"
end
