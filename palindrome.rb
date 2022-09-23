# Given a string, write a function that returns true if it is a palindrome, and false if it is not. (A palindrome is a word that reads the same both forward and backward.)

# Input: “racecar”
# Output: true

# Input: “baloney”
# Output: false

def palindrome(string)
  # string == string.reverse ? true : false
  i = 0
  j = string.length - 1
  while i < j
    return false if string[i] != string[j]
    i += 1
    j -= 1
  end

  return true
end

p palindrome("racecar")
p palindrome("baloney")
