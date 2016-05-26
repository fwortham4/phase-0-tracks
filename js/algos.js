// 7.3 Solo Challenge: Algorithm Practice
// by Forrest Wortham

/////////// Pseudo Coding ///////////
// 1.) define the function that takes an array as an arguement.
// 2.) determine the length of each element of the array.
// 3.) print out the longest element of the array as the result.
/////////////////////////////////////

/////////// Driver Code /////////////
function longest_phrase(array) {
  console.log(array.length)
  var element_length = [];
  for (i=0;i<array.length;i++) {
    element_length.push(array[i].length);

  }
  console.log(element_length);
}

var input_array = ["long phrase","longest phrase","longer phrase"]
longest_phrase(input_array);

