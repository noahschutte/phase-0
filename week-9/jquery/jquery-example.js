// U3.W9:JQuery
// I worked on this challenge [with: Jason Allen].
// This challenge took me [1] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 2:
  //Add code here to select elements of the DOM

bodyElement = $('body')

//RELEASE 3:
  // Add code here to modify the css and html of DOM elements

$('#intro').css({
	'color': 'yellow',
	'border': '3px solid black',
	'visibility': 'visible'
});

//RELEASE 4: Event Listener
  // Add the code for the event listener here

  $('.mascot img').on('mouseover', function(e){
    e.preventDefault()
    $(this).attr('src', 'rock-dove.jpg')
  })

  $('.mascot img').on('mouseout', function(e){
    e.preventDefault()
    $(this).attr('src', 'dbc_logo.png')
  })

//RELEASE 5: Experiment on your own
var $cohort = "Rock Doves";
$('.mascot h1:first-child').html("Rock Doves");

})  // end of the document.ready function: do not remove or write DOM manipulation below this.

// Reflection
// What is jQuery?

// A JavaScript library that provides methods to reduce the amount of code that you need to write. 

// What does jQuery do for you?

// JQuery provides a simple format to quickly access DOM elements and call library methods. 

// What did you learn about the DOM while working on this challenge?

// How to access parent and child elements in a document. Also, how to access ids and classes. 