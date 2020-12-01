# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n) because the higher is n, the more stack frames must be placed on the call stack and the longer the function call will last
# Space complexity: O(n) because in recursion, each time the function is called ruby places a stack frame on the call stack
def factorial(n)
    raise ArgumentError if n < 0
    return 1 if n == 0
    return n * factorial(n - 1)
end


# Time complexity: O(n^2). s[1..-1] as well as going through entire string of n length
# Space complexity: O(n^2). s[1..-1] & the stack
#
def reverse(s)
    if s.length <= 1
        return s
    else
        return reverse(s[1..-1]) + s[0]
    end
end

# reverse(hello)
# // reverse(hello) reverse(ello) + h  //olleh
# // reverse(ello)  reverse(llo) + e   //olle
# // reverse(llo)   reverse(lo) + l    //oll
# // reverse(lo)    reverse (o) + l    //ol
# // reverse(o)     returns o          //o


# Time complexity: ?
# Space complexity: ?
# I don't get it
def reverse_inplace(s)
    raise NotImplementedError, "Method not implemented"
end


# Time complexity: O(n)
# Space complexity: O(n)
def bunny(n)
    if n == 0
        return 0
    else
        return 2 + bunny(n-1)
    end
end


# Time complexity: O(n^2): s is of n length to iterate thru & s[1..-2]
# Space complexity: O(n^2): stack & s[1..-2]
def nested(s)
    if s == ""
        return true
    elsif s[0] != "(" || s[-1] != ")"
        return false
    else
        return nested(s[1..-2])
    end
end

# irb(main):001:0> [1,2,3,4][1..-1]
# [2, 3, 4]
# irb(main):002:0> [1,2,3,4][1...-1]
# [2, 3]


# Time complexity: O(n^2) bc of array[1..-1] and looping through the whole array
# Space complexity: O(n^2) array[1..-1] & stack
def search(array, value)
    if array[0] == value # base case? or is array == [] the base case?
        return true
    elsif array == []
        return false
    else
        return search(array[1..-1], value)
    end
end


# Time complexity: O(n)
# Space complexity: O(n)
# I can't figure out how to do this as a proper recursive. Just using my reverse function from #2..
def is_palindrome(s)
    if s.length == 0
        return true
    else
        return reverse(s) == s
    end
end
# non-recursive
# if s.reverse == s
#     return true
# end


# Time complexity: ?
# Space complexity: ?
# Don't get it
def digit_match(n, m)
    raise NotImplementedError, "Method not implemented"
end