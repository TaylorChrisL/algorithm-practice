# Given a string, find the first non-repeating character in it and return its index. If it doesn't exist, return -1.

# NOTE: You must accomplish this in O(n) time. This is also known as linear time.

# Examples:

# s = "leetcode"
# return 0.
# (The "l" is the first character that only appears once in the string, and appears at index 0.)

# s = "loveleetcode",
# return 2.
# (The "l" and "o" are repeated, so the first non-repeating character is the "v", which is at index 2.)

# Note: You may assume the string contain only lowercase letters.

def first_unique_char(string)
  hash = {}
  string.length.times do |i|
    if hash[string[i]]
      hash[string[i]] = 2
    else
      hash[string[i]] = 1
    end
  end
  string.length.times do |i|
    if hash[string[i]] == 1
      return i
    end
  end
  return -1
end

p first_unique_char("leetcode")
p first_unique_char("loveleetcode")
