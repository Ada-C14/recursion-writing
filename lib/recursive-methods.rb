# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n), it runs n times and depends on how big n is.
# Space complexity: O(n), call stack temporarily stores information about the running program until the method reaches the base case.
#                        Since it runs based on how big n is, space complexity is O(n).
def factorial(n)
  raise ArgumentError.new("#{n} should be larger than 0") if n < 0
  return 1 if n == 0 
  return n * factorial(n-1)
end

# Time complexity: O(n), it runs n/2 times depends on the length of the string, so it's O(n).
# Space complexity: O(n), call stack temporarily saves the return values s[last] and s[start] until the method reaches the base case. 
#                        Since it runs n/2 times, the space complexity is O(n/2) * O(2) = O(n).
def reverse(s)
  return reverse_helper(s, 0, -1)
end

def reverse_helper(s, start, last)
  return s[start..last] if start >= (s.length / 2)
  return s[last] + reverse_helper(s, start + 1, last - 1) + s[start]
end

# Time complexity: O(n), it runs n/2 times which depends on the length of the string, so it's O(n).
# Space complexity: O(n), call stack would temporarily saves the return values for reverse_inplace_helper(s, 0, -1). 
#                        Since it runs n/2 times, the space complexity is O(n/2) --> O(n).
def reverse_inplace(s)
  reverse_inplace_helper(s, 0, -1)
  return s
end

def reverse_inplace_helper(s, start, last)
  return s[start..last] if start >= (s.length / 2)
  s[start], s[last] = s[last], s[start]
  return reverse_inplace_helper(s, start + 1, last - 1)
end

# Time complexity: O(n), it runs n times and depends on how big n is.
# Space complexity: O(n), call stack temporarily stores information about the running program until the method reaches the base case.
#                        Since it runs based on how big n is, space complexity is O(n).
def bunny(n)
  return 0 if n == 0  
  return 2 + bunny(n-1)
end

# Time complexity: O(n), it runs n/2 times which depends on the length of the string, So it's O(n).
# Space complexity: O(1)/O(n), it's a tail recursion and no extra info is saved in call stack before it reaches to the base case if it's optimized. 
#                              Otherwise, because it runs n/2 times, call stack would temporarily saves the return values. 
#                              The space complexity is O(n/2) --> O(n).
def nested(s)
  return nested_helper(s, 0, -1)
end

def nested_helper(s, start, last)
  return true if start >= (s.length / 2) && s.length % 2 == 0
  return false if s[start] != "(" || s[last] != ")"
  return nested_helper(s, start + 1, last - 1)
end

# Time complexity: O(n), it goes thru the whole array to find whether the value is in the array or not. 
#                          Since it runs n times, time complexity is O(n).
# Space complexity: O(1)/O(n), it's a tail recursion and no extra info is saved in call stack before it reaches to the base case if it's optimized. 
#                              Otherwise, because it runs thru the whole array, call stack would temporarily saves the return values.
#                              The space complexity is O(n).
def search(array, value)
  return search_helper(array, value, 0)
end

def search_helper(array, value, start)
  return true if value == array[start]
  return false if start == array.length
  return search_helper(array, value, start + 1)
end

# Time complexity: O(n), it runs n/2 times which depends on the length of the string. So it's O(n).
# Space complexity: O(1)/O(n), it's a tail recursion and no extra info is saved in call stack before it reaches to the base case if it's optimized. 
#                              Otherwise, because it runs thru the whole string, call stack would temporarily saves the return values. 
#                              So the space complexity is O(n).
def is_palindrome(s)
  return is_palindrome_helper(s, 0, -1)
end

def is_palindrome_helper(s, start, last)
  return true if start >= (s.length / 2)
  return false if s[start].downcase != s[last].downcase
  return is_palindrome_helper(s, start + 1, last - 1)
end

# Time complexity: O(n), it goes thru the length of the larger number to check the pair of digits. 
#                        Since it depends on the length of the larger number, the time complexity is O(n).
# Space complexity: O(n), call stack temporarily saves the return values 0 or 1 until the method reaches the base case.  
#                        Since it depends on the length of the larger number, the space complexity is O(n).
def digit_match(n, m)
  return 1 if n == 0 && m == 0
  return digit_match_helper(n, m, 10, -1)
end

def digit_match_helper(n, m, divisor, remainder_index)
  return 0 if divisor > 10 * n || divisor > 10 * m
  return 1 + digit_match_helper(n, m, divisor * 10, remainder_index - 1) if (n % divisor).to_s[remainder_index] == (m % divisor).to_s[remainder_index]
  return 0 + digit_match_helper(n, m, divisor * 10, remainder_index - 1)
end


# optional - fibonacci number
# Time complexity: O(n), it runs n times to find the fibonacci number. Because it depends on how big n is, time complexity is O(n).
# Space complexity: O(n), call stack temporarily saves the return values fib(n-1) and fib(n-2) until the method reaches the base case.
#                         So the space complexity is O(n) which depends on how big n is.
def fib(n)
  raise ArgumentError.new("#{n} should be a whole number") if n < 0
  return n if n < 2 
  return fib(n-1) + fib(n-2)
end