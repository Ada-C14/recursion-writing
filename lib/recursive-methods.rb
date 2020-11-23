# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
    raise ArgumentError if n < 0
    return 1 if n == 0
    return n * factorial(n - 1)
end

# Time complexity: O(n^2), where n is the length of the string
# Space complexity: O(n^2), where n is the length of the string
def reverse(s, pointer = s.length - 1)
    return s if s == ""
    return s[pointer] if pointer == 0
    return s[pointer] + reverse(s, pointer - 1)
end

# Time complexity: O(n), where n is the length of the string. (More precisely, n/2)
# Space complexity: O(n), where n is the length of the string. (More precisely, n/2)
def reverse_inplace(s)
    return s if s.length == 0 || s.length == 1
    length = s.length - 1
    return reverse_inplace_recursive(s, 0, length)
end

def reverse_inplace_recursive(s, left, right)
    return s if left >= right
    holder = s[left]
    s[left] = s[right]
    s[right] = holder
    return reverse_inplace_recursive(s, left + 1, right - 1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
    return 0 if n < 1
    return 2 if n == 1
    return 2 + bunny(n - 1)
end

# Time complexity: O(n), where n is the length of the string
# Space complexity: O(n), where n is the length of the string
def nested(s, parens_counter = 0, pointer = 0)
    return false if parens_counter < 0
    return true if pointer == s.length && parens_counter == 0
    return false if pointer == s.length && parens_counter != 0
    return nested(s, parens_counter + 1, pointer + 1) if s[pointer] == "("
    return nested(s, parens_counter - 1, pointer + 1) if s[pointer] == ")"
end

# Time complexity: O(n), where n is the length of the string
# Space complexity: O(n), where n is the length of the string
def search(array, value, pointer = 0)
    return false if pointer == array.length
    return true if array[pointer] == value
    return search(array, value, pointer + 1)
end

# Time complexity: O(n), where n is the length of the string (More precisely, n/2)
# Space complexity: O(n), where n is the length of the string (More precisely, n/2)
def is_palindrome(s, length = s.length, pointer = 0)
    return true if pointer > length / 2
    return false if s[pointer] != s[length - 1 - pointer]
    return is_palindrome(s, length, pointer + 1)
end

def digit_match(n, m, pointer = -1, matches = 0)

end
