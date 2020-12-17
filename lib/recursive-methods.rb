# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n) - n recursive calls ont he stack
# Space complexity: O(n) - n recursive calls on the stack
def factorial(n)
  raise ArgumentError if n < 0
  return 1 if n == 0
  return n * factorial(n-1)
end

# Time complexity: O(n^2) - n recursive calls, and slicing the string in each call takes n time/space
# Space complexity: O(n^2)
def reverse(s)
    if s.length <= 1
        return s
    end

    return s[-1] + reverse(s[1..-2]) + s[0]
end

# Time complexity: O(n^2) - because n recursive calls, inside which we are slicing smaller...
# Space complexity: O(n)??? because it is just saving over the same variable?

def reverse_inplace(s)
  return s if s.length <= 1

  s.replace(s[-1] + reverse_inplace(s[1..-2]) + s[0])
end

# Time complexity: O(n) - n recursive calls
# Space complexity: O(n) - n recursive calls, all else constant
def bunny(n)
  return 0 if n == 0
  return 2 if n == 1

  return bunny(n - 1) + 2
end

# Time complexity: O(n) - really n/2 recursive calls, and the string returned is smaller each time until it returns false or returns true at the middle of the string length
# Space complexity: O(n)? n/2 recursive calls, also slicing the string each time...
def nested(s)
    if s == "" #this also works: s.length == 0
      return true
    elsif s[0] == "(" && s[-1] == ")"
      return nested(s[1..-2])
    else
      return false
    end
end

# Time complexity: O(n) - call stack is length n, but rest of the code is constant
# Space complexity: O(n)??? the call stacK?  but also array.drop(1), is basically returning the array each time (albeit smaller -1) so maybe this is O(n^2) for space?
def search(array, value)
  return false if array.empty?

  if array[0] == value
    return true
  end

  #return search(array[1..-1], value) #another way to do it:
  return search(array.drop(1), value)
end
# note to self: #pop drops the last element and returns the element, shift will remove and return the first element, drop drops the first n elements (starting at 1) and returns the rest of the elements in the array (array.drop(3) drops the first 3 elements)


# Time complexity: O(n^2) - n number of recursive calls, and each call is a slice of the string... so O(n^2)
# Space complexity: O(n^2) - same as above
def is_palindrome(s)
  if s == "" #this also works: s.length == 0
    return true
  elsif s[0] == s[-1]
    return is_palindrome(s[1..-2])
  else
    return false
  end
end

# Time complexity: assuming d = smallest of the num of digits -  O(d) linear
# Space complexity: O(d) - adding on the call stack d times, but everything else is constant
def digit_match(n, m)
  return 1 if n == 0 && m == 0 # edge case when start value is both are 0

  if n % 10 == m % 10
    return 1 if n / 10 == 0 || m / 10 ==0 #base case for example when n = 5, m = 5
    return 1 + digit_match(n / 10, m / 10)
  else
    return 0 if n / 10 == 0 || m / 10 ==0 #base case for example when n = 3, m = 5
    return digit_match(n / 10, m / 10)
  end
end

#how many recursive calls?  d recursive calls
# how big are the inputs for ea recursive call?  d-1
# how much work does ea call take?  constant (nothing in the rest of the function has to do with the size of n or m) (if the work was linear, then)