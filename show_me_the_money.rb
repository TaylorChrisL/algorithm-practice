# Given a string, write a function that returns true if the “$” character is contained within the string or false if it is not.

# Input: “i hate $ but i love money i know i know im crazy”
# Output: true

# Input: “abcdefghijklmnopqrstuvwxyz”
# Output: false

def show_me_the_money(string)
  string.split("").each do |letter|
    return true if letter == "$"
  end
  return false
end

p show_me_the_money("abcdefghijklmnopqrstuvwxyz")
p show_me_the_money("abcdefghijklmno$pqrstuvwxyz")
