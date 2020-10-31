# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n ^ 2)
# Space complexity: same as above
def factorial(n)
  raise ArgumentError if n < 0
  return 1 if n == 0
  return n * factorial(n-1)
end

# Time complexity: O(n^2)
# Space complexity: O(n^2)
def reverse(s)
    if s.length <= 1
        return s
    end

    return s[-1] + reverse(s[1..-2]) + s[0]
end

# Time complexity: O(n^2)
# Space complexity: O(n^2)
def reverse_inplace(s)
    if s.length <= 1
        return s
    end

    return s[-1] + reverse(s[1..-2]) + s[0]
end

# Time complexity: ?
# Space complexity: ?
def bunny(n)
  return 0 if n == 0
  return 2 if n == 1

  return bunny(n - 1) + 2
end

# Time complexity: O(n^2) - because you are adding to the stack with the recursive call (string.length times), and for each call ont he stack,
# Space complexity: ?
def nested(s)
    if s == "" #this also works: s.length == 0
      return true
    elsif s[0] == "(" && s[-1] == ")"
      return nested(s[1..-2])
    else
      return false
    end
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