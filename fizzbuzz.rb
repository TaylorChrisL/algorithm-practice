# Write a function that prints out every number from 1 to N, with the following exceptions:

# If the number is divisible by 3, print out "FIZZ".
# If the number is divisible by 5, print out "BUZZ".
# If the number is divisible by both 3 and 5, print out "FIZZBUZZ".

def fizzbuzz(n)
  1.upto(n) do |i|
    if i % 3 == 0 && i % 5 == 0
      puts "FIZZBUZZ"
    elsif i % 3 == 0
      puts "FIZZ"
    elsif i % 5 == 0
      puts "BUZZ"
    else
      puts i
    end
  end
end

fizzbuzz(100)
