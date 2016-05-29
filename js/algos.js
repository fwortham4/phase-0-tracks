// 7.3 Solo Challenge: Algorithm Practice
// by Forrest Wortham

////////// Pseudo Coding - Release0 //////////
// 1.) define the function that takes an array as an arguement.
// 2.) determine the length of each string of the input array.
// 3.) Place element lengths in a new array.
// 4.) Determine the largest integer in the new array.
// 5.) Return the string of the largest integer in the new array.
// 6.) Return the index of the largest integer in the new array.
// .) print out the longest element of the input array as the result.
/////////////////////////////////////

/////////// Method - Release0 /////////////
// 1.)
function longest_phrase(array) {
  console.log(array.length);
  var element_length = [];

// 2.)
  for (i=0;i<array.length;i++) {

// 3.)
    element_length.push(array[i].length);

// 4.)
    var longest_string = Math.max(...element_length);
  }
// 5.)
  var longest_phrase_index = element_length.indexOf(longest_string);

// 6.) and 7.)
  console.log(array[longest_phrase_index]);
}

////////// Driver Code - Release0 ////////////

// longest_phrase(["long phrase","longest phrase","longer phrase"]);

// longest_phrase(["I'm short","I'm defenitely the longest phrase in this array","I'm pretty long","I'm somewhat long","I'm not sure"]);

// longest_phrase(["short","short","short","short","short","short","short","longest phrase","short","short","short","short","short",]);

//////////////////////////////////////

////////// Pseudo Coding - Release1 //////////

// 1.) Declasre 2 different Objects
//      Ex.) {name: "String", age: Integer}
// 2.) Define a function that receives 2 hashes as inputs.
//    Return True if {"A", 10} and {"A", 23}
//    Return False if {"A", 10} and {"B", 23}

/////////////////////////////////////////////

/////////// Method - Release1 /////////////

var x = {'name': 'A', 'number': 10};
var y = {'name': 'A','number': 23};
var z = {'name': 'B', 'number': 45}

function myReceiver(one, two) {
// function determines if at least one pair the key-values pairs match listed in Object one and Object two.
  console.log(one.name === two.name || one.number === two.number);
}

////////// Driver Code - Release1 ////////////

myReceiver(x, y);
myReceiver(x, z);

//////////////////////////////////////////////

////////// Pseudo Coding - Release2 //////////
// 1.) define function that takes an integer as an arguement.
// 2.) Returns thats integer number of random strings.
//      - of various lengths
//      - Minimum: 1 letter
//      - Maximum: 10 letters and
// 3.) Call using driver code.
// 4.)
// 5.)
/////////////////////////////////////////////

/////////// Method - Release2 /////////////

function RandomString(words) {
  var array = [];
  var result = ' ';
  var chars = 'abcdefghijklmnopqrstuvwxyz0123456789';
  for (var n = words; n > 0; --n) {
    for (var i = 10; i > 0; --i) result += chars[Math.floor(Math.random() * chars.length)];

      console.log(result);
      array.push(result)

  }
  console.log(array);
}


////////// Driver Code - Release2 ////////////

RandomString(5);

// function randomString(length, chars) {
//     var result = '';
//     for (var i = length; i > 0; --i) result += chars[Math.floor(Math.random() * chars.length)];
//     return result;
// }
// var rString = randomString(32,

//////////////////////////////////////////////

