# A given string contains all the letters from the alphabet except for one. Return the missing letter.

# NOTE: You must accomplish this in O(n) time. This is also known as linear time.

# Input: “The quick brown box jumps over a lazy dog”
# Output: “f”

def missing_letter(string)
  letter_dict = {
    "a" => false,
    "b" => false,
    "c" => false,
    "d" => false,
    "e" => false,
    "f" => false,
    "g" => false,
    "h" => false,
    "i" => false,
    "j" => false,
    "k" => false,
    "l" => false,
    "m" => false,
    "n" => false,
    "o" => false,
    "p" => false,
    "q" => false,
    "r" => false,
    "s" => false,
    "t" => false,
    "u" => false,
    "v" => false,
    "w" => false,
    "x" => false,
    "y" => false,
    "z" => false,
  }

  string.length.times do |i|
    letter_dict[string[i]] = true
  end
  letter_dict.each do |k, v|
    if !v
      return k
    end
  end
end

p missing_letter("The quick brown box jumps over a lazy dog")
