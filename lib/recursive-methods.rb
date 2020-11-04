# frozen_string_literal: true

# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)

  return 1 if n <= 1


  n * factorial(n - 1)
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse(s)
  return s if s.length <= 1

  reversed_str = reverse(s[1..-1])
  reversed_str += s[0]
  reversed_str
end

# Time complexity: O(n)
# Space complexity: O(1)
def reverse_inplace(s)

end

# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
    if n == 0
        return 0
    else
         2 * bunny(n-1)
         return
    end

    return answer

end

# Time complexity: ?
# Space complexity: ?
def nested(s)
    # if s == ""
    #     return true
    # elsif s.length % 2 != 0
    #     return false
    # else
    #     return nested(s)
    # end
end

# Time complexity: O(n)
# Space complexity: ?
def search(array, value)
  n = 0
  length = array.length
  while array[n] != value
      n += 1
      search(array, value)
      if n = length
          return false
      end
  end
  return true
end

# Time complexity: O(n^2)
# Space complexity: O(n^2)
def is_palindrome(s)
  if s.length < 2
    true
  elsif s[0] != s[-1]
    false
  else
    is_palindrome(s[1..-2])
  end
end

# Time complexity: ?
# Space complexity: ?
def digit_match(n, m, num_matches = 0)
    # n = n.to_s
    # m = m.to_s
    # if n < 10 || m < 10
    #     return num_matches
    # else
    #     return digit_match(n/10, m/10, num_matches = 0)
    # end
end
