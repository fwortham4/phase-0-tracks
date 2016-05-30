// 7.1 Syntax - Release4
// by Forrest Wortham

///////// Pseudo Code ////////
// 1.) create a variable that is a string.
// 2.) create a sublfunction that receives a string as a parameter.
// 3.) separates the string into individual letters.
// 4.) Reverse the letters
// 5.) Returns a the new string in reverse order.

var string = "hello";

function reverse(string) {
  var reverse_string = "";
  for(i=string.length-1; i>-1; i--) {
    reverse_string += string[i];
  }
  console.log(reverse_string);
}

var result = reverse(string);

    // console.log(reverse_string);

console.log(true||false)