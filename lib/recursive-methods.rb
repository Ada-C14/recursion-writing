# frozen_string_literal: true

# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n) Linear -  Method is called n times. Time to complete the work grows in a 1 to 1 relation to input size.
# Space complexity: O(n) Linear - Stack grows with each iteration so space is linearly proportional to the size of the input.
def factorial(n)
    raise ArgumentError unless n >= 0
    return 1 if n.zero? || n == 1

    n * factorial(n - 1)
end

# Time complexity: O(n) Linear -  Method is called n times. Time to complete the work grows in a 1 to 1 relation to input size.
# Space complexity: O(n) Linear - Stack grows with each iteration so space is linearly proportional to the size of the input.
def reverse(s, i = 0, j = s.length - 1)
    # raise NotImplementedError, "Method not implemented"
    return s if s.length <= 1
    return '' if s.empty?

    if i < j
        temp = s[i]
        s[i] = s[j]
        s[j] = temp
        return reverse(s, i + 1, j - 1)
    else
        return s
    end
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse_inplace(s, i = 0, j = s.length - 1)
    if i < j
        temp = s[i]
        s[i] = s[j]
        s[j] = temp
        return reverse_inplace(s, i + 1, j - 1)
    else
        return s
    end
end

# Time complexity: O(n) Linear - Time to complete the work grows in a 1 to 1 relation to input size.
# Space complexity: O(n) Linear - Stack grows with each iteration so space is linearly proportional to the size of the input.
def bunny(n)
    # raise NotImplementedError, "Method not implemented"
    return 0 if n <= 0
    return 2 if n == 1

    2 + bunny(n - 1)
end

# Time complexity: O(n2)
# Space complexity: O(n2)
def nested(s)
    # raise NotImplementedError, "Method not implemented"
    return true if s.empty?
    return false unless s[0] == "(" && s[-1] == ")"

    return nested(s[1..-2])
end

# Time complexity: O(n) method is called n times, this depends on array length
# Space complexity: O(n) Stack grows with each iteration so space is linearly proportional to the size of the input.
def search(array, value, i = 0)
    # raise NotImplementedError, "Method not implemented"
    return false if array.empty?

    if i < array.length
        return true if array[i] == value

        return search(array, value, i + 1)
    else
        return false
    end
end

# Time complexity: O(n)
# Space complexity: O(n)
def is_palindrome(s, i = 0, j = s.length - 1)
    # raise NotImplementedError, "Method not implemented"
    return true if s.empty?
    return true if s.length == 1

    if i < j
        return false unless s[i] == s[j]

        return is_palindrome(s, i + 1, j - 1)
    else
        return true
    end
end

# Time complexity: ?
# Space complexity: ?
def digit_match(n, m)
    # raise NotImplementedError, 'Method not implemented'
    if (n < 0 || m < 0) || (n == 0 && m == 0)
        return 1
    end
    # need to think about this one but turning in what I have for now.
end