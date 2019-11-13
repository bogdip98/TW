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
 <%
	String functie = request.getParameter("functie");
	if (session.getAttribute("name") != null) {
		if(session.getAttribute("functie").equals("pacient")){
 %>
<ul>
	<li><a href="home.jsp">Pagina principala</a></li>
	<li><a href="my_account.jsp">Contul meu</a></li>
	<li><a class="active" href="#">Programare</a></li>
	<li><a href="pacient.jsp">Pacient</a></li>
	<li style="float:right"><a class="active" href="logout.jsp">Logout</a></li>
</ul>
 <%
		}
		else{
 %>
 <ul>
	<li><a href="home.jsp">Pagina principala</a></li>
	<li><a href="my_account.jsp">Contul meu</a></li>
	<li><a class="active" href="#">Programare</a></li>
	<li style="float:right"><a class="active" href="logout.jsp">Logout</a></li>
</ul>
 <%
		}
 %>
<!-- Page content -->
  <!-- The Tour Section -->
	<div class="w-white">
		<h2 class="w3-wide w3-center">Programare online</h2>
<form action="AddProgramari" method="post">
 <div class="container" align="center">
  <label><b> Nume: </b> </label><br>
  <input type="text" name="nume" ><br>
  <label><b> Prenume: </b> </label><br>
  <input type="text" name="prenume" ><br>
  <label><b> Telefon: </b> </label><br>
  <input type="number" name="telefon"><br>
  <label><b> Adresa de Email: </b> </label><br>
  <input type="text" name="email"><br>
  <label><b> Data: </b> </label><br>
  <input type="date" name="data"><br>
  
  <label><b> Specializare: </b> </label><br>
  <select name="specializare">

	<option>Alergologie</option>
	<option>Amniocenteza</option>
	<option>Andrologie</option>
	<option>Anestezie</option>
	<option>Recuperare Medicala</option>
	<option>Boli Infectioase</option>
	<option>Camera de Garda</option>
	<option>Cardiologie</option>
	<option>Chirurgia Antepiciorului</option>
	<option>Chirurgia Mainii</option>
	<option>Chirurgia Tiroidei</option>
	<option>Chirurgia Uretei</option>
	<option>Chirurgia Cardio Vasculara</option>
	<option>Chirurgia Generala</option>
	<option>Chirurgie Toracica</option>
	<option>Diabet si Nutritie</option>
	<option>Ecografie</option>
	<option>Genetica</option>
	<option>Ginecologie</option>
	<option>Hematologie</option>
	<option>Kinetoterapie</option>
	<option>Medicina de Urgenta</option>
	<option>Medicina Interna</option>
	<option>Neurologie</option>
	<option>Oftalmologie</option>
	<option>ORL</option>
	<option>Pediatrie</option>
	<option>Stomatologie</option>
	<option>Urologie</option>

  </select><br>
  <label><b> Detalii: </b> </label><br>
 <textarea name="detalii" placeholder="Write something.." style="height:200px"></textarea>
 <br>
 <br>
 </div>
 <div class="wrapper">
    <button type="submit" class="button">Trimite</button>
 </div>
</form> 		
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