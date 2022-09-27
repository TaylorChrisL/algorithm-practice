# Given two arrays, determine whether one is a subset of the other. It is considered a subset if all the values in one array are contained within the other.

# NOTE: You must accomplish this in O(n) time. This is also known as linear time.

# Input: [1, 2, 3, 4, 5, 6], [6, 3, 2]
# Output: true

# Input: [1, 2, 3, 4, 5, 6], [6, 3, 7]
# Output: false

def array_subset(array_a, array_b)
  hash = {}
  output = []
  array_a.each do |a|
    hash[a] = true
  end
  array_b.each do |b|
    if !hash[b]
      return false
    end
  end
  return true
end

p array_subset([1, 2, 3, 4, 5, 6], [6, 3, 2])
p array_subset([1, 2, 3, 4, 5, 6], [6, 3, 7])
