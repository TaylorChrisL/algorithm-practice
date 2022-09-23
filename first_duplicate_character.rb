# Given a string, write a function that returns the first occurence of two duplicate characters in a row, and return the duplicated character.

# Input: “abcdefghhijkkloooop”
# Output: “h”

def first_duplicate_character(string)
  hash = {}
  string.split("").each do |letter|
    if hash.has_key?(letter)
      return letter
    end
    hash[letter] = true
  end
end

p first_duplicate_character("abcdefghhijkkloooop")
