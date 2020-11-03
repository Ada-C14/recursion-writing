# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
  raise ArgumentError, "Please pick positive integer" if n < 0
  return 1 if n == 0
  n * factorial(n - 1)
end

# Time complexity: O(n^2)
# Space complexity: O(n^2)
def reverse(s)
  return s if s.length <= 1
  s[-1] + reverse(s[0...-1])
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse_inplace(s)
  return s if s.length <= 1

  i = -1
  j = s.length

  until i == j
    i += 1
    j -= 1
    temp = s[i]
    s[i] = s[j]
    s[j] = temp
  end
  return s if i == j
  reverse_inplace(s)
end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
  return 0 if n == 0
  2 + bunny(n - 1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def nested(s)
  return false if s.length.odd?
  return true if s == ""

  i = -1
  j = s.length

  s[i] == "(" && s[j] == ")" ? true : false

  until i == j
    i += 1
    j -= 1
    return false if s["i"] == s["j"]
  end


  return nested(s)
end

# Time complexity: O(n)
# Space complexity: O(n)
def search(array, value)
  # c = -1
  # c += 1
  # return false if array.length == c
  # return true if value == array[c]
  #
  # return search(array, value)
end

# Time complexity: O(n
# Space complexity: O(n)
def is_palindrome(s)
  return true if s.length < 2
  i = -1
  j = s.length
  until i == j
    i += 1
    j -= 1
    return false if s[i] != s[j]
  end
  return true if s[i] == s[j]

  return is_palindrome(s)
end

# Time complexity: ?
# Space complexity: ?
def digit_match(n, m)
  raise NotImplementedError, "Method not implemented"
end