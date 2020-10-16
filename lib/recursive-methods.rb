# @PaulineChane on GitHub, Ada C14 CS Fun
# frozen_string_literal: true

# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n) Worst case the function calls itself with every decrease from n to 1 by 1 until n <= 1 for a
#                  total of n calls.
# Space complexity: O(n) The function makes a recursive call n times, resulting in a stack of n recursive calls.
def factorial(n)
  raise ArgumentError, 'Cannot take factorial of number less than 0' if n.negative?

  n <= 1 ? 1 : n * factorial(n - 1)
end

# Time complexity: O(n) The function will not exceed calls longer than the length of the string that it is "chopping"
#                  the last character off of.
# Space complexity: O(n^2) A new recursion call is called, at worst, for every removal of the last character of the string.
#                   However, a new string of n length is created to return for 2n space, while every call of reverse
#                   will take in a new string of max length s.length-1 for approximately 2n*n = 2n^2 space.
def reverse(s)
  s.length <= 1 ? s : s[-1] + reverse(s.chop)
end

# Time complexity: O(n) The function will not exceed calls longer than the length of the string to iterate through
#                       every 2 characters in the string toward the center.
# Space complexity: O(n) A new recursion call is called, at worst, for every "move" towards the center of the string, which in turn doesn't exceed
#                        the number of times it takes to go through every 2 characters in the string. As the search is not
#                        simply pulling (I think) the existing parameter, no additional space need be considered as
#                        the input parameter is being passed down to the deepest level of recursion.

def reverse_inplace(s)
  return s if s.length <= 1

  reverse_inplace_helper(0, s.length - 1, s)
end

def reverse_inplace_helper(lhs, rhs, s)
  if lhs >= rhs
    s
  else
    temp = s[lhs]
    s[lhs] = s[rhs]
    s[rhs] = temp
    reverse_inplace_helper(lhs + 1, rhs - 1, s)
  end
end

# Time complexity: O(n) The function adds 2 for every bunny up to n bunnies for a total of n function calls.
# Space complexity: O(n) A new recursion call is called for every bunny to count ears for, for a total of n recursion calls.
def bunny(n)
  n <= 0 ? 0 : 2 + bunny(n - 1)
end

# Time complexity: O(n) The function will not exceed calls longer than the length of the string to iterate through
#                       every 2 characters in the string toward the center.
# Space complexity: O(n) A new recursion call is called, at worst, for every "move" towards the center of the string, which in turn doesn't exceed
#                        the number of times it takes to go through every 2 characters in the string. As the search is not
#                        changing the array and simply pulling (I think) the existing parameter, no additional
#                        space need be considered.
def nested(s)
  if s.empty?
    true
  elsif s.length == 1
    false
  else
    nested_helper(0, s.length - 1, s)
  end
end

def nested_helper(lhs, rhs, s)
  if lhs == rhs
    false
  elsif lhs > rhs
    true
  else
    !(s[lhs] == '(' && s[rhs] == ')') ? false : nested_helper(lhs + 1, rhs - 1, s)
  end
end

# Time complexity: O(n) The function will not exceed calls longer than the length of the array to iterate through
#                        every element in the array until the query is confirmed to exist or not exist in the array .
# Space complexity: O(n) A new recursion call is called, at worst, for "move" to the next character in the array, which in turn doesn't exceed
#                         the number of times it takes to go through every character in the array. As the search is not
#                         changing the array and simply pulling (I think) the existing parameter, no additional
#                         space need be considered.
def search(_array, _value)
  if _array.empty?
    false
  else
    search_helper(0, _array, _value)
  end
end

def search_helper(i, _array, _value)
  if i == _array.length
    false
  elsif _array[i] == _value
    true
  else
    search_helper(i + 1, _array, _value)
  end
end

# Time complexity: O(n) The function will not exceed calls longer than the length of the string to iterate through
#                       every character in the string.
# Space complexity: O(n) A new recursion call is called, at worst, for every "move" towards the center of the string, which in turn doesn't exceed
#                        the number of times it takes to go through every character in the string. As the search is not
#                        changing the string and simply pulling (I think) the existing parameter, no additional
#                        space need be considered.
def is_palindrome(_s)
  return _s.length <= 1 ? true : is_palindrome_helper(0, _s.length - 1, _s)
end

def is_palindrome_helper(lhs, rhs, s)
  if lhs >= rhs
    return true
  elsif s[lhs] != s[rhs]
    return false
  else
    is_palindrome_helper(lhs + 1, rhs - 1, s)
  end
end

# Time complexity: O(log n) The function repeatedly divides the original inputs by 10 until one or both numbers < 10
#                  at the deepest level of recursion in the worst case, corresponding to log 10.
# Space complexity: O(log n) A recursive call is made every time a division of 10 is made to enter the next level of
#                   recursion. As such the recursion tree should "match" the time complexity as no new space needs to be
#                   allocated outside of the recursion stack.
def digit_match(_n, _m)
  if _n == 0 && _m == 0
    return 1
  elsif _n / 10 != 0 && _m / 10 != 0
    if _n % 10 == _m % 10
      return 1 + digit_match(_n / 10, _m / 10)
    else
      return digit_match(_n / 10, _m / 10)
    end
  else
    return _n % 10 == _m % 10 ? 1 : 0
  end
end

# Time complexity: O(2^n) Every recursive calls will call two more function calls until the base case is
#                         reached. This means for the 2nd fibonacci number, 2 calls are made plus the original
#                         call for (2) + (1) = 3 calls. For the 3rd Fibonacci number, 2 calls made, then 2 calls
#                         per call for (2 * 2) + (2) + (1) = 7 calls total (including original call). For the 4th
#                         Fibonacci number, the orignal call, then 2 calls, then 2 calls per those calls, then 2
#                         more calls per those calls total to (2 * 2 * 2) + (2 * 2) + (2) + (1) = 15.
#                         In general, the nth Fibonacci number will require (2^n) - 1 calls total, shortened to
#                         O(2^n)
# Space complexity: O(n)  The depth of the recursion tree goes as deep as the number of "exponents" to call into,
#                         or n times. In the above example, every parenthetical represents a recursion layer. Note
#                         this is 2 for the 2nd Fibonacci number, 3 for the 3rd, and 4 for the 4th.
def fib(n)
  raise ArgumentError, "n cannot be negative" if n.negative?

  return n < 2 ? n : fib(n - 1) + fib(n - 2)
end