# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n), it runs n times and depends on how big n is.
# Space complexity: O(n), call stack temporarily stores information about the running program, which depends on how big n is, until the method reaches the base case. 
def factorial(n)
  raise ArgumentError.new("#{n} should be larger than 0") if n < 0
  if n == 0
    return 1
  else
    return n * factorial(n-1)
  end
  # raise NotImplementedError, "Method not implemented"
end

# Time complexity: O(n), it runs n/2 times which depends on the length of the string
# Space complexity: O(n), call stack temporarily saves the return values s[-1] and s[0] until the method reaches the base case. So the space complexity is O(n) which depends on the length of the String.
def reverse(s)
  if s.length < 2
    return s
  else
    return s[-1] + reverse(s[1...-1]) + s[0]
  end
  # raise NotImplementedError, "Method not implemented"
end

# Time complexity: O(n), it runs n/2 times which depends on the length of the string
# Space complexity: O(n), call stack temporarily saves the return values s[1...-1] until the method reaches the base case. So the space complexity is O(n) which depends on the length of the String.
def reverse_inplace(s)
  if s.length < 2
    return s
  else
    s[0], s[-1] = s[-1], s[0]
    s[1...-1] = reverse_inplace(s[1...-1]) 
  end
  return s
  # raise NotImplementedError, "Method not implemented"
end

# Time complexity: O(n), it runs n times and depends on how big n is.
# Space complexity: O(n), call stack temporarily stores information about the running program, which depends on how big n is, until the method reaches the base case. 
def bunny(n)
  if n == 0
    return 0
  else
    return 2 + bunny(n-1)
  end  
  # raise NotImplementedError, "Method not implemented"
end

# Time complexity: O(n), it runs n/2 times which depends on the length of the string.
# Space complexity: O(1)/O(n), it's a tail recursion and no extra info is saved in call stack before it reaches to the base case if it's optimized. Otherwise, because it runs n/2 times, call stack would temporarily saves the return values. It would be O(n).
def nested(s)
  if s.length == 0
    return true
  elsif s[0] == "(" && s[-1] == ")"
    return nested(s[1...-1])
  else
    return false
  end 
  # raise NotImplementedError, "Method not implemented"
end

# Time complexity: O(n), it goes thru the whole array to find whether the value is in the array or not. So it depends on the length of array.
# Space complexity: O(1)/O(n), it's a tail recursion and no extra info is saved in call stack before it reaches to the base case if it's optimized. Otherwise, because it runs thru the whole array, call stack would temporarily saves the return values. It would be O(n).
def search(array, value)
  if value == array[0]
    return true
  elsif array.length == 0
    return false
  else
    return search(array[1..-1], value)
  end
  # raise NotImplementedError, "Method not implemented"
end

# Time complexity: O(n), it runs n/2 times which depends on the length of the string to check whether it is palindrome. So it depends on the length of string.
# Space complexity: O(1)/O(n), it's a tail recursion and no extra info is saved in call stack before it reaches to the base case if it's optimized. Otherwise, because it runs thru the whole string, call stack would temporarily saves the return values. It would be O(n).
def is_palindrome(s)
  if s.length == 0
    return true
  elsif s[0].downcase == s[-1].downcase
    return is_palindrome(s[1...-1])
  else
    return false
  end
  # raise NotImplementedError, "Method not implemented"
end

# Time complexity: O(n), it goes thru the length of the larger number to check the pair of digits. So it depends on the length of the larger number.
# Space complexity: O(n), call stack temporarily saves the return values 0 or 1 until the method reaches the base case. So the space complexity is O(n) which depends on the length of the larger number.
def digit_match(n, m)
  if n.to_s.length == 0 || m.to_s.length == 0
    return 0
  elsif n.to_s[-1] == m.to_s[-1]
    return 1 + digit_match(n.to_s[0...-1], m.to_s[0...-1])
  else
    return 0 + digit_match(n.to_s[0...-1], m.to_s[0...-1])
  end  
  # raise NotImplementedError, "Method not implemented"
end


# optional - fibonacci number
# Time complexity: O(n), it runs n times to find the fibonacci number, so it depends on how big n is.
# Space complexity: O(n), call stack temporarily saves the return values fib(n-1) and fib(n-2) until the method reaches the base case. So the space complexity is O(n) which depends on how big n is.
def fib(n)
  raise ArgumentError.new("#{n} should be a whole number") if n < 0
  if n == 0
    return 0
  elsif n == 1
    return 1
  else
    return fib(n-1) + fib(n-2)
  end
  # raise NotImplementedError, "Method not implemented"
end