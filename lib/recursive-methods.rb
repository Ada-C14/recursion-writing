# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
  raise ArgumentError, "Cannot calculate the factorial of a negative number" if n < 0
  if (0..1).include? n
    return 1
  else
    return n * factorial(n - 1)
  end
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse(s)
  if !s || s.length == 0
    return ""
  else
    return s[-1] + reverse(s[0..-2])
  end
end

# Time complexity: ?
# Space complexity: ?
def reverse_inplace(s)
  raise NotImplementedError, "Method not implemented"
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
  if n == 0
    return n
  else
    return 2 + bunny(n - 1)
  end
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