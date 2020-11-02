# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# The number of times that the method will be called increases
# proportionally as you increase the size of n.
# "n - 1" controls the main method and there are no other methods
# called inside of the main method.
# Space complexity: O(n)
# The method only needs to track the local variable and the return value
# of each function call for factorial(n). There are no other data structures
# being created. So, the space complexity is how many stack frames
# need to be added to the stack, which is based on how many times it runs.
def factorial(n)
    raise ArgumentError if n < 0

    return 1 if n == 0

    return n * factorial(n - 1)
end

# Time complexity: O(n^2)
# The number of times the reverse(s) method will be called scales proportionally
# as you increase the length of the string being reversed. On its own that's O(n).
# Then, inside of each method call of reverse(s), the split method is being called
# on the string, which is another O(n) method happening inside of an O(n) method.
# Space complexity: O(n^2)
# The space complexity of the stack frames being added to the stack is O(n^2)
# because of the rate the functions are being called. There are new strings
# being created every time that the method is called, but they are used up
# after each call and do not appreciably affect the space complexity.
def reverse(s)
    return s if s.length <= 1

    return s[s.length - 1] + reverse(s[1...s.length - 1]) + s[0]
end

# Time complexity: ?
# Space complexity: ?
def reverse_inplace(s)
    raise NotImplementedError, "Method not implemented"
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