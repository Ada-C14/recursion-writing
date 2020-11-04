# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
  raise ArgumentError, "n cannot be negative" if n < 0
  return 1 if n == 0
  return n * factorial(n - 1)
end

# Time complexity: O(n^2)
# Space complexity: O(n^2)
def reverse(s)
  return s if s.length <= 1
  return s[-1] + reverse(s[1..-2]) + s[0]
end

# Time complexity: O(n)
# Space complexity: O(n)?
def reverse_inplace(s, first = 0, last = s.length - 1)
  return s if first >= last

  temp = s[first]
  s[first] = s[last]
  s[last] = temp
  return reverse_inplace(s, first + 1, last - 1)
end


# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
  return 0 if n == 0
  return 2 if n == 1
  return bunny(1) + bunny(n-1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def nested(s, first = 0, last = s.length-1)
  return true if s.empty? || first > last
  #return false if s.length % 2 != 0

  if s[first] != s[last]
    return nested(s, first + 1, last - 1)
  else
    return false
  end
end

# Time complexity: O(n)
# Space complexity: O(n)
def search(array, value, index = 0)
  return true if array[index] == value
  return false if array[index] == nil
  return search(array, value, index + 1)

end

# Time complexity: O(n)
# Space complexity: O(n)
def is_palindrome(s, first = 0, last = s.length - 1)
  return true if s.empty? || first >= last
  return false if s[first] != s[last]
  return is_palindrome(s, first + 1, last - 1)
end

# Time complexity: O(log(n))
# Space complexity: O(log(n))
def digit_match(n, m)
  if n < 10 || m < 10
    return n % 10 == m % 10 ? 1 : 0
  end

  return digit_match(n % 10, m % 10) + digit_match( n / 10, m / 10)
end

# Time complexity: O(2^n) / exponential - i had to looked this up
# Space Complexity: O(n)
def fib(n)
  raise ArgumentError, "n cannot be negative" if n < 0
  return n if n == 0 || n == 1
  return fib(n - 1) + fib(n - 2)
end