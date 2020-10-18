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

# Time complexity: ?
# Space complexity: ?
def bunny(n)
    raise NotImplementedError, "Method not implemented"
end

# Time complexity: ?
# Space complexity: ?
def nested(s)
    raise NotImplementedError, "Method not implemented"
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