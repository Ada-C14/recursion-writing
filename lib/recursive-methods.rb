# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)
# Space complexity: O(n)
def factorial(n)
  if n < 0
    raise ArgumentError
  elsif n <= 1 
    return 1
  else
    n * factorial(n - 1)
  end
end

# Time complexity: O(n^2)
# Space complexity: O(n^2)

def reverse(s)
  if s.empty? || s.length == 1
    return s
  else
    s[-1] + reverse(s[1..-2]) + s[0]
  end
end

# s = "bear"
# reverse_in_place!(s)
# s == "raeb"
# "bear" => "reab" => "raeb"
# reverse("bear") calls reverse("ea") calls reverse("")
# reverse_in_place("bear")
# calls r_i_p_helper("bear", 0)
# calls r_i_p_helper("reab", 1)
# calls r_i_p_helper("raeb", 2) -> returns "raeb"
# r_i_p_helper("", 0) s.length = 0, idx = 0
# ...("a", 0) s.length = 1, idx = 0
# ...("raeb", 2) s.length = 4, idx = 2
# ...("butter", 0) => ("rutteb", 1) => ("rettub", 2) ("rettub", 3) => return
def reverse_in_place_helper(s, index)
  if index == s.length / 2
    return s
  else
    temp = s[index]
    s[index] = s[s.length - index - 1]
    s[s.length - index - 1] = temp
    reverse_in_place_helper(s, index + 1)
  end
end

# Time complexity: O(n)
# Space complexity: O(n)
def reverse_in_place(s)
  reverse_in_place_helper(s, 0)
end

# Time complexity: ?
# Space complexity: ?
def bunny(n)
  raise NotImplementedError, "Method not implemented"
end

# Time complexity: ?
# Space complexity: ?
def nested(s)
  raise NotImplementedError, "Method not implemented"
end

# Time complexity: ?
# Space complexity: ?
def search(array, value)
  raise NotImplementedError, "Method not implemented"
end

# Time complexity: ?
# Space complexity: ?
def is_palindrome(s)
  raise NotImplementedError, "Method not implemented"
end

# Time complexity: ?
# Space complexity: ?
def digit_match(n, m)
  raise NotImplementedError, "Method not implemented"
end
