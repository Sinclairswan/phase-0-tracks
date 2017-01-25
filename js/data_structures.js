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