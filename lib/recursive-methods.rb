# frozen_string_literal: true

# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
  if n.negative?
    raise ArgumentError, 'n must be greater than or equal to 0.'
  elsif n.zero?
    1
  else
    n * factorial(n - 1)
  end
end

# Time complexity: O(n^2)
# Space complexity: O(n^2)
def reverse(s)
  if s.length == 0 || s.length == 1
    return s
  end
    return s[s.length-1] + reverse(s[0, s.length - 1])
end

# Time complexity: O(n^2)
# Space complexity: O(n^2)
def reverse_inplace(s)

  if s.length.zero? || s.length == 1
    return s
  end
  length = s.length - 1
  return pointers(s, 0, length)

end

def pointers(s, start_point, end_point)
  if start_point >= end_point
    return s
  end
  temp = s[start_point]
  s[start_point] = s[end_point]
  s[end_point] = temp
  return pointers(s, (start_point + 1), (end_point - 1))
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
  if n.negative?
    raise ArgumentError, 'n must be greater than or equal to 0.'
  elsif n.zero?
    0
  else
    bunny(n - 1) + 2
  end
end

# Time complexity: O(n)
# Space complexity: O(n)
def nested(s)
  right_parenthesis = ')'
  left_parenthesis = '('
  if s.nil? || s.length.zero?
    true
  elsif s.length > 1
    if s[0] == left_parenthesis && s[-1] == right_parenthesis
      nested(s[1...-1])
    else
      false
    end
  else
    false
  end
end

# Time complexity: O(n)
# Space complexity: O(n)
def search(array, value)
  if array.nil? || array.length.zero?
    return false
  elsif array[0] == value
    return true
  else
    search(array[1..-1], value)
  end
end

# Time complexity: O(n)
# Space complexity: O(n)
def is_palindrome(s)
  s = s.gsub(/[^[:alnum:]]/, '').downcase
  if s.nil? || s.length.zero?
    true
  else
    if s[0] == s[-1]
      return is_palindrome(s[1...-1])
    else
      return false
    end
    false
  end
end

# Time complexity: O(n^2)
# Space complexity: O(n^2)
def digit_match(n, m);
  if n.nil? || m.nil?
    return 0
  elsif n.to_s.empty? || m.to_s.empty?
    return 0
  elsif n.to_s[-1] == m.to_s[-1]
    return 1 + digit_match(n.to_s[0..-2], m.to_s[0..-2])
  else
    return 0 + digit_match(n.to_s[0..-2], m.to_s[0..-2])
  end
end

# Time complexity: O(n^2)
# Space complexity: O(n^2)



