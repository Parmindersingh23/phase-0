// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
/*var feeling = "amazing";
console.log(feeling);


var favfood = prompt("whats your fav food?"); alert(favfood + "is also mine");


*/
// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

for (var string = "#"; string <= "#######"; string =  string + "#") console.log(string);



// Functions

// Complete the `minimum` exercise.
// Your code here.
function minimum(a,b) {
  if (a > b) return;
  else return b;
}
console.log(minimum(0, 10));
// → 0
console.log(minimum(0, -10));
// → -10



// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

personalInfo = {

  name: "Parminder Singh",
  age: 25,
  foods: ["indian foods", "mexican foods", "cookies"]
  quirk: "I have ADD"
}