<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>Student Result!..</h1>
	 <form action="regserv" method="post"   id="one">

	<input type="email" placeholder="Email"  name="email"> <br>
	<input type="password" placeholder="Password" name="password"><br>
	<input type="submit" value="login" >


	</form>
	
</body>
<style>
  #one{
  	width:100%;
  	height:500px;
  	text-align: center;
  	position: relative;
  	top: 250px;
  	
  }
  h1{
  color:black;
    text-align: center;
    position: relative;
  	top: 200px;
  	
  }
  input{
   	margin-bottom: 30px;
   	width: 250px;
  
  }
  body{
  	background-color: rgb(188, 143, 143);
  }
</style>


</html>