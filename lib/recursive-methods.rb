# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
  if n == 0
    return 1
  elsif n < 0
    raise ArgumentError
  else
    return n * factorial(n - 1)
  end
end

# Time complexity: O(n^2)
# Space complexity: O(n^2)
def reverse(s)
  if s.length == 0
    return ""
  end

  return reverse(s[1..-1]) + s[0]
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse_helper(s, first, last)
  if first < last
    s[first], s[last] = s[last], s[first]

    return reverse_helper(s, first + 1, last - 1)
  end

  return s
end

def reverse_inplace(s)
  return s if s.length <= 1

  reverse_helper(s, 0, s.length - 1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
  return n if n == 0

  return 2 + bunny(n - 1)
end

# Time complexity: O(n)
# Space complexity: O(n^2)
def nested(s)
  return true if s.length == 0
  return false if s[0] != "(" || s[-1] != ")"

  return nested(s[1...-1])
end

# Time complexity: O(n)
# Space complexity: O(n^2)
def search(array, value)
  return false if array.empty?
  return true if array[0] == value

  return search(array[1..-1], value)
end

# Time complexity: O(n)
# Space complexity: O(n^2)
def is_palindrome(s)
  return true if s.length <= 1
  return false if s[0] != s[-1]

  return is_palindrome(s[1...-1])
end

# Time complexity: O(log n)
# Space complexity: O(log n)
def digit_match(n, m)
  return 1 if n == 0 && m == 0
  return 0 if n <= 1 || m <= 1

  return n % 10 == m % 10 ? (1 + digit_match(n / 10, m / 10)) : digit_match(n / 10, m / 10)
end