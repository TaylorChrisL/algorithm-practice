def decompress_string(string)
  output = ""
  i = 0
  while i < string.length
    string_holder = ""
    times_holder = ""
    while ("0".."9").to_a.include?(string[i])
      times_holder += string[i]
      i += 1
    end
    if string[i] == "["
      i += 1
    end
    while ("a".."z").to_a.include?(string[i])
      string_holder += string[i]
      i += 1
    end
    if times_holder != ""
      output += (string_holder * times_holder.to_i)
      i += 1
    else
      output += string_holder
    end
  end
  return output
end

p decompress_string("a10[bc]")
