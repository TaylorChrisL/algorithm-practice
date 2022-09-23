# Write a function to find the longest common prefix string amongst an array of strings.

# If there is no common prefix, return an empty string "".

# Example 1:

# Input: ["flower","flow","flight"]
# Output: "fl"
# Example 2:

# Input: ["dog","racecar","car"]
# Output: ""
# Explanation: There is no common prefix among the input strings.
# Note:

# All given inputs are in lowercase letters a-z.

def longest_common_prefix(array)
  curr = array[0]
  array.each do |word|
    temp = []
    word.length.times do |i|
      if curr[i] == word[i]
        temp << word[i]
      else
        break
      end
    end
    curr = temp.join
  end
  return curr
end

p longest_common_prefix(["flower", "flow", "flight"])
p longest_common_prefix(["dog", "racecar", "car"])
