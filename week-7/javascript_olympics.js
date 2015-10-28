// JavaScript Olympics

// I paired [by myself, with:] on this challenge.

// This challenge took me [2] hours.


// Warm Up




// Bulk Up

var KobeBryant = {name: "Kobe", sport: "Basketball"}
var MichaelJordan ={name: "Michael",sport: "Basketball"}

function (won)
return {this.name + "won" + this.sport + "!"}


console.log(KobeBryant.won);
console.log(MichaelJordan.won);


// Jumble your words

function reverseString (string)
{return string.split('').reverse().join('');}


  console.log(reverseString("Hello"))




// 2,4,6,8

function evenNumbers(value)

{if (value % 2 == 0);
  alert ('is even');
}
else
{
alert('is odd');
}

console.log(evenNumbers(4,6))

/*
#I keep getting an error and I have no idea why. I think it is my if/else
condtion that is messing things up.
*/

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
They are like instance methods in Ruby.
How are constructors different from Ruby classes (in your research)?
The constructors create the objects unlike ruby where you create class and make the on your own.
*/