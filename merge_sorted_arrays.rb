# Given two sorted arrays, merge the second array into the first array while ensuring that the first array remains sorted. Do not use any built-in sort methods.

# Input :
# A : [1, 5, 8]
# B : [6, 9]

# Modified A : [1, 5, 6, 8, 9]

def merge_sorted_arrays(array_a, array_b)
  i = 0
  j = 0
  while i < array_a.length
    if array_a[i] > array_b[j]
      array_a.insert(i, array_b[j])
      j += 1
      i += 1
    else
      i += 1
    end
  end
  while j < array_b.length
    array_a << array_b[j]
    j += 1
  end

  return array_a
end

p merge_sorted_arrays([1, 5, 8], [6, 9])
