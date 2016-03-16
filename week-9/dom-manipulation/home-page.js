// DOM Manipulation Challenge


// I worked on this challenge [by myself].


// Add your JavaScript calls to this page:
// Release 0:
document.getElementById("release-0").className += "done";

// Release 1:
document.getElementById("release-1").style.visibility = "hidden";

// Release 2:
var changed = "I completed release 2.";
var release_2 = document.getElementById("release-2");
release_2.innerHTML = changed;

// Release 3:
document.getElementById("release-3").style.backgroundColor = 955251;

// Release 4:
document.getElementById("release-4").style.fontSize = "2em";

// Release 5:
var template = document.getElementById("hidden");
document.body.appendChild(template.content.cloneNode(true));

var complete = "Done!";
var finished = document.getElementsByClassName("done")[0];
finished.innerHTML = complete;