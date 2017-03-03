	#Jquery
Cheatsheets 
W3 schools https://www.w3schools.com/jquery/



Syntax 
	adding Jquery to HTML
	<head>
      <script src="jquery-3.1.1.min.js"></script>
    </head>

    from Google CDN
<head>
 		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
</head>
----------
this waits for the page to fully load before activating Jquery
<script>
	  $(document).ready(function() {});
</script>
------------


##The jQuery syntax is tailor-made for selecting HTML elements and performing some action on the element(s).

	Basic syntax is: $(selector).action()

	A $ sign to define/access jQuery
	A (selector) to "query (or find)" HTML elements
	A jQuery action() to be performed on the element(s)
	Examples:

	$(this).hide() - hides the current element.

	$("p").hide() - hides all <p> elements.

	$(".test").hide() - hides all elements with class="test".

	$("#test").hide() - hides the element with id="test".