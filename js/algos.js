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
//////////////////////////////////////


/////////// Driver Code /////////////

// longest_phrase(["long phrase","longest phrase","longer phrase"]);

// longest_phrase(["I'm short","I'm defenitely the longest phrase in this array","I'm pretty long","I'm somewhat long","I'm not sure"]);

// longest_phrase(["short","short","short","short","short","short","short","longest phrase","short","short","short","short","short",]);

//////////////////////////////////////

////////// Pseudo Coding - Release1 //////////

// 1.) Declasre 2 different Objects
//      Ex.) {name: "String", age: Integer}
// 2.) Define a function that receives a hash as input.
//    Return True if {"A", 10} and {"A", 23}
//    Return False if {"", 10} and {"B", 23}

//////////////////////////////////////////////

/////////// Method - Release1 /////////////


var object1 = {name: 'A', number: 10};
var object2 = {name: 'A',number: 23};

function receiver(hash) {

  for(i=[]; i>object1.length; i++) {
    var key_name = name;
    console.log(object1[key_name])
    // for(i=0; i>object2.length; i++) {


  }
}

console.log(receiver(object1));
// console.log(object2[name]);
//////////////////////////////////////////////

/////////// Driver Code /////////////

//////////////////////////////////////////////