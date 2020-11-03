# Authoring recursive algorithms. Add comments including time and space complexity for each method.


# Write a method factorial that accepts an integer parameter n
# and that uses recursion to compute and return the value of n factorial (also known as n!).
# Time complexity: O(n)
# Space complexity: O(n) call stack increases as n increases
def factorial(n)
    raise ArgumentError if n < 0

    if n == 1 || n == 0
        return 1
    else
        return n * factorial(n-1)
    end
end


# Write a method reverse that accepts a string as a parameter
# and then returns the reverse of the string by reversing all letters and all words in the string.
# e.g. reverse("hello world") will return "dlrow olleh"
# Time complexity: O(n)
# Space complexity: O(n) call stack increases as n increases
def reverse(s)
    reverse_helper(s)
end

def reverse_helper(s, i = 0, j = s.length - 1)
    return s if s.length <= 1

    return s if i >= j

    temp = s[i]
    s[i] = s[j]
    s[j] = temp

    return reverse_helper(s, i + 1, j - 1)
end


# Write a method reverse_inplace that accepts a string as a parameter
# and then reverses the string in place using a recursive algorithm.
# e.g. reverse("hello world") will convert the input string to "dlrow olleh"
# Time complexity: O(n)
# Space complexity: O(n) call stack increases as n increases
def reverse_inplace(s)
    reverse_helper(s)
end


# Write a method bunny that accepts an integer parameter n.
# n represents a number of bunnies and each bunny has two big floppy ears.
# We want to compute the total number of ears across all the bunnies recursively
# (without loops or multiplication).
# e.g. bunny(0) = 0
# e.g. bunny(1) = 2
# e.g. bunny(10) = 20
# Time complexity: O(n)
# Space complexity: O(n) call stack increases as n increases
def bunny(n)
    return 0 if n <= 0

    return 2 + bunny(n-1)
end


# Write a method nested that accepts a string of only parenthesis
# and then returns if those parenthesis are properly nested.
# You may assume that no non-parenthesis characters will be passed to this method.
# e.g. nested("((()))") = true
# e.g. nested("())") = false
# Challenge: Try doing this without creating new strings in the process of solving the problem.
# Time complexity: O(n)
# Space complexity: O(n) call stack increases as n increases
def nested(s)
    if s == ""
        return true
    elsif s.length % 2 != 0
        return false
    else
        return nested_helper(s)
    end
end

def nested_helper(s, i = 0, j = s.length - 1)
    return true if i > j

    if s[i] == "(" && s[j] == ")"
        return nested_helper(s, i + 1, j - 1)
    else
        return false
    end
end


# Write a method search that accepts an unsorted array of integers
# and an integer value to find and then returns true if the value is found in the unsorted array and false otherwise.
# Make the algorithm recursive.
# e.g. search([34, 45, 21, 4, 67], 4) should return true
# e.g. search([24, 51, 11], 4) should return false
# e.g. search([], 4) should return false
# Time complexity: O(n)
# Space complexity: O(n) call stack increases as n increases
def search(array, value)
    return false if array.empty?

    search_helper(array, value)
end

def search_helper(array, value, i = 0, j = array.length - 1)
    return false if i > j

    if array[i] == value
        return true
    else
        return search_helper(array, value, i + 1)
    end
end


# Write a recursive method pal that accepts a string s as a parameter
# and returns a boolean value indicating if that string is a palindrome or not.
# e.g. is_palindrome("racecar") = true
# e.g. is_palindrome("smile") = false
# Challenge: Try doing this without creating new strings in the process of solving the problem.
# Time complexity: O(n)
# Space complexity: O(n) call stack increases as n increases
def is_palindrome(s)
    return true if s == ""

    is_palindrome_helper(s)
end

def is_palindrome_helper(s, i = 0, j = s.length - 1)
    return true if i >= j

    if s[i] != s[j]
        return false
    else
        return is_palindrome_helper(s, i + 1, j - 1)
    end
end



# Design and implement a recursive method that accepts two non-negative integers as parameters
# and that returns the number of digits that match in the two integers.
# Two digits match if they are equal and have the same position relative to the end of the number # (i.e. starting with the ones digit).
# In other words, the method should compare the last digits of each number,
# the second-to-last digits of each number, the third-to-last digits of each number, and so forth, counting how many pairs match.
# For example, for input values of (1072503891, 62530841), the method would compare as follows:
# 1 0 7 2 5 0 3 8 9 1
#     | | | | | | | |
#     6 2 5 3 0 8 4 1
# The method should return 4 in this case because 4 of these pairs match (2-2, 5-5, 8-8, and 1-1).

# Time complexity: O(log n)
# Space complexity: O(n) call stack increases as n increases
def digit_match(n, m)
    return 1 if m == 0 && n == 0

    digit_match_helper(n, m)
end

# digit_match_helper separates each place value
# 123 % 10 / 1
# => 3
# 123 % 100 / 10
# => 2
# 123 % 1000 / 100
# => 1
def digit_match_helper(n, m, mod = 10, place_value = 1)
    return 0 if place_value > n || place_value > m

    n_digit = n % mod / place_value
    m_digit = m % mod / place_value

    if n_digit == m_digit
        return 1 + digit_match_helper(n, m, mod * 10, place_value * 10)
    elsif n_digit != m_digit
        return digit_match_helper(n, m, mod * 10, place_value * 10)
    end
end


# fib(n)
# Write a recursive method fib that accepts an integer index n as a parameter and returns the nth fibonacci number.
# e.g. fib(4) = (0 1 1 2 3) should return 3
# "The Fibonacci sequence is a series of numbers where a number is the addition of the last two numbers, starting with 0, and 1. "
# Time complexity: O(log n)
# Space complexity: O(n) call stack increases as n increases
def fib(n)
    if n == 0
        return 0
    elsif n == 1
        return 1
    end

    fib(n-1) + fib(n-2)
end