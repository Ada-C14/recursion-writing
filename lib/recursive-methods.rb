# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n), where n is the number passed to the method. Because this is recursive, the method will be called n number of times.
# Space complexity: O(n) when n > 1, O(1) if n = 1. The recursive call puts n stack frames on the call stack.
def factorial(n)
  raise ArgumentError, "argument must be positive integer or zero" if n.negative?

  return 1 if n.zero? || n == 1

  return n * factorial(n - 1)
end

# Time complexity: O(n^2), where n is the length of the string passed to the method. Because this is recursive, the method will be called n number of times.
# Space complexity: O(n^2)
def reverse(s)
  return s if s.length <= 1

  return s[-1] + reverse(s[0..-2])

end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse_inplace(s)
  reverse_inplace_helper(s, 0, s.length - 1)
end

def reverse_inplace_helper(s, low, high)
  return s if high <= low
  s[low], s[high] = s[high], s[low]
  reverse_inplace_helper(s, low + 1, high - 1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
  return 0 if n.zero?
  return 2 + bunny(n - 1)

end

# Time complexity: O(n^2)
# Space complexity: O(n^2)
def nested(s)
  return true if s == ""
  return false unless (s.length % 2).zero?

  if s[0] == "(" && s[-1] == ")"
    return nested(s[1..-2])
  else
    return false
  end


end

# Time complexity: O(n^2)
# Space complexity: O(n^2)
def search(array, value)
  return false if array.empty? || array.nil?

  if array[0] == value
    return true
  else
    search(array[1..-1], value)
  end

end

# Time complexity: O(n^2)
# Space complexity: O(n^2)
def is_palindrome(s)
  if s.length < 2
    return true
  elsif s[0] != s[-1]
    return false
  else
    return is_palindrome(s[1..-2])
  end
end

# Time complexity: O(n^2+m^2)
# Space complexity: O(n^2+m^2)
def digit_match(n, m)
  n = n.digits if n.class == Integer
  m = m.digits if m.class == Integer

  count = 0
  return digit_match_with_counter(n, m, count)
end

def digit_match_with_counter(n, m, count)
  if n.length < 1 || m.length < 1
    return count
  elsif n[0] == m[0]
    count += 1
  end

  return digit_match_with_counter(n[1..-1], m[1..-1], count)
end