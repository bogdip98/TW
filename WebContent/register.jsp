<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style><%@include file="/WEB-INF/css/loginstyle.css"%></style>
<style><%@include file="/WEB-INF/css/body.css"%></style>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

</head>
<body>

<ul>
	<li><a href="home.jsp">Pagina principala</a></li>
	<li><a class="active" href="my_accout.jsp">Creaza Cont</a></li>
	<li style="float:right"><a class="active" href="login.jsp">Login</a></li>
</ul>
<!-- Page content -->
  <!-- The Tour Section -->
	<div class="w-white">
<form action="Register" method="post">
  <div class="container" align="center">
    <label for="username"><b>Username: </b></label>
    <input type="text" placeholder="Introdu username..." name="username" required><br>
    <label for="parola"><b>Password: </b></label>
    <input type="password" placeholder="Introdu parola..." name="parola" required><br>
    <label for="email"><b>E-Mail: </b></label>
    <input type="email" placeholder="Introdu email...." name="email" required><br>
    <label for="adresa"><b>Adresa: </b></label>
    <input type=text placeholder="Introdu adresa completa..." name="adresa" required><br>
    <label for="varsta"><b>Varsta: </b></label>
    <input type="number" placeholder="Introdu varsta..." name="varsta" required><br>    
    <label for="sex"><b>Sex: </b></label>
	<select name="sex">
	<option>Barbat</option>
	<option>Femeie</option>    
    </select><br>
    
    <br><button class="button" type="submit">Creaza contul</button>
    
  </div>
</form>	
	</div>
	<div class="w-white" align="center">
    <h1>Contact</h1>
        <a>Timisoara, Strada ....</a><br>
        <a>Tel: 0722</a><br>
        <a>Email: mail@gmail.com</a><br><br>
    </div>  

</body>
</html>