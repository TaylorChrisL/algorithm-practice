// Given an array of strings, return a hash that provides of a count of how many times each string occurs.

// Input: ["Dewey", "Truman", "Dewey", "Dewey", "Truman", "Truman", "Dewey", "Truman", "Truman", "Dewey", "Dewey"]

// Output: {"Dewey" => 6, "Truman" => 5}

// Explanation: "Dewey" occurs 6 times in the array, while "Truman" occurs 5 times.

// input - array of strings
// output - hash of { name => number of votes}

// create a hash to store votes
// loop through the array, look for matches to increase vote count

function countVotes(array) {
  let votes = {};
  array.forEach((vote) => {
    votes[vote] ? votes[vote]++ : (votes[vote] = 1);
  });
  return votes;
}

console.log(
  countVotes(["Dewey", "Truman", "Dewey", "Dewey", "Truman", "Truman", "Dewey", "Truman", "Truman", "Dewey", "Dewey"])
);
