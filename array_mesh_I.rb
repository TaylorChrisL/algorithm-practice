# Given two arrays of strings, return a new string that contains every combination of a string from the first array concatenated with a string from the second array.

# Input: ["a", "b", "c"], ["d", "e", "f", "g"]
# Output: ["ad", "ae", "af", "ag", "bd", "be", "bf", "bg", "cd", "ce", "cf", "cg"]

def array_mesh(array_a, array_b)
  output = []
  array_a.each do |x|
    array_b.each do |y|
      output << x + y
    end
  end
  return output
end

p array_mesh(["a", "b", "c"], ["d", "e", "f", "g"])
