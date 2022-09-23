# Write a function that returns whether a given number is a prime number.

def is_prime?(num)
  index = 2
  while index < num
    if num % index == 0
      return false
    end
    index += 1
  end
  return true
end

p is_prime?(11)
