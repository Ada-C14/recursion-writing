# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
### because method iterates n times
# Space complexity: O(n)
### because space usage depends on the value of n
def factorial(n)
    if n < 0
        raise ArgumentError
    end
    #base case
    if n == 0
        return 1
    else
        return n * factorial(n-1)
    end
end

# Time complexity: O(n^2)
## slice method iterates through the string and
### recursion iterates through the string again, so n^2
# Space complexity: O(n^2)
### stack space usage is squared because squared calls of the method
def reverse(s)
    if s.nil?
        raise ArgumentError
    end
    if s.length == 0
        return s
    else
        return s[-1] + reverse(s[0..-2])
    end
end

# Time complexity: O(n)
### because method calls itself s.length/2 times,
### where 1/2 is a constant and I drop it off.
# Space complexity: O(n)
### Stack will contains s length/2 times calls of the method
def reverse_inplace(s)
    if s.nil?
        raise ArgumentError
    end

    if s.length == 0
        return s
    else
        reverse_helper(s, 0)
        return s
    end
end

def reverse_helper(s, i)
    # temp = s[i]
    # s[s.length - 1 - i] = temp
    # s[i] = s[s.length - 1 - i]
    if i > s.length / 2
        return #return nothing because it's time to stop
    else
        s[i], s[s.length - 1 - i] = s[s.length - 1 - i], s[i]
        reverse_helper(s, i + 1)
    end
end

# Time complexity: O(n)
### because method's calling maximum n times
# Space complexity: 0(n)
### because calling recursive method n times and it takes n space
def bunny(n)
    if n == 0
        return 0
    else
        return 2 + bunny(n-1)
    end
end

# Time complexity: O(n)
# Because the method iterates maximum s length times
# Space complexity: O(n)
# Because each call of the method saves in the stack, and we have s length times calls.
#
#
# Calling helper method to loop through s, and extra parameters is needed
def nested(s)
    if s.nil?
        raise ArgumentError
    end
    return nested_helper(s, 0, 0)

end

# Assume that '(' adds 1 to sum, ')' extract 1 from sum, so
# sum will be 0, if we have equal amount of '()'
# sum will be negative, if there more one or another '()'
def nested_helper(s, i, sum)
    #base case
    if i == s.length
        if sum == 0
            return true
        else
            return false
        end
    end

    #base case 2
    if sum < 0
        return false
    end
    #if current char '(' I add 1 to sum, otherwise extract 1
    if s[i] == "("
        sum += 1
    else
        sum -= 1
    end
    return nested_helper(s, i + 1, sum)
end

# Time complexity: ?
# Space complexity: ?
def search(array, value)
    raise NotImplementedError, "Method not implemented"
end

# Time complexity: ?
# Space complexity: ?
def is_palindrome(s)
    raise NotImplementedError, "Method not implemented"
end

# Time complexity: ?
# Space complexity: ?
def digit_match(n, m)
    raise NotImplementedError, "Method not implemented"
end