# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n) - as n increases, the time increases linearly
# Space complexity: O(n) - as n increases, the stack trace also increases linearly
def factorial(n)
    raise ArgumentError if n < 0
    return 1 if n == 0
    return n * factorial(n - 1)
end


# Time complexity: O(n^2)
# Space complexity: O(n^2)
def reverse(s)
    return s if s.length <= 1

    return s[-1] + reverse(s[1..-2]) + s[0]
end

# Time complexity: ?
# Space complexity: ?
def reverse_inplace(s)
    # how to reverse in place
    # raise NotImplementedError, "Method not implemented"

    # base case would be the same as the one above

    return s if s.length <= 1

end

# Time complexity: ?
# Space complexity: ?
def bunny(n)
    # raise NotImplementedError, "Method not implemented"
    return 0 if n == 0
    return 2 if n == 1

    return 2 + bunny(n-1)
end

# Time complexity: O(n^2) - the s[1..-2] makes a new string, adds another n to the TC
# Space complexity: O(n^2) - the s[1..-2] makes a new string, adds another n to the SC
def nested(s)
    # raise NotImplementedError, "Method not implemented"
    # e.g. nested("((()))") = true
    # e.g. nested("())") = false

    # how would I refactor this to not make a new string
    # must compare the () from the outside in, but how?

    # compare the parens from outside + nested(s[1..-2])
    # this would make a new string though, increases the time and space complexity by n

    return true if s.length < 1

    return false unless s[0] == "(" && s[-1] == ")"

    return nested(s[1..-2])

end

# Time complexity: O(n) - as the size the array increase, the TC increases linearly
# Space complexity: O(n)
def search(array, value)
    # raise NotImplementedError, "Method not implemented"
    return search_recursively(array, value, 0)

end

def search_recursively(array, value, index)
    return false if index >= array.length
    return true if array[index] == value

    return search_recursively(array, value, index + 1)
end



# Time complexity: O(n^2) the slice adds another n to the TC
# Space complexity: O(n^2) the s[1..-2] adds another n to the SC
def is_palindrome(s)
    # raise NotImplementedError, "Method not implemented"
    if s.length < 2
        return true
    elsif s[0] != s[-1] # first and last letter doesn't match
        return false
    else
        return is_palindrome(s[1..-2]) # take the second to the second to last letters
    end
end

# Time complexity: ?
# Space complexity: ?
def digit_match(n, m)
    # raise NotImplementedError, "Method not implemented"
    # what's my base case?
    #  if both n and m are single digits, they can match or not match
    # I don't think it matters to check if n and m are single digits
    # do we need a counter that would increase when there's a match?
    # How would a counter work in recursion?

    if

    if ( n < 10 || m < 10 ) && n % 10 == m % 10
        return 1
    end

    # return 1 if n % 10 == m % 10


    # if n < 10 && m < 10 && n % 10 != m % 10
    #     return 0
    # elsif n < 10 && m < 10 && n % 10 == m % 10
    #     return 1
    # else
    #     return digit_match(n/10, m/10)
    # end

    # if n < 10 && m < 10 && n % 10 != m % 10
    #     return 0
    # else
    #     return 1
    # end




    # return 0 if n

    # if n % 10 == m % 10
    #     return digit_match(n/10, m/10)
    # end


end