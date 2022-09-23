# Write a function that returns the greatest value from an array of numbers.

# Input: [5, 17, -4, 20, 12]
# Output: 20

def max(array)
  c_max = array[0]
  array.each do |num|
    c_max = num if num > c_max
  end
  return c_max
end

p max([5, 17, -4, 20, 12])
