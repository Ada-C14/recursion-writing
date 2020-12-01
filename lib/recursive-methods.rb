# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n), where n is size of number
# Space complexity: O(n)
def factorial(n)
    raise ArgumentError unless n >= 0

    return 1 if n == 0

    return n * factorial(n-1)

end


# Time complexity: 0(n^2) where n is length od string
# Space complexity: 0(n^2) where n is length of string

def reverse(s)
    return s if s.length < 2
    return s[-1] + reverse(s[1..-2]) + s[0]
end


# Time complexity: o(n) where n is length of string
# Space complexity: o(n)
def reverse_inplace(s, first = 0, last = s.length - 1)
    return s if first == last || s.empty?
    s[first], s[last] = s[last], s[first]
    return reverse_inplace(s, first + 1, last - 1)
end


# Time complexity: O(n) where n is size of number
# Space complexity: O(n)
def bunny(n)
    return n if n <= 0

    return bunny(n-1) + 2
end

# Time complexity: o(n) where n is length of string
# Space complexity: o(n)

def nested(s, first = 0, sub_length = s.length)

    return false if sub_length == 1

    return true if first == sub_length

    return (s[first] == '(' && s[sub_length-1] == ')') ? nested(s, first + 1, sub_length - 1) : false

end

# Time complexity: O(n) where n is length of array
# Space complexity: O(n)

def search(array, value, i = 0)
    return true if array[i] == value

    return false if i == array.length

    return search(array, value, i + 1)
end

# Time complexity: O(n) where n is the length of string
# Space complexity: O(n) where n is the length of string
#
def is_palindrome(s, first = 0, sub_length = s.length)

    return true if first == sub_length || first == sub_length - 1

    return (s[first] == s[sub_length-1]) ? is_palindrome(s, first + 1, sub_length - 1) : false

end


# Time complexity: O(logn) where n is the largest number
# Space complexity: O(logn)
def digit_match(n, m, count = 0)
    if n/10 == 0 && m/10 == 0
        return n == m ? count + 1 : count
    end

    if n/10 == 0
        return m % 10 == n ? count + 1 : count
    elsif m/10 == 0
        return n % 10 == m ? count + 1 : count
    else
        return n%10 == m%10 ? digit_match(n/10, m/10, count + 1) : digit_match(n/10, m/10, count)
    end
end

def fib(n)
    return n if n <= 1
    return fib(n - 1) + fib(n - 2)
end

# def fib_non_rec(n)
#     seq = Array.new(n+2)
#
#     seq[0] = 0
#     seq[1] = 1
#
#     (2..n).each { |i| seq[i] = seq[i - 1] + seq[i - 2]}
#
#     return seq[n]
# end