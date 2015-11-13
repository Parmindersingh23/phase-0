 // Design Basic Game Solo Challenge

// This is a solo challenge



// Pseudocode
//Set the Player at an intial position
//There will be another object called ball at another random position
//The player has to find that ball using the back and forward movements
//Once the player encounters the ball the games will say you won


//Very simple game hard to play when you dont really have any visuals. But I didnt want to make this overly complicated and spend too much time.

// Final Code

var player = {
posX: 0,
posY: 0,

//This is our moving function (Foward and Front)
move: function(direction) {
  if(direction === 'forward'){
    this.posX +=1;
  }
  else if(direction === 'back'){
    player.posX -=1;
  }


console.log("Player you are getting closer" + " " + (ball.posX()) + " " + ", Keep trying" + " (Players Position " + player.posX + "," + player.posY + ")");

if(player.posX === ball.posX()){
  //console.log("You Win!")
  alert("You found the ball")
  }
}
};

//This is our ball, also randomizes the X positon.
var ball = {
posX: function(direction){
  return Math.floor(Math.random()*5)
}

};


//Makes our player move forward or back.
player.move('forward');
player.move('back');









/* Reflection
 1. What was the most difficult part of this challenge?

The hardest part of this challenge for me was how to actually start and make a simplistic game. I wanted to make a platform type game but I didnt know how to make a UI yet so I just made a random event game. The actual writing of the code was not the hard part, but how to make the player move back and using new functions to randomize the movement was hard to figure out.

2. What did you learn about creating objects and functions that interact with one another?

That everything needs to be properly attached together to make it work. If some of the variables are not in the right place that program wont recgonize where to grab that variable from. I had my ball variable inside my player variable and that did not work. I like everything separated out, the readablity of the code seems to be better that way.

3. Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?

For mine, not really I tried to keep my code as simple as possible. I only got rid of some stuff that wasnt being used in my refecatored code.

How can you access and manipulate properties of objects?

The easiest way to manipulate the objects would be to use the dot notation.For example, ball.posX we can change the location of the ball.

*/