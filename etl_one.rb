# You are given two parameters, an array and a number. Return a hash whose keys are each of the values from the array parameter, and whose values are the number parameter.

# Input:

# First argument: ["a", "e", "i", "o", "u"]
# Second argument: 1

# Output:

# {
# 'a' => 1,
# 'e' => 1,
# 'i' => 1,
# 'o' => 1,
# 'u' => 1
# }

def etl_one(array, num)
  output = {}
  array.each do |el|
    output[el] = num
  end
  return output
end

p etl_one(["a", "e", "i", "o", "u"], 1)
