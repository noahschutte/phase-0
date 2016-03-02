// Separate Numbers with Commas in JavaScript **Pairing Challenge**

// I worked on this challenge with: Andrew Crowley.

// Pseudocode

// 1. Convert integer to array of strings
// 2. Reverse array
// 3. for i = 0, i < array.length, i ++
// 4. fourth index will be a ","
// 5. reverse, join, and return

// Initial Solution

// function separateComma(number) {
//   var number = number.toString().split("").reverse();
//   var result = [];
//   var i = 0
//   while ( i < number.length ) {
//     result.push(number[i]);
//     result.push(number[i+1]);
//     result.push(number[i+2]);
//     if (i - number.length > -4) { 
//       break; 
//     };
//     result.push(",");
//     i = i + 3;
//   }
//   console.log(result.reverse().join(""));
// };

// Refactored Solution

function separateComma(number) {
  var number = number.toString().split("").reverse();
  var result = [];
  for (var i = 0; i < number.length; i++) {
    if (i % 3 === 0 && i != 0) {
      result.push(",");
    }
    result.push(number[i]);
  }
  console.log(result.reverse().join(""));
}

separateComma(1234567890123)
separateComma(123456789012)
separateComma(12345678901)
separateComma(1234567890)
separateComma(123456789)

// Your Own Tests (OPTIONAL)

// Reflection

// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

// I felt more limited with the scope of methods that I was familiar with in JavaScript. After reading about JS, I learned that JS has generally less methods, which made me concerned it would be more difficult to accomplish a similar task. After determining a strategy and completing the psuedocode, our method was very similar to the method I used in Ruby. 

// What did you learn about iterating over arrays in JavaScript?

// I was not able to get a for loop to work. The sandbox would not take my loop, due to syntax. Instead I used a while loop, which is more suitable in Ruby anyway. 

// What was different about solving this problem in JavaScript?

// We had to use a push method instead of a simple addition to a string that I could use in Ruby. 

// What built-in methods did you find to incorporate in your refactored solution?

// toString, split, reverse, length, join, and push. 