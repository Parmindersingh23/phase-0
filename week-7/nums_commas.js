// Separate Numbers with Commas in JavaScript ***Pairing Challenge***


// I worked on this challenge with: Nicola Beuscher

/* Pseudocode

Input: Integer
Output: comma-separated integer

Steps:

Create a function that takes in a integer
Convert into a string and then Split integer into an array
Reverse the Array
Iterate over the Array
Add a comma every three spaces
Reverse the Array
Join the integers and convert into a string
output string
*/

// Initial Solution
// var separateComma = function(comma) {
//   comma = comma.toString().split('').reverse();
//   //console.log(comma)
//   for (var i = 0; i < comma.length ; i += 4 ) {
//     comma.splice(i + 3, 0, ",");
//   }
//   comma.pop();
//   comma = comma.reverse().join('');
//   console.log(comma)
// };

// separateComma(1569743)
// separateComma(12345678)
// separateComma(1239)

// Refactored Solution
// This works in the Browser for me but my partner said it would work in Terminal also but it is not on my side for some reason.

var separateComma = function(comma) {
  console.log(comma.toLocaleString());
}

separateComma(1569743)
separateComma(12345678)
separateComma(1239)

// Your Own Tests (OPTIONAL)




/* Reflection

What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

The approach was not different at all, we did the same thing we did with ruby and just went from there. The only difference in Java is just syntax the logic was very similiar.

What did you learn about iterating over arrays in JavaScript?

We used a for loop to iterate over the array. Setting the correct conditions for the loop was tricky for this assignment. We had to try a few things to make it work since we had to come up with a way to stop the loop from setting the comma at odd locations.

What was different about solving this problem in JavaScript?

Not too different than the actual syntax and methods. Overall the logic is the same but in JavaScript you have to write everything in the exact way especially for loops. Ruby has many methods we can use for iteration but JavaScript is more particular.


What built-in methods did you find to incorporate in your refactored solution?

toString() -  equivalent to Ruby's #to_s method
split("") -   splits a string into an array; when given an empty string as
              an argument
reverse() -   reverses the order of the elements in an array
splice() -    splice() inserts the comma at specified indexed
              positions in the array
join("") -    joins the elements of an array into a single string; when passed
              an empty string as the argument, it joins the elements directly, with
              no separator.
pop() -       The pop() method removes the last element of an array.

*/
