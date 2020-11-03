# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n^2)
def factorial(n)
  return raise ArgumentError if n < 0
  return 1 if n == 0 || n == 1
  return n * factorial(n-1)
end

# Time complexity: O(n)
# Space complexity: O(n^2)
def reverse(s)
  return s if s.length <= 1
  reverse_s = reverse(s[1..-1])
  reverse_s += s[0]
  return reverse_s
end

# Time complexity: O(n)
# Space complexity: O(n^2)
def reverse_inplace(s)
  return s if s.length <= 1
  n = s[-1] + reverse_inplace(s[1..-2]) + s[0]
  s.replace n # I don't know how to reverse in place without using .replace...
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
  return n if n == 0
  return 2 + bunny(n-1)
end

# Time complexity: O(n)
# Space complexity: O(n^2)
def nested(s)
  return true if s.length == 0
  return false unless s[0] == "(" && s[-1] == ")"
  return nested(s[1..-2])
end

# Time complexity: O(n)
# Space complexity: O(n^2)
def search(array, value)
  return false if array == []
  return true if array[0] == value
  return search(array[1..-1], value)
end

# Time complexity: O(n)
# Space complexity: O(n^2)
def is_palindrome(s)
  return true if s == ""
  return false unless s[0] == s[-1]
  return is_palindrome(s[1..-2])
end

# Time complexity: O(n)
# Space complexity: O(n^2)
def helper_digit_match(n_string, m_string, matches)
  return matches if n_string[-1].nil? || n_string[-1].nil?
  if n_string[-1] == m_string[-1]
    helper_digit_match(n_string[0..-2], m_string[0..-2], matches += 1)
  else
    helper_digit_match(n_string[0..-2], m_string[0..-2], matches)
  end
end

def digit_match(n, m)
  n_string = n.to_s
  m_string = m.to_s
  return helper_digit_match(n_string, m_string, 0)
end