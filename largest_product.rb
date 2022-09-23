# Find the largest product of any two numbers within a given array.

# Input: [5, -2, 1, -9, -7, 2, 6]
# Output: 63 (-9 * -7)

def largest_product(array)
  cur_max = array[0] * array[1]
  array.each_with_index do |num, i|
    (i + 1).upto(array.length - 1) do |j|
      cur_max = num * array[j] if num * array[j] > cur_max
    end
  end
  return cur_max
end

p largest_product([5, -2, 1, -9, -7, 2, 6])
