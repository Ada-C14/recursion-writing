# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n); n operations are completed in total (1 for each level except base case)
# Space complexity: O(n); stack will have n+1 levels
def factorial(n)
    # raise NotImplementedError, "Method not implemented"
    raise ArgumentError, "Must pass an positive integer value or 0." if n < 0
    return 1 if n == 0
    return n * factorial(n - 1)
end

# Time complexity: O(n); an operation is completed for each stack frame
# Space complexity: O(n^2)
# >> system stack will include as many stack frames as there are letters in the string
# >> we create a new string that is (n-1) length each time recursive case is hit
def reverse(s)
    # raise NotImplementedError, "Method not implemented"
    return s if s.empty? || s.length == 1
    s[-1] + reverse(s[0..-2])
end

# Time complexity: O(n); n/2 swaps are made on average
# Space complexity: O(n)
# >> approx. n/2 stack frames are added to system stack (aside from empty or 1 letter strings);
# >> no new strings are created in the process
def reverse_inplace(s, low = 0, high = s.length - 1)
    # raise NotImplementedError, "Method not implemented"
    return s if s.empty? || s.length == 1
    return s if low >= high

    s[low], s[high] = s[high], s[low]
    reverse_inplace(s, low + 1, high - 1)
end

# Time complexity: O(n); n operations completed in total; one for each recursive call
# Space complexity: O(n); n stack frames added until no bunnies left
def bunny(n)
    # raise NotImplementedError, "Method not implemented"
    return 0 if n == 0
    2 + bunny(n - 1)
end

# Time complexity: O(n); n/2 comparisons are made on average
# Space complexity: O(n)
# >> approx. n/2 stack frames are added to system stack (aside from empty or 1 letter strings);
# >> no new strings are created in the process
def nested(s, low = 0, high = s.length - 1)
    # raise NotImplementedError, "Method not implemented"
    return true if s.empty? || low > high
    return false if low == high || s[low] == ")"

    nested(s, low + 1, high - 1)
end

# Time complexity: O(n); up to n comparisons
# Space complexity: O(n); up to n stack frames added to system stack in searching through array
def search(array, value, search_idx = 0)
    # raise NotImplementedError, "Method not implemented"
    return false if search_idx > array.size - 1
    return true if array[search_idx] == value

    search(array, value, search_idx + 1)
end

# Time complexity: ?
# Space complexity: ?
def is_palindrome(s, low = 0, high = s.length - 1)
    # raise NotImplementedError, "Method not implemented"
    return true if s.empty? || low >= high
    return false if s[low] != s[high]

    is_palindrome(s, low + 1, high - 1)
end

# Time complexity: ?
# Space complexity: ?
def digit_match(n, m)
    raise NotImplementedError, "Method not implemented"
end