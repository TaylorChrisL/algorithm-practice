// Given an array of numbers, return a new array containing just two numbers (from the original array) that add up to the number 10. If there are no two numbers that add up to 10, return false.

// Specifically use nested loops to solve this exercise even though there are other approaches as well.

// Input: [2, 5, 3, 1, 0, 7, 11]
//         ^
//                 ^
// Output: [3, 7]

// Input: [1, 2, 3, 4, 5]
// Output: false (While 1, 2, 3, and 4 altogether add up to 10, we're seeking just one pair of numbers.)

// input array of numbers
// output array of 2 numbers || false

// index one = 0
//while index one < numbers length
//index two = index one + 1
//while index two < numbers length

// if numbers[index one] + numbers[index two] = 10   return those numbers as an array

function two_sum(numbers) {
  for (i = 0; i < numbers.length; i++) {
    for (j = i + 1; j < numbers.length; j++) {
      if (numbers[i] + numbers[j] === 10) {
        return [numbers[i], numbers[j]];
      }
    }
  }
  return false;
}

console.log(two_sum([2, 5, 3, 1, 0, 11]));
