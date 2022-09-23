# Given an array of numbers, write a function that returns a new array that contains all numbers from the original array that are less than 100.

# Input: [99, 101, 88, 4, 2000, 50]
# Output: [99, 88, 4, 50]

def less_than100(array)
  array.each_with_index do |num, i|
    if num >= 100
      array.slice!(i, 1)
    end
  end

  return array
end

p less_than100([99, 101, 88, 4, 2000, 50])
