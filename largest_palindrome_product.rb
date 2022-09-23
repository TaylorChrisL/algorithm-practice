# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

def palindrome(string)
  string == string.reverse ? true : false
end

# Start largest to smallest
x = 999
max_x = 1
max_y = 1
highest_palindrome = 0
while x > 100
  # start y at x to prevent checking same combinations twice
  y = x
  while y > 100
    if palindrome((x * y).to_s)
      # check to see if palindrome is biggest, once palindrome found no combination of x * smaller y will be larger than x * y
      if (x * y) > highest_palindrome
        highest_palindrome = x * y
        max_x = x
        max_y = y
      end
      y = 100
    end
    y -= 1
  end
  x -= 1
end
p "#{highest_palindrome} = #{max_x} x #{max_y}"
