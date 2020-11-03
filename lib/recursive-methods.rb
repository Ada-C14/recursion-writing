# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n) since n operations will be needed to compute factorial(n)
# Space complexity: O(n) since each recursive call will end up with a stack frame on the call stack, so n in total for factorial(n)
def factorial(n)
    if n < 0
        raise ArgumentError
    elsif n == 0 || n == 1
        return 1
    else
        return n*factorial(n-1)
    end
end

# Time complexity: O(n^2) the slicing method is O(n) itself, within another O(n) method
# Space complexity: O(n^2) the slicing method is O(n) itself, within another O(n) method
def reverse(s)
    if s == nil || s.length == 0
        return ""
    else
        return reverse(s[1..-1]) + s[0]
    end
end

# Time complexity: O(n) the reverse_inplace method without the helper, is O(1),
# the if statement is O(n), and the recursion is O(n), they are not nested, so we are still at O(n)
# Space complexity: O(n) because we have as many stack calls as we have steps
def reverse_inplace_helper(s, start_position, end_position)
    if start_position >= end_position
        return
    end

    temp = s[start_position]
    s[start_position] = s[end_position]
    s[end_position] = temp

    reverse_inplace_helper(s, start_position+1, end_position-1 )
end

def reverse_inplace(s)
    if s == nil || s.length == 0
        return ""
    else
        reverse_inplace_helper(s, 0, s.length - 1)
        return s
    end
end

# Time complexity: O(n) because we will make n iterations in total for bunny(n)
# Space complexity: O(n) because we will make 1 stack call per step, i.e. n in total for bunny(n)
def bunny(n)
    return 2 if n == 1
    return 0 if n == 0
    return 2 + bunny(n-1)
end

# Time complexity: O(n) because there is the actual method has complexity of O(1) without its helper
# and the helper has no nesting, just the recursion which will take place n times
# Space complexity: O(n) same reasoning because for every step, we have one stack call
def nested_helper(s, start_position, end_position, left, right)
    @left = left
    @right = right

    if start_position > end_position
        return @left == @right
    end

    if s[start_position] == '('
        @left += 1
    end

    if s[end_position] == ')'
        @right += 1
    end

    nested_helper(s, start_position+1, end_position-1, @left, @right)
end

def nested(s)
    if s == nil || s.length == 0
        return true
    else
        left = 0
        right = 0
        nested_helper(s, 0, s.length - 1, left, right)
    end
end


# Time complexity: O(n^2) because there is a splitting method within a loop
# Space complexity: O(n^2) because there are as many stack calls as there are steps
def search(array, value)
    i = array.length - 1
    if i < 0
        return false
    elsif array[i] == value
        return true
    else
        array = array[0...i]
        return search(array, value)
    end
end

# Time complexity: O(n^2) because there is a slicing method of O(n) within a loop of O(n)
# Space complexity: O(n^2) because for every step, there is one stack call
def is_palindrome(s)
    if s.length < 2
        return true
    elsif s[0] != s[-1]
        return false
    else
        return is_palindrome(s[1..-2])
    end
end

# Time complexity: O(n^2) because there are parallel slicing methods within a loop
# Space complexity: O(n^2) because there are as many stack calls as there are steps
def digit_match_helper(n,m,count)
    @count = count
    if n.length == 0 || m.length ==0
        return count
    elsif
        n[-1] == m[-1]
        @count +=1
    end

    digit_match_helper(n[0..-2],m[0..-2], @count)
end

def digit_match(n, m)
    count = 0
    digit_match_helper(n.to_s,m.to_s,count)
end



# fibonacci numbers
def fibonacci (a)
    return a if (a == 0 || a == 1)
    return fibonacci(a-1) + fibonacci(a-2)
end
