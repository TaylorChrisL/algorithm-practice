# Given two arrays, return a new array that contains the intersection of the two arrays. The intersection means the values that are contained in both of the arrays. Do not use the "&", or any built-in intersection methods.

# NOTE: You must accomplish this in O(n) time. This is also known as linear time.

# Input: [1, 2, 3, 4, 5], [1, 3, 5, 7, 9]
# Output: [1, 3, 5]

def array_intersection(array_a, array_b)
  hash = {}
  output = []
  array_a.each do |a|
    if hash[a]
      hash[a][0] += 1
    else
      hash[a] = [1, 0]
    end
  end
  array_b.each do |b|
    if hash[b]
      hash[b][1] += 1
    end
  end
  hash.each do |k, v|
    if v[0] <= v[1]
      v[0].times do
        output << k
      end
    else
      v[1].times do
        output << k
      end
    end
  end
  return output
end

p array_intersection([1, 2, 3, 4, 5], [1, 3, 5, 7, 9])
p array_intersection([1, 2, 3, 3, 4, 5], [1, 3, 3, 5, 7, 9])
