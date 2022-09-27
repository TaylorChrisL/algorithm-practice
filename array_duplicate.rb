# A given array has one pair of duplicate values. Return the first duplicate value.

# NOTE: You must accomplish this in O(n) time. This is also known as linear time.

# Input: [5, 2, 9, 7, 2, 6]
# Output: 2

def find_duplicate(array)
  hash = {}
  array.each do |el|
    if hash[el]
      return el
    end
    hash[el] = true
  end
end

p find_duplicate([5, 2, 9, 7, 2, 6])
