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
	<li><a href="register.jsp">Creaza Cont</a></li>
	<li style="float:right"><a class="active" href="login.jsp">Login</a></li>
</ul>
	<div class="w-white">
<h1>Login</h1>

<form action="UserProfile" method="post">
  <div class="container">
    <label for="nume"><b>Username: </b></label>
    <input type="text" placeholder="Enter Username" name="nume" required><br>
    <label for="parola"><b>Password: </b></label>
    <input type="password" placeholder="Enter Password" name="parola" required><br>
    <button class="button" type="submit">Login</button>
  </div>
</form>
</div>
</body>
</html>