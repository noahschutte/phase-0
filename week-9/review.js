// Method to create a list
// input: string of items separated by spaces (example: "carrots apples cereal pizza")
// steps: 
//   split the string into properties of an object
//   set default quantity (1)
//   print the list to the console
// output: object "groceryList" lists items and quantities

// Method to add an item to a list
// input: list name and item name
// steps: split list of new items into an array
// 				IF new items matches existing item, ignore
// 				add item to list
// 				print new list
// output: print new list with added items

// Method to remove an item from the list
// input: list name and list of items to be removed from list
// steps: split list of items to be removed into an array
// 				IF removed items do not match existing items, ignore
// 				remove items from list
// 				print new list
// output: print new list with items removed

// Method to update the quantity of an item
// input: list name, quantity desired, item to change quantity
// steps: IF item is in current list, change quantity to desired number
// output: print new list

// Method to print a list and make it look pretty
// input: list name
// steps: print each property with quantity
// output: print list of items with quantities

function GroceryList(items) {
	items = items.split(" ")
	for (var i = 0; i < items.length; i++) {
		this[items[i]] = 1;
	};
	viewList(this);
};

function viewList(list) {
	console.log("Your grocery list includes:")
	for (item in list) {
		console.log(list[item] + " " + item);
	};
};

function addItem(list, items) {
	newItems = items.split(" ");
	for (newItem in newItems) {
		for (item in list) {
			if (item !== newItems[newItem]) {
				list[newItems[newItem]] = 1;
			};
		};
	};
	viewList(list);
}

function removeItem(list, items) {
	removeItems = items.split(" ");
	for (removeItem in removeItems) {
		for (item in list) {
			if (item == removeItems[removeItem]) {
				delete list[removeItems[removeItem]];
			};
		};
	};
	viewList(list);
}

function updateQty(list, qty, item) { 
	for (items in list) {
		if (item == items) {
			list[items] = qty;
		};
	};
	viewList(list);
};

// DRIVER CODE //
var myList = new GroceryList("butter milk bread eggs");
addItem(myList, "pear apples");
removeItem(myList, "milk bread");
updateQty(myList, 3, "eggs");
viewList(myList);

// Reflection
// What did you learn about pseudocode from working on this challenge?

// High level pseudocode helps to stay on target, but does not provide a step by step solution to solving a problem. Knowledge of a language's existing methods is crucial to understand how you are going to tackle the problem. 

// What are the tradeoffs of using Arrays and Hashes for this challenge?

// I chose to use object properties to display the grocery list. I think an array could also have been used, but the relationship with the item's quantity would have been less fixed to the item. 

// What does a method return?

// A method returns the result of your code block. Printing to the console is only a side effect of using console log. 

// What kind of things can you pass into methods as arguments?

// Anything. Integers, strings, booleans, arrays, or even objects. 

// How can you pass information between methods?

// By calling another method with some arguments included from the previous method. 

// What concepts were solidified in this challenge, and what concepts are still confusing?

// I brushed up a lot of Javascript that I originally felt weak in. I'm glad I resurfaced some weaknesses with accessing objects in Javascript. 