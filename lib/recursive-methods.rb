# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
  raise ArgumentError, "Please pick positive integer" if n.negative?
  return 1 if n.zero?
  n * factorial(n - 1)
end

# Time complexity: O(n^2)
# Space complexity: O(n^2)
def reverse(s)
  return s if s.length <= 1
  s[-1] + reverse(s[0...-1])
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse_inplace(s, i = 0, j = s.length - 1)
  return s if s.length <= 1 || i == j

    temp = s[i]
    s[i] = s[j]
    s[j] = temp


  reverse_inplace(s, i + 1, j - 1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
  return 0 if n.zero?
  2 + bunny(n - 1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def nested(s)
  return false if s.length.odd?
  return true if s == ""

  return false unless s[0] == "(" && s[s.length - 1] == ")"


  return nested(s[1..-2])
end

# Time complexity: O(n)
# Space complexity: O(n)
def search(array, value, c = 0)

  return false if array.length == c
  return true if value == array[c]

  return search(array, value, c + 1)
end

# Time complexity: O(n
# Space complexity: O(n)
def is_palindrome(s)
  return true if s.length < 2

  return false unless s[0] == s[s.length - 1]

  return is_palindrome(s[1..-2])
end

# Time complexity: ?
# Space complexity: ?
def digit_match(n, m, c = 0)

  if n.negative? || m.negative?
    raise ArgumentError, "Please pick positive integer"
  end

  c += n%10 == m%10 ? 1 : 0

  return c if (n/10).zero? || (m/10).zero?

  return digit_match(n/10, m/10, c)
end