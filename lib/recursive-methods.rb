# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
    raise ArgumentError if n < 0
    if n <= 1
        return 1
    else
        return n * factorial(n-1)
    end
end

# Time complexity: O(n^2)
# Space complexity: O(n^2)
def reverse(s)
    if s.length <= 1
        return s
    else
        return s[-1] + reverse(s.chop)
    end
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse_inplace(s)
    reverse_helper(0, s.length - 1, s)
    return s
end

def reverse_helper(i,j, string)
    if i < j
        temp = string[i]
        string[i] = string[j]
        string[j] = temp
        reverse_helper(i + 1, j - 1, string)
    end
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
    if n <= 0
        return 0
    else
        return 2 + bunny(n-1)
    end
end

# Time complexity: O(n)
# Space complexity: O(n)
def nested(s)
    nested_helper(0, s.length - 1, s)
end

def nested_helper(i,j, string)
    if i > j
        return true
    elsif string[i] == '(' && string[j] == ')'
        return nested_helper(i + 1, j - 1, string)
    else
        return false
    end
end

# Time complexity: O(n^2)
# Space complexity: O(n^2)
def search(array, value)
    return false if array.length == 0
    if array[0] == value
        return true
    else
        return search(array[1..-1], value)
    end
    return false
end

# Time complexity: O(n)
# Space complexity: O(n)
def is_palindrome(s)
    if s.length < 2
        return true
    else
        palindrome_helper(0,s.length - 1, s)
    end
end

def palindrome_helper(i,j,string)
    if i > j
        return true
    elsif string[i] == string[j]
        palindrome_helper(i+1, j-1, string)
    else
        return false
    end
end

# Time complexity: O(logn)
# Space complexity: O(logn)
def digit_match(n, m)
    if n == 0 && m == 0
        return 1
    elsif n <= 1 || m <= 1
        return 0
    end
    if n%10 == m%10
        return 1 + digit_match(n/10, m/10)
    else
        return digit_match(n/10, m/10)
    end
end