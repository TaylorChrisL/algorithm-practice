# Given a string, write a function that returns a copy of the original string that has every other character capitalized. (Capitalization should begin with the second character.)

# Input: “hello, how are your porcupines today?”
# Output: “hElLo, HoW ArE YoUr pOrCuPiNeS ToDaY?”

# string - input
# string - output

# split
# downcase odds
# upcase evens

def alternate_capitals(string)
  string_array = string.downcase.split("")
  index = 0
  output = []
  string_array.each do |letter|
    if index == 1
      temp_hold = letter.upcase
    else
      temp_hold = letter
    end
    output << temp_hold
    index += 1
    index = 0 if index == 2
  end
  return output.join
end

p alternate_capitals("hello, how are your porcupines today?")
