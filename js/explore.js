// 7.1 Syntax - Release4
// by Forrest Wortham

///////// Pseudo Code ////////
// 1.) create a variable that is a string.
// 2.) create a function that receives a string as a parameter.
// 3.) separates the string into individual letters.
// 4.) Reverse the letters
// 5.) Returns a the new string in reverse order.

var string = "hello";

function reverse(string) {
  for(var i = 0; i<string.length; i++) {
    var letter = string[i];
    var array = [];
    array.push(letter);
    console.log(array);
  }
}

reverse(string);

    // console.log(reverse_string);