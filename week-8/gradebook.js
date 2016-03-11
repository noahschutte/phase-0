/*
Gradebook from Names and Scores

I worked on this challenge [by myself, with:]
This challenge took me [#] hours.

You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).

Do not alter the students and scores code.

*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]

// __________________________________________
// Write your code below.

// var gradebook = {
//   Joseph: {
//     testScores: scores[0]
//   },
//   Susan: {
//     testScores: scores[1]
//   },
//   William: {
//     testScores: scores[2]
//   },
//   Elizabeth: {
//     testScores: scores[3]
//   }
// };

// gradebook.addScore = function(name, score) {
//   gradebook[name].testScores.push(score);
// };

// gradebook.getAverage = function(name) {
//   return average(gradebook[name].testScores)
// };

// var average = function(testScores) {
//   var sum = 0;
//   for (var i = 0; i < testScores.length; i++) {
//     sum += testScores[i];
//   };
//   return sum / testScores.length;
// };


// __________________________________________
// Refactored Solution

// gradebook contains student names and scores
var gradebook = {
  Joseph: {
    testScores: scores[0]
  },
  Susan: {
    testScores: scores[1]
  },
  William: {
    testScores: scores[2]
  },
  Elizabeth: {
    testScores: scores[3]
  }
};

// adds a new index in the student's grade book
gradebook.addScore = function(name, score) {
  gradebook[name].testScores.push(score);
};

// calls the average function to return the average of the student's current scores
gradebook.getAverage = function(name) {
  return average(gradebook[name].testScores)         
};

// sums the scores in the gradebook and divides by the number of scores
var average = function(testScores) {
  var sum = 0;
  for (var i = 0; i < testScores.length; i++) {
    sum += testScores[i];
  };
  return sum / testScores.length;
};

// __________________________________________
// Reflect

// What did you learn about iterating over nested objects in JavaScript?

// The

// Were you able to find useful methods to help you with this?

// The

// What concepts were solidified in the process of working through this challenge?

// The

// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)