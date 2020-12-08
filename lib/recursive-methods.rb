# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)

    raise ArgumentError if n < 0

    if n == 0 #base case
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
        return s[-1] + reverse(s[1..-2]) + s[0]
    end
end

# another way to do reverse
# if s.length <= 1
#     return s
# else
#     return reverse_inplace(s[1..-1]) + s[0]
# end



# Time complexity: ?
# Space complexity: ?
def reverse_inplace(s, low = 0, high = s.length - 1)
    if low >= high
        return s
    else
        temp = s[low]
        s[low] = s[high]
        s[high] = temp
        return reverse_inplace(s, low + 1, high - 1)
    end

end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
    if n == 0
        return 0
    else
        return 2 + bunny(n-1)
    end
end

# Time complexity: O(n^2)
# Space complexity: O(n^2)
def nested(s, low = 0, high = s.length - 1)
    # if s.empty?
    #     return true
    # elsif s[0] == s[-1]
    #     return false
    # else
    #     return nested(s[1..-2])
    # end
    #
    if low > high
        return true
    elsif s[low] == s[high]
        return false
    else
        nested(s, low + 1, high - 1)
    end

end

# Time complexity: O(n^2)
# Space complexity: O(n^2)
def search(array, value, index = 0)
    # if array.empty?
    #     return false
    # elsif array[0] == value
    #     return true
    # else
    #     return search(array[1..-1], value)
    # end

    if array.empty? || index > array.length - 1
        return false
    elsif array[index] == value
        return true
    else
        search(array, value, index + 1)
    end
end

# Time complexity: O(n^2)
# Space complexity: O(n^2)
def is_palindrome(s, left = 0, right = s.length - 1)
    # if s.length == 1 || s.empty?
    #     return true
    # end
    #
    # if s[0] == s[-1]
    #     is_palindrome(s[1..-2])
    # else
    #     return false
    # end
    if left > right
        return true
    elsif s[left] != s[right]
        return false
    else
        is_palindrome(s, left + 1, right - 1 )
    end

end

# Time complexity: ?
# Space complexity: ?
def digit_match(n, m, match_count = 0)

    raise ArgumentError if n < 0 || n < 0

    match_count += 1 if n % 10 == m % 10

    if n < 10 || m < 10
        return match_count
    else
        return digit_match(n/10, m/10, match_count)
    end

end