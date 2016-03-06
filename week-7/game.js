// Mission Description:
// Overall mission: Escape
// Goals: Cross the field, avoiding the minotaur, get to exit
// Characters: Player, Minotaur
// Objects: Player(position), Minotaur (position)
// Functions: moveForward, moveBack, moveUp, moveDown

// Pseudocode
//Declare player object, give it position at 0,0, need to get to 20,20, initial success = false
//give player methods to move up, down, left, right
//player moves two spaces at a time, but only one direction
//Declare Minotaur object and place it randomly on the board (but not too close to player)
//Move the player, generate pursuit move for Minotaur, based on relative player position.
//Minotaur only moves on space at a time, but can move diagonally
//if player position = Minotaur position, player is dead.
//If player position = 20,20, player has escaped
//game over!


// Solution
//var cont = true

var player = {
posX: 0,
posY: 0,

move: function(direction) {
  if(direction === 'right'){this.posX +=2;}
  else if(direction === 'left'){player.posX -=2;}
  else if(direction === 'up'){player.posY += 2;}
  else if(direction === 'down'){player.posY -=2;}

//show player's location / movement
console.log("you moved to " + player.posX + "," + player.posY);

//when player moves, minotaur chases
//left - right
if(minotaur.posX > player.posX){minotaur.posX -=1}
else{minotaur.posX +=1}
//up-down
if(minotaur.posY > player.posY){minotaur.posY -=1}
else{minotaur.posY +=1}

console.log("Minotaur moved to " + minotaur.posX + "," + minotaur.posY);

//After every move, check if the Minotaur caught the player
if(player.posX === minotaur.posX && player.posY === minotaur.posY){
console.log("The Minotaur caught you, you're dead");
//cont = false;
}

else if(player.posX === 20 && player.posY === 20){
  console.log("You escaped, you win!!");
  //cont = false
    }
  }
};

var minotaur = {
posX: Math.floor((Math.random()*10)+10),
posY: Math.floor((Math.random()*10)+10)
};

// while (cont = true){
//   var direction = prompt("where do you move to?")
//   move(direction)
// }

console.log("Minotaur is located at " + minotaur.posX + "," + minotaur.posY);
player.move('up');
player.move('right');
player.move('up');
player.move('right');
player.move('up');
player.move('right');
player.move('up');
player.move('right');
player.move('up');
player.move('right');
player.move('up');
player.move('right');
player.move('up');
player.move('right');
player.move('up');
player.move('right');
player.move('up');
player.move('right');
player.move('up');
player.move('right');



// What was the most difficult part of this challenge?
//Coming up with a doable idea. Once I had that, it went smoothly

// What did you learn about creating objects and functions that interact with one another?
//that it is not that hard, but that it is not the same as Ruby. It feels less like
//objects interacting than like datastructures interacting.

// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
//I didn't learn any new methods, but it was very helpful to practice using
//methods within objects, as well as using .floor and math.random()

// How can you access and manipulate properties of objects?
//it's like a hybrid of Ruby hash structure and Ruby object notation.