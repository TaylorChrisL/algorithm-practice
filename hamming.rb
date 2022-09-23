# Given two strings of equal length, write a function that returns the number of characters that are different between the two strings.

# Input: "ABCDEFG", "ABCXEOG"
# Output: 2

# Explanation: While the A, B, C, E, and G are in the same place for both strings, they have different characters in the other spaces. Since there are 2 such spaces that are different (the D and F in the first string), we return 2.

# Input: "ABCDEFG", "ABCDEFG",
# Output: 0

def hamming(string_a, string_b)
  output = 0
  string_a.length.times do |i|
    output += 1 if string_a[i] != string_b[i]
  end
  return output
end

p hamming("ABCDEFG", "ABCXEOG")
p hamming("ABCDEFG", "ABCDEFG")
