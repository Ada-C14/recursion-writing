# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
    raise ArgumentError if n < 0

    if n <= 1
        return 1
    else
        return n * factorial(n -1)
    end
end

# Time complexity: O(n^2) - n = length of the string
# Space complexity: O(n^2)
def reverse(s)
    if s.length <= 1
        return s
    else
        return s[-1] + reverse(s.slice(1..-2)) + s[0]
    end
end

# Time complexity: O(n^2)
# Space complexity: O(n^2)
def reverse_inplace(s, first = 0, last = (s.length - 1))
    if last  <= first
        return s
    else
        s[last], s[first] = s[first], s[last]
        reverse_inplace(s, first + 1, last - 1)
        return s
    end
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
    if n <= 0
        return 0
    else
        return bunny(n - 1) + 2
    end
end

# Time complexity: O(s)
# Space complexity: O(s)
def nested_helper(s, first, last)
    if s[first] == s[last]
        return false
    else
        if s[first] != s[last] && first < s.length / 2
            return nested_helper(s, first + 1, last - 1)
        end
        return true
    end
end

def nested(s)
    if s.length == 0
        return true
    else
        return nested_helper(s, 0, -1)
    end
end

# Time complexity: best case: O(1); worst case: O(n), where n is the length of the array
# Space complexity: O(n^2)
def search(array, value)
    if array.empty?
        return false
    elsif array[0] == value
        return true
    else
        search(array[1..-1], value)
    end
end

# Time complexity: O(s)
# Space complexity: O(s)

def is_palindrome(s, first = 0, last = -1)
    if s[first] != s[last]
        return false
    elsif first < (s.length / 2)
        return is_palindrome(s, first + 1, last - 1)
    end
    return true
end

# Time complexity: O(n) -- n = the shortest number length
# Space complexity: ? - I couldn't find the answer

def digit_match_helper(n, m, count, i)
    if n[-i] == m[-i]
        count += 1
    end

    return count if n.length == i || m.length == i

    return digit_match_helper(n, m, count, i + 1)
end

def digit_match(n, m)
    if n < 0 || m < 0
        raise ArgumentError.new("Numbers must be bigger than 0")
    else
        n = n.to_s
        m = m.to_s

        return digit_match_helper(n, m, 0, 1)
    end
end

# Added fun
# Time complexity: O(1)
# Space complexity: O(1) -- the amount of memory used does not change
def fib(n)
    if n <= 1
        return n
    else
        return fib(n - 1) + fib(n - 2)
    end
end

# The Fibonacci Sequence is the series of numbers: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, ...
# The next number is found by adding up the two numbers before it:
# the 2 is found by adding the two numbers before it (1+1),
# the 3 is found by adding the two numbers before it (1+2),
# the 5 is (2+3),
# and so on!