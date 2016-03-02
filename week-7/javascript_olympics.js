// JavaScript Olympics

// I paired [with: Jon Norstrom] on this challenge.
// This challenge took me [1] hours.

// Warm Up
function win(athletes) {
  for (var i = 0; i < athletes.length; i++) {
    console.log(athletes[i].name + " won the " + athletes[i].event + "!");
  }
}

var athletes = [
  {
  'name': "Michael Phelps",
  'event': "Swimming",
    },
  {
  'name': "Shaun White",
  'event': "Snowboarding",
    }
]

// win(athletes)

// Bulk Up
var string = "Reversing this string."

var reverse = function(string) {
  var aryString = string.split("");
  console.log(aryString.reverse().join(""));
}

// reverse(string)

// 2,4,6,8
var array = [2,3,5,6,8,9]

var select_evens = function(x) {
  return x % 2 === 0  
}

var filtered = array.filter(select_evens)
// console.log(filtered)

// "We built this city"
var Athlete = function(name, age, sport, quote) {
  this.name = name
  this.age = age
  this.sport = sport
  this.quote = quote
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

var shaunWhite = new Athlete("Shaun White", 28, "snowboarding", "I'm Shaun White")

console.log(shaunWhite.name)

// Reflection
// What JavaScript knowledge did you solidify in this challenge?

// Object-Oriented programming, including constructors, array, object literals, and basic syntax. 

// What are constructor functions?

// Constructor functions are like class methods in Ruby. They quickly assemble new objects, using a constructor variable. 

// How are constructors different from Ruby classes (in your research)?

// Very similar. Although they are constructed more like hashes. 