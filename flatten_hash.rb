# Given a hash, return a flat array containing all the hash’s keys and values.

# Input: {“a” => 1, “b” => 2, “c” => 3, “d” => 4}
# Output: [“a”, 1, “b”, 2, “c”, 3, “d”, 4]

def flatten_hash(hash)
  output = []
  hash.each do |k, v|
    output << k
    output << v
  end
  return output
end

p flatten_hash({ "a" => 1, "b" => 2, "c" => 3, "d" => 4 })
