<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Homepage</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">
<style>
body {
  font-family: Arial;
  margin: 0;
}

.header {
  padding: 10px;
  text-align: center;
  background: #0F3D3E;
  color: white;
  font-size: 23px;
  
}
.nav {
  padding: 10px;
  text-align: center;
  background: black;
  color: black;
  font-size: 20px;
}
.sec{
  padding: 100px;
  text-align: center;
  color: Black;
  font-size: 23px;
}
.foot{
  padding: 20px;
  text-align: left;
  background: #0F3D3E;
  color: White;
  font-size: 10px;
}
.button {
  border: none;
  border-radius: 25px;
  width: 200px;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

/* Change the link color to #111 (black) on hover */
li a:hover {
  background-color: #111;
}
.social-media-icon {
    padding: 5px;
    float: right;
    background: #222;
    color: #fff;
    border-radius: 4px;
}

a.social-media-icon:hover{
    background: #fff!important;
    color: #222!important;
}

.button1 {background-color: 	#5F8D4E;} /* Green */
.button2 {background-color: 	#5F8D4E;} /* Blue */
</style>
</head>
<body>

<div class="header">
	<h1>Welcome To Resto Marzano</h1>
	<p>Welcome Please Choose The Meal Menu You Want</p>		
</div>

<div class="sec">
	<h1>Welcome "User"</h1>
	<form method="post" action=""><button class="button button1">Electronic Product</button></form>
	
	<form method="post" action="foodproduct.jsp"><button class="button button1">Food Product</button></form>
	
	<form method="post" action=""><button class="button button2">Education Product</button></form>
	
	<form method="post" action=""><button class="button button2">Medical Product</button></form>
	
	
</div>

<div class="foot">
	<h1></h1>
	<p>w.pradhana@gmail.com</p>
	<p>Phone: 08128549090</p>
	<p>Pondok Kelapa, Jakarta timur, Indonesia </p>
	
	
	<a class="social-media-icon" href="https://www.facebook.com/"><span class="fab fa-facebook"></span></a>
    
    <a class="social-media-icon" href="https://twitter.com/"><span class="fab fa-twitter"></span></a>
	
	<a class="social-media-icon" href="https://instagram.com/"><span class="fab fa-instagram"></span></a>
</div>
</body>
</html>