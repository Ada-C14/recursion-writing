# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
    if n < 0
        raise ArgumentError
    elsif n == 0
        return 1
    else
        return n * factorial(n - 1)
    end
end

# Time complexity: O(n^2)
# Space complexity: O(n^2)
def reverse(s)
    if s.length <= 1
        return s
    else
        return s[-1] + reverse(s[0..-2])
    end
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse_inplace(s, first = 0, last = s.length - 1)
    if last <= first
        return s
    else
        s[first], s[last] = s[last], s[first]
        return reverse_inplace(s, first + 1, last - 1)
    end
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
    if n == 0
        return 0
    elsif n == 1
        return 2
    else
        return 2 + bunny(n - 1)
    end
end

# Time complexity: O(n^2)
# Space complexity: O(n^2)
def nested(s)
    if s.empty?
        return true
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
    elsif value == array.first
        return true
    else
        return search(array[1..-1], value)
    end
end

# Time complexity: O(n)
# Space complexity: O(n)
def is_palindrome(s, first = 0, last = s.length - 1)
    if last <= first
        return true
    elsif s[first] != s[last]
        return false
    else
        return is_palindrome(s, first + 1, last - 1)
    end
end

# Time complexity: O(log n)
# Space complexity: O(log n)
def digit_match(n, m, num_matches = 0)
    raise ArgumentError if n < 0 || m < 0

    num_matches += 1 if n % 10 == m % 10

    if n < 10 || m < 10
        return num_matches
    else
        return digit_match(n/10, m/10, num_matches)
    end
end

# Time complexity: O(n)
# Space complexity: O(n)
def fib(n)
    raise ArgumentError if n < 0

    if n == 0
        return 0
    elsif n == 1
        return 1
    else
        return fib(n - 1) + fib(n - 2)
    end
end