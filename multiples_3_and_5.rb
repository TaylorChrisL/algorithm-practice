# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

def sum_multiples_of_three_and_five(n)
  sum = 0
  1.upto(n) do |i|
    if i % 3 == 0 || i % 5 == 0
      sum += i
    end
  end
  return sum
end

p sum_multiples_of_three_and_five(9)
p sum_multiples_of_three_and_five(999)
