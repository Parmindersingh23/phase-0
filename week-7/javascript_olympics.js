// JavaScript Olympics

// I paired [by myself, with:Dan Andersen] on this challenge.

// This challenge took me [1] hours.

// Bulk Up

var Athlete = {name: "Sarah", event: "Singles"};


 function win(object) {
  return object.name + " won the " + object.event + "!"
 }


 console.log(win(Athlete));




// Jumble your words

function reverseString (string)
{return string.split('').reverse().join('');}


  console.log(reverseString("Hello"));




// 2,4,6,8
 var evens = [];

function evenNumbers(array) {

  var i = 0;
  for (i = 0; i < array.length; i++) {
     if (array[i] % 2 == 0)
  evens.push(array[i])
  }
  return evens;
 }
console.log(evenNumbers([2,4,1,6,9,7]));


// "We built this city"

function Athlete(name, age, sport, quote){
  this.name = name
  this.age = age
  this.sport = sport
  this.quote= quote
}



//Driver Code

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)



/* Reflection
What JavaScript knowledge did you solidify in this challenge? I solidfied my knowledge in creating simple functions and variables within objects and arrays.
What are constructor functions?

Constructor function type notation is preferred if you need to do some initial work before the object is created or require multiple instances of the object where each instance can be changed during the lifetime of the script.

How are constructors different from Ruby classes (in your research)?

The constructors create the objects unlike ruby where you create class and make them on your own.
*/