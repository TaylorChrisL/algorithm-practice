# Given a string, find the most commonly occurring letter.

# Input: “peter piper picked a peck of pickled peppers”
# Output: “p”

def most_frequent(string)
  letter_count = {}
  highest_count = 0
  highest_letter = ""

  (string.length - 1).times do |i|
    if letter_count[string[i]]
      letter_count[string[i]] += 1
    else
      letter_count[string[i]] = 1
    end

    if letter_count[string[i]] > highest_count
      highest_count = letter_count[string[i]]
      highest_letter = string[i]
    end
  end

  return highest_letter
end

p most_frequent("aabbccddeeffggggghhiijjjjkkllllllllmmoo")
p most_frequent("peter piper picked a peck of pickled peppers")
