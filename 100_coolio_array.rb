# Given an array of numbers, return true if the array is a "100 Coolio Array", or false if it is not.

# A "100 Coolio Array" meets the following criteria:

# Its first and last numbers add up to 100,
# Its second and second-to-last numbers add up to 100,
# Its third and third-to-last numbers add up to 100,
# and so on and so forth.

# Here are examples of 100 Coolio Arrays:

# [1, 2, 3, 97, 98, 99]
# [90, 20, 70, 100, 30, 80, 10]

def one_hundred_coolio_array(nums)
  i = 0
  j = nums.length - 1
  while i < j
    if nums[i] + nums[j] != 100
      return false
    end
    i += 1
    j -= 1
  end
  return true
end

p one_hundred_coolio_array([1, 2, 3, 97, 98, 99])
p one_hundred_coolio_array([1, 2, 4, 97, 98, 99])
