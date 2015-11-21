// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: Pete

// This challenge took me [1.5] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}


/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode

//For the 'votes' we will iterate over the through each element
  //For each element we will iterate again through the officers
    //add one to that property of voteCount named by that officer
/*
ITERATE over 'officers'
  ITERATE over 'voteCount'
    CREATE array 'voteNums'
      PASS the value of each element
    COMPARE each element of 'voteCount'
      CREATE integer 'mostVotes'
        PASS largest value
    COMPARE 'mostVotes' to each element of 'voteNums'
      PASS result to current element of 'officers'

*/
// __________________________________________
// Initial Solution

// for (var key in votes){
//   if (votes.hasOwnProperty(key)){
//     var obj = votes[key];
//      for (var prop in obj) {
//        voteCount[prop][key] = 0;
//      }
//   }
// }
// for (var key in votes){
//   if (votes.hasOwnProperty(key)){
//     var obj = votes[key];
//      for (var prop in obj) {
//        voteCount[ prop ][ obj[ prop ] ] += 1;
//      }
//   }
// }

// console.log( voteCount.president[ "Bob" ] );

// for( var key in voteCount )
// {
//   officers[ key ] = null;
//   if( voteCount.hasOwnProperty( key ) )
//   {
//     var obj = voteCount[ key ];
//     for( var prop in obj )
//     {
//       if( officers[ key ] === null || obj[ prop ] > obj[ officers[ key ] ] )
//       {
//         officers[ key ] = prop;
//       }
//     }
//   }
// }

// __________________________________________
// Refactored Solution

for (var key in votes){
  if (votes.hasOwnProperty(key)){
    var obj = votes[key];
     for (var prop in obj) {
       var candidateName = obj[ prop ];
       if (voteCount[ prop ][ candidateName ] === undefined){
         voteCount[ prop ][ candidateName ] = 1
       }
        else {voteCount[ prop ][ candidateName ] +=1}

     }
  }
}

console.log( voteCount.president[ "Bob" ] );

for( var key in voteCount )
{
  officers[ key ] = null;
  if( voteCount.hasOwnProperty( key ) )
  {
    var obj = voteCount[ key ];
    for( var prop in obj )
    {
      if( officers[ key ] === null || obj[ prop ] > obj[ officers[ key ] ] )
      {
        officers[ key ] = prop;
      }
    }
  }
}

console.log(officers.president);


// __________________________________________
/* Reflection

What did you learn about iterating over nested objects in JavaScript?

Iterating over nested objects was more difficult than I thought. You have to make sure you are accessing the correct data. I think for nested objects bracket notation is would be the best way to go about things.

Were you able to find useful methods to help you with this?

The only new method we used wad the hasOwnProperty method for our key values in the object.

What concepts were solidified in the process of working through this challenge?

Iterating over the objects has been getting easier and easier for me now, also accessing objects. Some of the If statements I did have trouble with understanding.




*/ __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)