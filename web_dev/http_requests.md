#9.1 How the web works

##Release 0 
###What are some common HTTP status codes?
Some common HTTP codes are, 

* 200 OK - which means that the request has succeeded. 
* 204 No Content - The request has been successfully processed, but is not returning any content.
*301 Moved Permanently - The requested page has moved to a new URL 
* 401 Unauthorized - 401 response indicates that authorization has been refused for those credentials 
* 404 Not Found - The server has not found anything matching the Request-URI
* 500 Internal Server Error - The server encountered an unexpected condition which prevented it from fulfilling the request.

###What is the difference between a GET request and a POST request? When might each be used?
**GET** - Requests data from a specified resource.
Is used for things that can be cached, bookedmarked, or other data that can be saved

**POST** - Submits data to be processed to a specified resource
Is used for subitiming information that may need to be kept secure like passwords or credit card info

### What is a cookie?
A cookie is a small piece of data sent from a website and stored on the user's computer by the user's web browser while the user is browsing. Cookies are return after the HTTP request.