# frozen_string_literal: true

# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
  raise ArgumentError, "Must be a positive integer" if n < 0
  return 1 if n == 0
  return n * factorial(n - 1)
end

# Time complexity: O(n^2)
# Space complexity: O(n^2)
def reverse(_s)
  return _s if _s.length == 0
  return _s[_s.length - 1] + reverse(_s[0, _s.length - 1])
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse_inplace(_s)
  return _s if _s.length == 0 || _s.length == 1
  length = _s.length - 1
  return reverse_inplace_recursive(_s, 0, length)
end

def reverse_inplace_recursive(_s, left, right)
  return _s if left >= right
  holder = _s[left]
  _s[left] = _s[right]
  _s[right] = holder
  return reverse_inplace_recursive(_s, left + 1, right - 1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(_n)
  return 0 if _n == 0
  return 2 + bunny(_n - 1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def nested(_s)
  return false if _s.length % 2 != 0
  return true if _s.length == 0

  right_index = _s.length - 1
  return nested_parens(_s, 0, right_index)
end

def nested_parens(string, left, right)
  if left >= right
    return true
  else
    if string[left] == "(" && string[right] == ")"
      return nested_parens(string, left + 1, right - 1)
    else
      return false
    end
  end
end

# Time complexity: O(n)
# Space complexity: O(n)
def search(_array, _value)
  return false if _array.empty?

  return searching(_array, _value, 0)

end

def searching(array, value, start)
  if start > array.length - 1
    return false
  else
    if value == array[start]
      return true
    else
      return searching(array, value, start + 1)
    end
  end
end


# Time complexity: O(n)
# Space complexity: O(n)
def is_palindrome(_s)
  return true if _s.empty?
  right_index = _s.length - 1

  return is_pal(_s, 0, right_index)
end

def is_pal(string, left, right)
  if left >= right
    return true
  else
    if string[left] == string[right]
      return is_pal(string, left + 1, right - 1)
    else
      return false
    end
  end
end

# Time complexity: Quadratic wrt the the number of digits in the smaller number
# Space complexity: Quadratic wrt the number of digits in the smaller number
def digit_match(_n, _m)
  n = _n.to_s
  m = _m.to_s

  return match_digits(n, m, matches = 0)
end

def match_digits(n, m, matches = 0)
  if n.length == 0 || m.length == 0
    return matches
  else
    if n[n.length - 1] == m[m.length - 1]
      matches += 1
      return match_digits(n[0, n.length - 1], m[0, m.length - 1], matches)
    else
      return match_digits(n[0, n.length - 1], m[0, m.length - 1], matches)
    end
  end
end

# Time complexity: exponential
# Space complexity: linear
def fib(n)
  if n == 0 || n == 1
    return n
  else
    return fib(n - 1) + fib(n - 2)
  end
end