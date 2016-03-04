 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: 
// Overall mission: Food Fight
// Goals: Hit enemy with food.
// Characters: Hero and Villain.
// Objects: Hero and Villain.
// Functions: 
// 1. Throw mashed potatoes.
// 2. Throw meatloaf.

// Pseudocode
// Assign objects names. 
// Assign objects property of Dirty: 0%. 
// Make function throw_mashed_potatoes.
// 
//

// Initial Code

window.onload = function(e) {
	var mashedPotatoes = document.getElementById("mashed_potatoes");
	var meatloaf = document.getElementById("meatloaf");
	var text = document.getElementById("prompt");

	meatloaf.addEventListener("click", function throwMeatloaf() {
 	text.innerHTML = "You hit a teacher, enjoy your time in detention."
  mashedPotatoes.innerHTML = "Play Again?"
  mashedPotatoes.value = "game_over"
  document.getElementById("meatloaf").style.display="none";
  })

 mashedPotatoes.addEventListener("click", function throwMashedPotatoes() {
  if(mashedPotatoes.value === "unclicked") {
   text.innerHTML = "You nailed the bully in the face with a pile of mashed potatoes! You win this battle.";
   mashedPotatoes.innerHTML = "Play Again?"
   mashedPotatoes.value = "game_over"
   document.getElementById("meatloaf").style.display="none";
  }
  else if(mashedPotatoes.value === "game_over") {
   reset();
  }
 })

 function reset() {
 	document.getElementById("meatloaf").style.display="block";
  mashedPotatoes.innerHTML = "Throw mashed potatoes!"
  mashedPotatoes.value = "unclicked"
  text.innerHTML = "A bully just insulted you in front of your friends. You've got a tray full of mashed potatoes and meatloaf. What would you like to do?"
 }
}

// Refactored Code






// Reflection
// What was the most difficult part of this challenge?

// T

// What did you learn about creating objects and functions that interact with one another?

// T

// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?

// T

// How can you access and manipulate properties of objects?

// T