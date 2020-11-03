# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n) - it takes one recursion for every increase in n
# Space complexity: O(n) - because of the system stack
def factorial(n)
    raise ArgumentError if n < 0
    return 1 if n <= 1

    return n * factorial(n-1)
end

# Time complexity: O(n) - It takes n recursions for each character
# Space complexity: O(n^2) - n is number of characters
# String objects with length n * (n-1) * (n-2) ... are made
def reverse(s)
    return s if s.length <= 1

    return reverse(s[1..-1]) + s[0]
end

# Time complexity: O(n) - It will take n/2 swaps to reverse the string
# Space complexity: O(n) - For the system stack
def reverse_inplace(s)
    return s if s.length <= 1

    return reverse_inplace_helper(s, 0, s.length-1)
end

def reverse_inplace_helper(s, start, fin)
    return s if start == fin

    s[start], s[fin] = s[fin], s[start]
    reverse_inplace_helper(s, start+1, fin - 1)
end

# Time complexity: O(n) - one recursion for each bunny
# Space complexity: O(n) - system stack
def bunny(n)
    return bunny_tail(n, 0)
end

def bunny_tail(n, ears)
    return ears if n == 0

    return bunny_tail(n-1, ears+2)
end

# Time complexity: O(n) - has to look through each character
# Space complexity: O(n) - system stack
def nested(s)
    return nested_helper(s, 0, s.length, 0)
end

def nested_helper(s, char, fin, parens)
    return true if char == fin

    if s[char] == '('
        nested_helper(s, char+1, fin, parens + 1)
    else
        return false if parens == 0

        nested_helper(s, char+1, fin, parens - 1)
    end
end

# Time complexity: O(n) - Linear search
# Space complexity: O(n) - system stack
def search(array, value)
    return search_helper(array, value, 0, array.length)
end

def search_helper(array, value, idx, len)
    if idx == len
        return false
    elsif array[idx] == value
        return true
    else
        return search_helper(array, value, idx+1, len)
    end
end

# Time complexity: O(n) - n/2 recursions
# Space complexity: O(n) - system stack
def is_palindrome(s)
    return true if s.empty?

    return is_palindrome_helper(s, 0, s.length - 1)
end

def is_palindrome_helper(s, start, fin)
    if start == fin
        return true
    elsif s[start] != s[fin]
        return false
    else
        is_palindrome_helper(s, start+1, fin-1)
    end
end

# Time complexity: O(logn) - Where n is the larger of n or m.
# Reduces n by a factor of 10 every recursion
# Space complexity: O(logn) - System stack
def digit_match(n, m)
    # Handle edge case where one or both numbers are zero
    if n == 0 || m == 0
        if (n % 10) == (m % 10)
            return 1
        else
            return 0
        end
    end
    return digit_match_helper(n, m, 0)
end

def digit_match_helper(n, m, digits)
    return digits if n == 0 || m == 0
    if (n % 10) == (m % 10)
        return digit_match_helper(n/10, m/10, digits+1)
    else
        return digit_match_helper(n/10, m/10, digits)
    end
end

# Time complexity: O(n) - One recursion for every n
# Space compexlity: O(n) - System stack
def fib(n, f0 = 0, f1 = 1, index = 1)
    return 0 if n == 0
    return f1 if index == n
    fib(n, f1, f0+f1, index+1)
end
