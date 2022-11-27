<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Page Title</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
/* Style the body */
body {
  font-family: Arial;
  margin: 0;
  background:#EFF5F5;
}
/* Header/Logo Title */
.header {
  padding: 5px;
  text-align: center;
  background: #0F3D3E;
  color: white;
  font-size: 25px;
}
.nav {
  padding: 5px;
  text-align: center;
  background: #EB6440;
  color: Blue;
  font-size: 15px;
}

.nav ul li{
	list-style: none;
	display: inline-block;
	margin: 0 20px;
	position: relative;
}

.nav ul li a{
	text-decoration:none;
	color:#fff;
	text-transform: uppercase;
}

.sec{
  padding: 100px;
  text-align: center;
  background:url(tech.jpg);
  color: Black;
  font-size: 20px;
}
footer{
  position: relative;
  background: #0F3D3E;
  padding: 20px 50px;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction:
}

footer .social-icon{
  position: relative;
  display: flex;
  justify-content: center;
  align-items: center;
  margin: 10px 0;
}

footer .social-icon li{
  list-style: none;
}

footer .social-icon li a{
  font-size: 2em;
  color: #fff;
  margin: 0 10px;
  display: inline-block;
  transition: 0.5s;
}

footer.social-icon li a:hover{
  transform: translateY(-10px);
}

button{
	width: 230px;
	padding: 15px 0;
	text-align: center;
	margin: 20px 10px;
	border-radius: 25px;
	font-weight: bold;
	border: 2px solid #59C1BD;
	background: transparent;
	color: #000;
	cursor: pointer;
	position: relative;
	overflow: hidden;
}

span{
	background: #59C1BD;
	height: 100%;
	width: 100%;
	border-radius: 25px;
	position: absolute;
	left: 0;
	bottom: 0;
	z-index: -1;
	transition: 0.5s; 
}

button:hover span{
	width: 100%;
}

button:hover{
	border:none;
}

.button {
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
.button1 {background-color: #5F8D4E;}
.button2 {background-color: #5F8D4E;} 
.button3 {background-color:#5F8D4E;}
</style>
</head>
<body>

<div class="header">
  <h1>ATS</h1>
  <p></p>
</div>

<div class="nav">
  <ul>
  <li><a href="active" href="#home">AboutUs</a></li>
  <li><a href="#news">Contact</a></li>
  <li><a href="#contact">Detail</a></li>
  <li><a href="#about">Service</a></li>
  </ul> 
</div>

<div class="sec">
  <h1>Login Credentials</h1>
	<form method="post" action="./form.jsp"><button class="button button1">Admin Login</button></form>

	<form method="post" action="list"><button class="button button2">User Login</button></form>
	<form method="post" action="new"><button class="button button3">New User Register!</button></form>
	  </div>
	  <input type="submit" value="Download PDF" name="download" onclick="window.print()" /> 
  <footer>
  <ul class="social">
  	<li><a href="http://www.facebook.com/"><ion-icon name="logo-facebook"></ion-ion></a></li>
  	<li><a href="http://www.twitter.com/"><ion-icon name="logo-instagram"></i></a></li>
  	<li><a href="http://www.instgram.com"><ion-icon name="logo-twitter"></i></a></li>
  </ul>
  </footer>
  <script type="module" src="https://unpkg.com/ionicon@5.5.2/dist.ionicons.esm.js"></script>
  <script module src="https://unpkg.com/ionicons@5.5.2/dist/ionicons.js"></script>


</body>
</html>