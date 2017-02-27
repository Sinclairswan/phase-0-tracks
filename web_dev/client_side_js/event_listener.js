console.log("the script is running!");

function addBorder (event) {
  
  event.target.style.backgroundColor = "#ccffff";	
}

var head = document.getElementById('nav');
head.addEventListener("click", addBorder);