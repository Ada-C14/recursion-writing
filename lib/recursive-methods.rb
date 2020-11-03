# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# The number of times that the method will be called increases
# proportionally as you increase the size of n.
# "n - 1" controls the main method and there are no other methods
# called inside of the main method.
# Space complexity: O(n)
# The method only needs to track the local variable and the return value
# of each function call for factorial(n). There are no other data structures
# being created. So, the space complexity is how many stack frames
# need to be added to the stack, which is based on how many times it runs.
def factorial(n)
    raise ArgumentError if n < 0

    return 1 if n == 0

    return n * factorial(n - 1)
end

# Time complexity: O(n^2)
# The number of times the reverse(s) method will be called scales proportionally
# as you increase the length of the string being reversed. On its own that's O(n).
# Then, inside of each method call of reverse(s), the split method is being called
# on the string, which is another O(n) method happening inside of an O(n) method.
# Space complexity: O(n^2)
# The space complexity of the stack frames being added to the stack is O(n^2)
# because of the rate the functions are being called. There are new strings
# being created every time that the method is called, but they are used up
# after each call and do not appreciably affect the space complexity.
def reverse(s)
    return s if s.length <= 1

    return s[s.length - 1] + reverse(s[1...s.length - 1]) + s[0]
end

# Time complexity: O(n)
# reverse_inplace(s) is called once. reverse_inplace_helper(s) is called
# a number of times proportional to the length of the word being reversed
# (when you double the length of the word, the number of times the function
# runs approximately doubles). There are no functions being called inside
# of the reverse_inplace or reverse_inplace_helper functions that increase
# the time complexity.
# Space complexity: O(n)
# Each call of the function adds a stack frame to the stack. Aside from the
# information in these frames, there is only the temp variable being created,
# which as a constant does not increase the space complexity.
def reverse_inplace_helper(s, first = 0, last = s.length - 1)
    if first >= last
        return s
    else
        temp = s[first]
        s[first] = s[last]
        s[last] = temp
        return reverse_inplace_helper(s, first + 1, last - 1)
    end
end

def reverse_inplace(s)
    return reverse_inplace_helper(s)
end

# Time complexity: O(n)
# The number of times that bunny(n) will be called increases linearly to how
# many bunnies there are (the size of n). Within each call of the function
# the only operations being performed are basic arithmetic, so there is no
# nested time complexities.
# Space complexity: O(n)
# How much space on the stack is used increases proportional to increasing
# the size of n. Within each function call there are no additional data
# structures using up space beyond the argument variables and return values
# tracked by the stack frame.
def bunny(n)
    return 0 if n <= 0

    return 2 + bunny(n - 1)
end

# Time complexity: O(n)
# nested(s) is called only one time. nested_helper(s) is called a number of times
# that increase proportionally with an increase in the length of s. Within
# each function call, there are no methods being called which increase the
# time complexity.
# Space complexity: O(n)
# The number of frames that get placed on the call stack increases linearly.
# The function is not creating additional data structures beyond the local
# variables.
def nested_helper(s, first = 0, last = s.length - 1)
    if first > last
        return true
    elsif first == last
        return false
    elsif s[first] == "(" && s[last] == ")"
        return nested_helper(s, first + 1, last - 1)
    else
        return false
    end
end

def nested(s)
    return nested_helper(s)
end

# Time complexity: O(n)
# search(array, value) is called once and search_helper
# is called at most array.length times, so the time that it takes to run
# increases linearly with the size of the array.
# Space complexity: O(n)
# The number of stack frames in use increases in a linear fashion with the
# length of the array. It is not creating new arrays or new data structures
# as it runs, though, so the function calls are the controlling factor
# in the space complexity.
def search_helper(array, value, index = 0)
    if array[index] == value
        return true
    elsif index >= array.length
        return false
    else
        return search_helper(array, value, index + 1)
    end
end

def search(array, value)
    return search_helper(array, value)
end

# Time complexity: ?
# Space complexity: ?
def is_palindrome_helper(s, first = 0, last = s.length - 1)
    if first >= last
        return true
    elsif s[first] != s[last]
        return false
    else
        return is_palindrome_helper(s, first + 1, last - 1)
    end
end

def is_palindrome(s)
    return is_palindrome_helper(s)
end

# Time complexity: O(n)
# digit_match is called once. digit_match_helper is called a number of times
# one more than the number of digits in the shorter number. Therefore, the
# time complexity is controlled by the length of the shorter number and
# increases linearly when that number gets longer.
# Space complexity: O(n)
# The space taken up on the stack is controlled by the number of times the
# methods are called, which is linearly proportional to the length of the
# shorter number. The methods do not create data structures that would
# meaningfully increase the amount of space used, just creating one string
# for each number and two local variables.
def digit_match_helper(n, m, n_check = n.length - 1, m_check = m.length - 1)
    if m_check < 0 || n_check < 0
        return 0
    elsif m[m_check] == n[n_check]
        return 1 + digit_match_helper(n, m, n_check - 1, m_check - 1)
    else
        return 0 + digit_match_helper(n, m, n_check - 1, m_check - 1)
    end
end

def digit_match(n, m)
    return digit_match_helper(n.to_s, m.to_s)
end