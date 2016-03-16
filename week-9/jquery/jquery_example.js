// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 2:
  //Add code here to select elements of the DOM


//RELEASE 3:
  // Add code here to modify the css and html of DOM elements
bodyElement = $('body')

//RELEASE 4: Event Listener
  // Add the code for the event listener here
$(' .hello').css({"background-color": "red"})
$(' .hello').css({"border": "solid 2px black"})
$(' .hello').css({"visibility": "visible"})


$(".mascot h1").html("Rock Doves")

//RELEASE 5: Experiment on your own




// $('img').on({
//       'mouseover' : function(){
//           this.src = 'imgs/rock_dove.jpg';
//           },
//       'mouseout' : function(){
//           this.src = 'imgs/dbc_logo.png';
//           }
//  });


$('img').on({
      'mouseover' : function(){
          this.src = 'imgs/rock_dove.jpg';
          $(this).animate({width: '170px', height: '120px', top: '-=15px', left: '-=15px'}, 500);
          },
      'mouseout' : function(){
          this.src = 'imgs/dbc_logo.png';
          $(this).animate({width: '400px', height: '60px', top: '-=15px', left: '-=15px'}, 500);
          }
 });




div.animate({left: '100px'}, "slow");





})  // end of the document.ready function: do not remove or write DOM manipulation below this.

//What is jQuery?
//jquery is an open source library for Javascript.

//What does jQuery do for you?
//it makes it easier to select DOM elements and handle events, as well as create abstractions.

//What did you learn about the DOM while working on this challenge?
//That we can do all sorts of fun things with the DOM using JQ to modify the HTML and manipulate data.


