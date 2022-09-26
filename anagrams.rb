# Given two strings, return true if they are anagrams of each other, and false if they are not. An anagram is a word, phrase, or name formed by rearranging the letters of another, such as cinema, formed from iceman.

# Do not use any built-in sort methods.

# Input: “silent”, “listen”
# Output: true

# Input: “frog”, “bear”
# Output: false

def anagrams(string_a, string_b)
  return false if string_a.size != string_b.size

  letter_counter = {}

  string_a.length.times do |letter|
    if letter_counter[string_a[letter]]
      letter_counter[string_a[letter]] += 1
    else
      letter_counter[string_a[letter]] = 1
    end
  end

  string_b.length.times do |letter|
    if letter_counter[string_b[letter]]
      letter_counter[string_b[letter]] -= 1
    else
      return false
    end
    return false if letter_counter[string_b[letter]] < 0
  end

  return true
end

p anagrams("silent", "listen")
p anagrams("cinema", "iceman")
p anagrams("frog", "bear")
