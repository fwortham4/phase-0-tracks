// 7.2 Mandatory Pairing: Data Structures
// by Forrest Wortham and

//////////////// Release0 ////////////////////
// 1.) Create 2 arrays.
// 2.) Add new elements to both arrays.

var blue_array = ["aqua", "teal", "dark blue", "turquiose"];
var horse_names = ["Bubba", "Joker", "Lebron", "Princess"];

blue_array.push("blue steel");
horse_names.push("Zoolander");

// DRIVER CODE: // console.log(blue_array);
// DRIVER CODE: // console.log(horse_names);

//////////////// Release1 ////////////////////
// JS : "Objects" <-> Ruby : "Hashes"
// Keys = horse_names and Values = blue_array
// Literal Construction of an Object.

var blue_horses = {};

for (var i=0;i<horse_names.length;i++) {
  blue_horses[horse_names[i]] = blue_array[i];
};

// DRIVER CODE: // console.log(blue_horses);

//////////////// Release2 ////////////////////
// Jave Script Obejects:

// 1.) Objects can have behavior. In other words, objects can have functions as values.

// 2.) Objects can be produced from a blueprint or prototype, loosely similar to the way instances in Ruby can be produced from a class.

// Constructor Functions (uppercase functions) is similar to initializing a classes in Ruby.
// JS: 'this' <-> Ruby: @name
// Functions can be used as Value anytime.


// Adding a new behavior -> Ex.) <object>.<newBehavior> = function() { <Code for new behavior>};

function Car(brand, year, model, zeroTo60, fwd) {
  this.brand = brand;
  this.year = year;
  this.model = model;
  this.zeroTo60 = zeroTo60;
  this.fwd = fwd;

  this.zoom = function() {console.log("Zoom ZOOM!!!");};

  console.log("CAR INITIALIZATION COMPLETE");
}

// Porsche 911
var porsche = new Car("Porsche", 2016, "911", 4.2, false);
console.log(porsche);
porsche.zoom();

// Jeep Wrangler
var jeep = new Car("Jeep", 2016, "Wrangler", 7.6, true);
console.log(jeep);
jeep.zoom();
//////////////////////////////////////////////