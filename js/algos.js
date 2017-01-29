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



function randomString(num) {  
    var possible = "abcdefghijklmnopqrstuvwxyz";
    var result = []
    var words = []
for (var x = 0; x < num; x++){ // replace 10 with num
    for (var i = 0; i< Math.floor(Math.random() * 12); i++) {
    result.push(possible[Math.floor(Math.random() * 27)])
    }
 // joins the array into strings
var word = result.join('');

words.push (word);
 
}

return words;
}







// Driver code
 
console.log(randomString(5));
console.log(findBig( (randomString(5))));
console.log(findBig(array1));
console.log(obCompare({name: "Steven", age: 52},{name: "Steven", age: 54}));



