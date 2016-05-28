// 7.2 Mandatory Pairing: Data Structures
// by Forrest Wortham and

//////////////// Release0 ////////////////////
// 1.) Create 2 arrays.
// 2.) Add new elements to both arrays.

var blue_array = ["aqua", "teal", "dark blue", "turquiose"];
var horse_names = ["Bubba", "Joker", "Lebron", "Princess"];

blue_array.push("blue steel");
horse_names.push("Zoolander");

console.log(blue_array);
console.log(horse_names);

//////////////// Release1 ////////////////////
// JS : "Objects" <-> Ruby : "Hashes"
// Keys = horse_names and Values = blue_array

var blue_horses = {};

for (var i=0;i<horse_names.length;i++) {
  blue_horses[horse_names[i]] = blue_array[i];
};

console.log(blue_horses);

//////////////// Release2 ////////////////////

