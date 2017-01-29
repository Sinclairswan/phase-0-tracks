var array1 = ["long phrase","longest phrase","longer phrase"]


function findBig (array){
  var largest = 0;
var longestWord = " ";

	for (var i = 0; i < array.length; i++) {
	    if (array[i].length > largest) {
	    	largest = array[i].length;
	    	longestWord = array[i];
	    } 
	    
	}
	return longestWord
}

function obCompare ({name: x, age: y}, {name: a, age: b}){
	if ((x == a) || (y == b)) {
		return true;
		}else {
  return false;
}
	
	
}



// Driver code

console.log(findBig(array1))
console.log(obCompare({name: "Steven", age: 52},{name: "Steven", age: 54}));



