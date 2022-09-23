# Given ONE array of strings, return a new array that contains every combination of each string with every other string in the array.

# Input: ["a", "b", "c", "d"]
# Output: ["ab", "ac", "ad", "ba", "bc", "bd", "ca", "cb", "cd", "da", "db", "dc"]

def array_mesh_two(array)
  output = []
  array.each_with_index do |x, i|
    array.each_with_index do |y, j|
      if i != j
        output << x + y
      end
    end
  end
  return output
end

p array_mesh_two(["a", "b", "c", "d"])
