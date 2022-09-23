// # Given an array of numbers, write a function that returns a new array that contains all numbers from the original array that are less than 100.

// # Input: [99, 101, 88, 4, 2000, 50]
// # Output: [99, 88, 4, 50]

function lessThan100(array) {
  array.forEach((num, i) => {
    if (num >= 100) {
      array.splice(i, 1);
    }
  });

  return array;
}

console.log(lessThan100([99, 101, 88, 4, 2000, 50]));
