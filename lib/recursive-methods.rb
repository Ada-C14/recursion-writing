# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n) it depends on the size of n to run
# Space complexity: O(n) it creates a stack every time it calls the recursive method
def factorial(n)
    raise ArgumentError if n < 0
    return 1 if n == 0
    return n * factorial(n - 1)

end

# Time complexity: O(n^2) - the slice method in the reverse method creates another array so that counts for O(n) and then the method runs n times depending on the size of array, O(n). Total of O(n^2).
# Space complexity: O(n^2) - because we are creating a new array when using the slice method and it creates a stack to run the recursion method.
def reverse(s)
    if s.length <= 1
        return s
    end

    return s[-1] + reverse(s[1..-2]) + s[0]
end


# Time complexity: O(n) it depends on the size of s to run
# Space complexity: O(n) it creates a stack every time if calls the recursive method
def reverse_inplace(s, i = 0, j = s.length - 1)
    return s if s.length == 0 || s.length == 1
    return s if i >= j
    temp = s[i]
    s[i] = s[j]
    s[j] = temp

    return reverse_inplace(s, i + 1, j - 1)
end


# Time complexity: O(n) it depends on the size of n to run
# Space complexity: O(n) it creates a stack every time if calls the recursive method
def bunny(n)
    return 0 if n <= 0
    return 2 + bunny(n - 1)
end

# Time complexity: O(n) it depends on the size of s to run
# Space complexity: O(n) it creates a stack every time if calls the recursive method
def nested(s, i = 0, j = s.length - 1)
    return true if s.empty? || i > j && s[i] != s[j]
    return false if s.length == 1 || s[i] == s[j]
    return nested(s, i + 1, j - 1)

end

# Time complexity: O(n) it depends on the size of the array to run
# Space complexity: O(n) it creates a stack every time if calls the recursive method
def search(array, value, index = 0)
    return false if index >= array.length
    return true if array[index] == value
    return search(array, value, index + 1)
end

# Time complexity: O(n) it depends on the size of s to run
# Space complexity: O(n) it creates a stack every time if calls the recursive method
def is_palindrome(s, i = 0, j = s.length - 1)
    return true if s.empty? || i >= j
    return false if s[i] != s[j]

    return is_palindrome(s, i + 1, j - 1)
end

# Time complexity: O(log n)
# Space complexity: O(log n)
def digit_match(n, m)

    return 1 if n == 0 && m == 0
    return 0 if n <= 1 || m <= 1

    if n % 10 == m % 10
        return 1 + digit_match(n / 10, m / 10)
    else
        return digit_match(n / 10, m / 10)
    end
end



# Time complexity: O(2^n) it depends on the size of n to run
# Space complexity: O(2^n) it creates a stack every time if calls the recursive method
def fibonacci(n)
    return 0 if n == 0
    return 1 if n == 1
    return fibonacci(n - 1) + fibonacci(n - 2)
end