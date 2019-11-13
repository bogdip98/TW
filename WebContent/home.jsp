<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style><%@include file="/WEB-INF/css/loginstyle.css"%></style>
<style><%@include file="/WEB-INF/css/body.css"%></style>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

</head>
<body>
 <%
	String functie = request.getParameter("functie");
	if (session.getAttribute("name") != null) {
		if(session.getAttribute("functie").equals("pacient")){
 %>
<ul>
	<li><a class="active" href="home.jsp">Pagina principala</a></li>
	<li><a href="my_account.jsp">Contul meu</a></li>
	<li><a href="pacient.jsp">Pacient</a></li>
	<!--<li><a href="medic.jsp">Medic</a></li>-->
	<li style="float:right"><a class="active" href="logout.jsp">Logout</a></li>
</ul>
 <%
		}
		else{
 %>
 <ul>
	<li><a class="active" href="home.jsp">Pagina principala</a></li>
	<li><a href="my_account.jsp">Contul meu</a></li>
	<!--<li><a href="pacient.jsp">Pacient</a></li>-->
	<li><a href="medic.jsp">Medic</a></li>
	<li style="float:right"><a class="active" href="logout.jsp">Logout</a></li>
</ul>
 <%
		}
 %>
<!-- Page content -->
  <!-- The Tour Section -->
	<div class="w-white">
		<h2 class="w3-wide w3-center">Informatii</h2>
		<div class="w3-container w3-content w3-center w3-padding-64" style="max-width:800px">
		    <p class="w3-justify">Informati clinica<br>
		    Rand 2</p>
    	</div>
	</div>
	<div class="w-white">
    <h1>Localizare pe Harta</h1>
		<iframe width="1080" height="500" id="gmap_canvas" src="https://maps.google.com/maps?q=universitatea%20de%20vest%20timisoara&t=&z=17&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
    </div>
	<div class="w-white" align="center">
    <h1>Contact</h1>
        <a>Timisoara, Strada ....</a><br>
        <a>Tel: 0722</a><br>
        <a>Email: mail@gmail.com</a><br><br>
    </div>
  <%
  }
  else {
 %>
 <ul>
	<li><a class="active" href="home.jsp">Pagina principala</a></li>
	<li><a href="register.jsp">Creaza Cont</a></li>	
	<li style="float:right"><a class="active" href="login.jsp">Login</a></li>
</ul>
<!-- Page content -->
  <!-- The Tour Section -->
	<div class="w-white">
		<h2 class="w3-wide w3-center">Logheaza-te pentru a avea acces.</h2>
    	</div>
 <%
  }
 %>   

</body>
</html>