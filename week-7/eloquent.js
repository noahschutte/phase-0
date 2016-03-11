// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var age = 27;

age = 28;

console.log(age);

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

var fizzBuzz = function() {
	for (var i = 1; i <= 20; i++)
		if (i % 15 === 0)
			console.log("FizzBuzz");
		else if (i % 5 === 0)
			console.log("Buzz");
		else if (i % 3 === 0)
			console.log("Fizz");
		else 
			console.log(i);
}

fizzBuzz()

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
	name: "Noah",
	age: 27,
	fav_foods: {sandwich: "club", smoothie: "mango", hot_drink: "coffee"},
	quirk: "Makes funny faces for pictures."
};

console.log(me)

// Introduction
// Did you learn anything new about JavaScript or programming in general?

// I really enjoyed the landscape of communicating with computers that Haverbeke painted for the reader. It's interesting to think of programming as a tool for humans to automate simple tasks that would normally take a long amount of time to complete. 

// Are there any concepts you feel uncomfortable with?

// Not from the introduction.

// Ch. 1: Values, Types, and Operators 
// Identify two similarities and two differences between JavaScript and Ruby syntax with regard to numbers, arithmetic, strings, booleans, and various operators.

// Ruby and JS can both be used to manipulate numbers the way a calculator will use common operators such as addition and multiplication. I noticed that JS uses "==" differently. It uses type conversion. So you may need to be careful when using "==". Otherwise, "===" can be used in JS for a direct comparison of values. 

// Ch. 2: Program Structure
// What is an expression?

// An expression is a fragment of code that produces a value.

// What is the purpose of semicolons in JavaScript? Are they always required?

// A semicolon is not always required, but without a more nuanced understanding of them, I will continue to use a semicolon after every expression. 

// What causes a variable to return undefined?

// When you define a variable without giving it a value. 

// Write your own variable and do something to it in the eloquent.js file.

var one = 1;
one + one;

// What does console.log do and when would you use it? What Ruby method(s) is this similar to?

// console.log prints something to the console. It is similar to: p, puts, or print in Ruby.

// Write a short program that asks for a user to input their favorite food. After they hit return, have the program respond with "Hey! That's my favorite too!" (You will probably need to run this in the Chrome console rather than node since node does not support prompt or alert). Paste your program into the eloquent.js file.

// console.log("What is your favorite food?")
prompt("What is your favorite food?");
console.log("Hey! That's my favorite food too!")

// Describe while and for loops

// While loops will continue to run as long as a set condition is met. For loops define the constraints of the condition that allow the function to continue to run.

// What other similarities or differences between Ruby and JavaScript did you notice in this section?

// Defining a variable requires the use of "var".

// Complete at least one of the exercises (Looping a Triangle, FizzBuzz, of Chess Board) in the eloquent.js file.

// Programmers prefer camelCase over the use of underscores. 

// Ch. 3: Functions (Skip the sections on closure and recursion)

// What are the differences between local and global variables in JavaScript?

// Local variables are defined within a function. Global variables are defined outside of a function.

// When should you use functions?

// Anytime that you want to add a new variable that happens to have a set of statements. 

// What is a function declaration?

// "var doStuff = function(){};"

// Complete the minimum exercise in the eloquent.js file.

var a = 2
var b = 3
var z = Math.min(a,b);
console.log(z)

// Ch. 4: Data Structures: Objects and Arrays

// What is the difference between using a dot and a bracket to look up a property? Ex. array.max vs array["max"]

// None.

// Create an object called me that stores your name, age, three favorite foods, and a quirk in your eloquent.js file.

var me = {
	name: "Noah",
	age: 27,
	favSandwich: "Club",
	favPizza: "BBQ Chicken",
	favPie: "Pecan"
	quirk: "Likes Dogs"
};

// What is a JavaScript object with a name and value property similar to in Ruby?

// A Hash.

// Reflection
// What are the biggest similarities and differences between JavaScript and Ruby?

// JS does not have a simple array. 

// Was some of your Ruby knowledge solidified by learning another language? If so, which concepts?

// That the logic of programming is seamless. It's merely the syntax that differs. 

// How do you feel about diving into JavaScript after reading these chapters?

// Fairly confident. 