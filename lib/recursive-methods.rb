# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: n
# Space complexity: n
def factorial(n)
    raise ArgumentError if n < 0
    return 1 if n == 0
    return 1 if n == 1
    return n * factorial(n - 1)
end

# Time complexity: n^2
# Space complexity: n^2
def reverse(s) #was the answer to this supposed to be different from the one below??
    if s.length == 0
        return s
    else
        return reverse(s[1..-1]) +s[0]
    end
end

# Time complexity: n
# Space complexity: n
def reverse_inplace(s)
    #fix - add a few default arguments
    #add optional arguments
    if s.length == 0
        return s
    else
        return reverse(s[1..-1]) + s[0]
    end

    #Try Iterator to Recusion...
    # reverse_index = -1
    # count = 0
    # length = s.length
    #
    # while count < length / 2
    #     temp = s[count]
    #     s[count] = s[reverse_index]
    #     s[reverse_index] = temp
    #
    #     count += 1
    #     reverse_index -= 1
    # end
    # return s
end

#***
# Could not for the life of me
# figure out how to do this recursively based
# on the tests provided.
# Didn't even use a loop to convert...>_<
#***
# Time complexity: n
# Space complexity: n
def bunny(n)
    return 0 if n == 0
    if n > 0
        return  bunny(n - 1) + 2
    end
end

# Time complexity: n^2
# Space complexity: n^2
def nested(s)
    return true if s.length == 0
    return false if s.length % 2 != 0
    if s[0] != s[-1]
        return nested(s[1..-2])
    else
        return false
    end
end


# Time complexity: ?
# Space complexity: ?
def search(array, value)
    return false if array.length == 0
    if array[0] == value
        return true
    else
        return search(array[1..-1], value)
    end
end

# Time complexity: n
# Space complexity: n
def is_palindrome(s)
    return true if s.length == 0
    if s[0] == s[-1]
        return is_palindrome(s[1..-2])
    else
        return false
    end
end

# Time complexity: n
# Space complexity: n
#
# how many calls
# how expensive is each call
def digit_match(n, m)
    if n < 10 || m < 10
        last_digit_m = m % 10
        last_digit_n = n % 10
        return last_digit_m == last_digit_n ? 1 : 0
    else
        last_digit_m = m % 10
        last_digit_n = n % 10
        match = last_digit_m == last_digit_n ? 1 : 0
        return digit_match(n / 10, m / 10) + match
    end
end