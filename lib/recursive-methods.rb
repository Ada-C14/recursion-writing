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

# Time complexity: O(n)
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

# Time complexity: ?
# Space complexity: ?
def search(array, value)
    raise NotImplementedError, "Method not implemented"
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

# Time complexity: O(n^2)
# Space complexity: O(n^2)
def digit_match(n, m)
    raise NotImplementedError, "Method not implemented"
end