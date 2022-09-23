# Given an array of numbers, write a function that returns a new array whose values are the original array’s value doubled.

# Input: [4, 2, 5, 99, -4]
# Output: [8, 4, 10, 198, -8]

def double(array)
  array.each_with_index do |num, i|
    array[i] = num * 2
  end
  return array
end

p double([4, 2, 5, 99, -4])
