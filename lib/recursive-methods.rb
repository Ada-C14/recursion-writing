# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
    raise ArgumentError, "Cannot calculate the factorial for a negative number" if n < 0

    if n <= 1
        return 1
    else
        return n * factorial(n - 1)
    end
end

# Time complexity: O(n)
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
def reverse_helper(s, left = 0, right = s.length - 1)
    if left < right
        s[left], s[right] = s[right], s[left]
        return reverse_helper(s, left + 1, right - 1)
    else
        return s
    end
end

def reverse_inplace(s)
    return s if s.length <= 1
    return reverse_helper(s)
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
    if n == 0
        return n
    else
        return 2 + bunny(n - 1)
    end
end

# Time complexity: O(n)
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

# Time complexity: O(n)
# Space complexity: O(n^2)
def search(array, value)
    if array.empty?
        return false
    elsif array[0] == value
        return true
    else
        return search(array[1..-1], value)
    end
end

# Time complexity: O(n)
# Space complexity: O(n^2)
def is_palindrome(s)
    if s.length <= 1
        return true
    elsif s[0] != s[-1]
        return false
    else
        return is_palindrome(s[1..-2])
    end
end

# Time complexity: O(n)
# Space complexity: O(n)
def digit_match(n, m)
    if n <= 1 || m <= 1
        return n == m ? 1 : 0
    elsif n % 10 == m % 10
        return 1 + digit_match(n / 10, m / 10)
    else
        return digit_match(n / 10, m / 10)
    end
end

# Time Complexity: O(2^n)
# Space Complexity: O(n)
def fib(n)
    raise ArgumentError, "Number must be greater than or equal to 0" if n < 0
    if n == 0
        return n
    elsif n <= 2
        return 1
    else
        return fib(n - 1) + fib(n - 2)
    end
end