// Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

// An input string is valid if:

// Open brackets must be closed by the same type of brackets.
// Open brackets must be closed in the correct order.
// Every close bracket has a corresponding open bracket of the same type.

// Example 1:

// Input: s = "()"
// Output: true
// Example 2:

// Input: s = "()[]{}"
// Output: true
// Example 3:

// Input: s = "(]"
// Output: false

// Constraints:

// 1 <= s.length <= 104
// s consists of parentheses only '()[]{}'

//input string
//output boolean

// hash dict
// array to act as stack
// go through each character of the string
// if char == closing parenthesis
// look at dict make sure it matches top of stack
// if it does pop it off stack
// else return false
// array.push(char)
// ensure stack is empty

var isValid = function (s) {
  var hash = {
    ")": "(",
    "}": "{",
    "]": "[",
  };

  var stack = [];

  for (i = 0; i < s.length; i++) {
    if (s[i] === ")" || s[i] === "}" || s[i] === "]") {
      if (hash[s[i]] == stack[stack.length - 1]) {
        stack.pop();
      } else {
        console.log("in");
        return false;
      }
    } else {
      stack.push(s[i]);
    }
  }

  if (stack.length == 0) {
    return true;
  } else {
    return false;
  }
};

console.log(isValid("()"));
