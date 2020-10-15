require 'minitest/autorun'
require 'minitest/reporters'
require "minitest/skip_dsl"
require_relative '../lib/recursive-methods'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new


describe "factorial" do
  it "will find the factorial of 0" do
    # Arrange
    num = 0

    # Act
    answer = factorial(num)

    # Assert
    expect(answer).must_equal 1
  end

  it "will find the factorial of 5" do
    # Arrange
    num = 5

    # Act
    answer = factorial(num)

    # Assert
    expect(answer).must_equal 5*4*3*2*1

  end

  it "will raise an ArgumentError if given a number not >= 0" do
    # Arrange
    num = -1

    # Act-Assert
    expect {
      answer = factorial(num)
    }.must_raise ArgumentError
  end
end

describe "reverse" do
  it "will reverse 'cat'" do
    # Arrange
    string = "cat"

    # Act
    answer = reverse(string)

    # Assert
    expect(answer).must_equal "tac"
  end

  it "will reverse 'a'" do
    # Arrange
    string = "a"

    # Act
    answer = reverse(string)

    # Assert
    expect(answer).must_equal "a"
  end

  it "will reverse empty string " do
    # Arrange
    string = ""

    # Act
    answer = reverse(string)

    # Assert
    expect(answer).must_equal ""
  end
  it "will reverse 'apple'" do
    # Arrange
    string = "apple"

    # Act
    answer = reverse(string)

    # Assert
    expect(answer).must_equal "elppa"
  end
end


describe "reverse_in_place" do
  it "will reverse 'cat'" do
    # Arrange
    string = "cat"

    # Act
    reverse_inplace(string)

    # Assert
    expect(string).must_equal "tac"
  end

  it "will reverse 'a'" do
    # Arrange
    string = "a"

    # Act
    reverse_inplace(string)

    # Assert
    expect(string).must_equal "a"
  end

  it "will reverse empty string " do
    # Arrange
    string = ""

    # Act
    reverse_inplace(string)

    # Assert
    expect(string).must_equal ""
  end
  it "will reverse 'apple'" do
    # Arrange
    string = "apple"

    # Act
    reverse_inplace(string)

    # Assert
    expect(string).must_equal "elppa"
  end
end

describe "bunny" do
  it "returns 0 for 0 bunnies" do
    # Arrange
    count = 0

    # Act
    answer = bunny(count)

    # Assert
    expect(answer).must_equal 0
  end

  it "returns 2 for 1 bunny" do
    # Arrange
    count = 1

    # Act
    answer = bunny(count)

    # Assert
    expect(answer).must_equal 2
  end

  it "returns 100 for 50 bunnies" do
    # Arrange
    count = 50

    # Act
    answer = bunny(count)

    # Assert
    expect(answer).must_equal 100
  end
end

describe "nested" do
  it "will return true for empystring" do
    # Arrange
    string = ""

    # Act
    answer = nested(string)

    # Assert
    expect(answer).must_equal true
  end

  it "will return true for a nested series of parens" do
    # Arrange
    string = "((()))"

    # Act
    answer = nested(string)

    # Assert
    expect(answer).must_equal true
  end

  it "will return false for a nested series of parens" do
    # Arrange
    string = "(()))"

    # Act
    answer = nested(string)

    # Assert
    expect(answer).must_equal false
  end

  it "will return false for an even length improperly nested series of parens" do
    # Arrange
    string = "(())))"

    # Act
    answer = nested(string)

    # Assert
    expect(answer).must_equal false
  end
end

describe "search" do
  it "will return false for empty array" do
    # Arrange
    item = "a"
    array = []

    # Act
    answer = search(array, item)

    # Assert
    expect(answer).must_equal false
  end

  it "will return true when looking for something in the array" do
  # Arrange
  item = "a"
  array = ["b", "c", "a"]

  # Act
  answer = search(array, item)

  # Assert
  expect(answer).must_equal true
  end

  it "will return false when looking for something not in the array" do
    # Arrange
    item = "x"
    array = ["b", "c", "a"]
  
    # Act
    answer = search(array, item)
  
    # Assert
    expect(answer).must_equal false
    end

    it "will return true when finding something at the front of the array" do
      # Arrange
      item = "b"
      array = ["b", "c", "a"]
    
      # Act
      answer = search(array, item)
    
      # Assert
      expect(answer).must_equal true
    end      
end

describe "is_palindrome" do
  it "will return true for emptystring" do
    # Arrange
    string = ""

    # Act
    answer = is_palindrome(string)

    # Assert
    expect(answer).must_equal true
  end

  it "will return true for a palindrome" do
    # Arrange
    string = "racecar"

    # Act
    answer = is_palindrome(string)

    # Assert
    expect(answer).must_equal true
  end

  it "will return false for a nonpalindrome" do
    # Arrange
    string = "raecar"

    # Act
    answer = is_palindrome(string)

    # Assert
    expect(answer).must_equal false
  end
end

describe "digit_match" do
  it "returns 4 for 1072503891 and 62530841" do
    # Arrange
    num1 = 1072503891
    num2 = 62530841

    # Act
    answer = digit_match(num1, num2)

    # Assert
    expect(answer).must_equal 4
  end

  it "returns 0 for nonmatching numbers" do
    # Arrange
    num1 = 0
    num2 = 62530841

    # Act
    answer = digit_match(num1, num2)

    # Assert
    expect(answer).must_equal 0
  end

  it "returns 3 for 841 and 62530841" do
    # Arrange
    num1 = 841
    num2 = 62530841

    # Act
    answer = digit_match(num1, num2)

    # Assert
    expect(answer).must_equal 3
  end
  
  it "returns 1 for (0, 0)" do
    # Arrange
    num1 = 0
    num2 = 0

    # Act
    answer = digit_match(num1, num2)

    # Assert
    expect(answer).must_equal 1
  end
  
  it "returns 1 for (10, 20)" do
    # Arrange
    num1 = 10
    num2 = 20

    # Act
    answer = digit_match(num1, num2)

    # Assert
    expect(answer).must_equal 1
  end
end

describe "fib" do

  before do
    @fib_nums = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811, 514229, 832040, 1346269, 2178309, 3524578, 5702887, 9227465, 14930352, 24157817, 39088169, 63245986, 102334155]
  end

  it "returns a 0 for 0" do
    answer = fib(0)
    expect(answer).must_equal 0
  end

  it "returns a 1 for 1" do
    answer = fib(1)
    expect(answer).must_equal 1
  end

  it "returns the correct fibonacci number" do
    num = 8
    answer = fib(num)
    expect(answer).must_equal @fib_nums[num]
  end

  it "raises an error for a negative number" do
    expect { fib(-34) }.must_raise ArgumentError
  end


end