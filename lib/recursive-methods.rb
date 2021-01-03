# Authoring recursive algorithms. Add comments including time and space complexity for each method.
# Time complexity: 0(n)
# Space complexity: 0(n)
def factorial(n)
  raise ArgumentError if n < 0
  if n == 0
    return 1
  end
  return n * (factorial(n-1))
end

# Time complexity: 0(1)
# Space complexity: 0(1)
def reverse(s)
  if s.size == 1 or s.size == 0
    return s
  end
  return reverse(s[1..-1]) + s[0]
end

# Time complexity: 0(n)
# Space complexity: 0(n)
def reverse_inplace(s)
  if s.size < 2
    return s
  end
  return reverse_inplace(s[1..-1]) + s[0]
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
  return 0 if n == 0
  return 2 if n == 1
  return 2 + bunny(n-1)
end

# Time complexity:
# Space complexity:
def nested(s)
  return false if s.length.odd?
  return false if s =~ /[^\[\]\(\)\{\}]/

  pairs = { '{' => '}', '[' => ']', '(' => ')' }

  stack = []
    s.chars do |bracket|
      if expectation = pairs[bracket]
        stack << expectation
      else
        return false unless stack.pop == bracket
      end
    end
    stack.empty?
end

# Time complexity: O(n)
# Space complexity: O(n^2)
def search(array, value)
  return false if array.empty?
    if array[0] == value
      return true
    else
      return search(array[1..-1], value)
    end
end
# Time complexity: O(n)
# Space complexity: O(n)
def is_palindrome(s)
  if s.length <= 1
    return true
  end

  if s[0] != s[-1]
    return false
  end
  return is_palindrome(s[1...-1])
end

# Time complexity:
# Space complexity:
def digit_match(n, m)
  if (n < 0 || m < 0)
    return 0
  end

  if (n == 0 && m == 0)
    return 1
  else
    result = 0
    if (n % 10 == m % 10)
      result+=1
    end
  end

  if (n / 10 == 0 || m / 10 == 0)
    return result
  end

  return result + digit_match(n / 10, m / 10)
end