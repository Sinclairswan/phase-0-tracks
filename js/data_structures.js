var colors = ["blue", "orange", "red" , "yellow"];
var horseNames = ["buster","ed","shadowfax","artax"];

colors.push("green");
horseNames.push("bob");

console.log(colors);
console.log(horseNames);

var horseList = {}

for (var i = 0; i < colors.length; i++) {
	 horseList[colors[i]] = horseNames[i];
	  }

console.log(horseList)

function Car(make, model, year) {

	console.log("Brand new car:", this);
	this.make = make;
	this.model = model;
	this.year = year;
	this.go = function() {console.log("vroom");};

	console.log("Your car is ready!");
}	

var firstCar = new Car("honda", "civic", 2017);
console.log(firstCar);
firstCar.go();