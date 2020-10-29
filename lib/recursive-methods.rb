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

# Time complexity: O(n^2) because a slice is happening O(n) in each call to reverse() and reverse() is called n times, where n is the length of the string
# Space complexity: O(n^2)
def reverse(s)
  if !s || s.length == 0
    return ""
  else
    return s[-1] + reverse(s[0..-2])
  end
end

# Time complexity: O(n/2) == O(n)
# Space complexity: O(n/2) == O(n)
def reverse_inplace(s)
  return reverse_inplace_helper(s, 0, -1)
end

def reverse_inplace_helper(s, first, last)
  if first >= s.length / 2
    return ""
  else
    s[first], s[last] = s[last], s[first]
    return reverse_inplace_helper(s, first + 1, last - 1)
  end
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

# Time complexity: O(n^2)
# Space complexity: O(n^2)
def nested(s)
  if s == ""
    return true
  elsif s[0] == '(' && s[-1] == ')'
    return nested(s[1..-2])
  else
    return false
  end
end

# Time complexity: O(2n) == O(n)
# Space complexity: O(n)
def search(array, value)
  return search_helper(array, value, 0, -1)
end

def search_helper(array, value, first, last)
  if first >= array.length
    return false
  elsif array[first] == value
    return true
  else
    return search_helper(array, value, first + 1, last - 1)
  end
end

# Time complexity: O(2n) == O(n)
# Space complexity: O(n)
def is_palindrome(s)
  return is_palindrome_helper(s, 0, -1)
end

def is_palindrome_helper(s, first, last)
  if first >= s.length / 2        #Tc: O(n)
    return true
  elsif s[first] != s[last]
    return false
  else
    s[first], s[last] = s[last], s[last]
    return is_palindrome_helper(s, first + 1, last - 1)       # TC: O(n)
  end
end

# Time complexity: O(log n), where n is the length of the shorter string
# Space complexity: O(log n)
def digit_match(n, m)
  if n <= 1 || m <= 1
    n == m ? (return 1) : (return 0)
  elsif n % 10 == m % 10
    return 1 + digit_match(n/10, m/10)
  else
    return digit_match(n/10, m/10)
  end
end

# Time complexity: O(n log n)
# Space complexity: O(n log n)
def fib(n)
  raise ArgumentError, "Cannot obtain a Fibonacci number from a negative input." if n < 0
  if n == 0 || n == 1
    return n
  else
    return fib(n - 1) + fib(n - 2)
  end
end