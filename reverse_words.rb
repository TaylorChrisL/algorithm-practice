# Given a string of words, write a function that returns a new string that contains the words in reverse order.

# Input: “popcorn is so cool isn’t it yeah i thought so”
# Output: “so thought i yeah it isn’t cool so is popcorn”

def reverse_words(string)
  i = 0
  j = string.length - 1
  while i < j
    temp = string[i]
    string[i] = string[j]
    string[j] = temp
    i += 1
    j -= 1
  end

  i = 0
  j = 0
  while i < string.length
    while string[j] != " " && j < string.length
      j += 1
    end
    hold_index = j
    j -= 1
    while i < j
      temp = string[i]
      string[i] = string[j]
      string[j] = temp
      i += 1
      j -= 1
    end
    i = hold_index + 1
    j = hold_index + 1
  end
  return string
end

p reverse_words("popcorn is so cool isn't it yeah i thought so")
