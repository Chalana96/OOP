<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<%--  <%@include file="/Header.jsp" %>  --%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link rel="stylesheet" type="text/css" href="style/adminCss.css">
	
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>

	<center>
		<h2>User Login</h2>
		<div>
			<form method="post" action="valLogin" >
		  		E-Mail:<br>
		  		<input type="text" name="uname" placeholder="Type Your E-Mail" class="input button1"><br><br>
		  				  		<input type="submit" value="Login" class="button button1">
			</form><br>
		</div>
	</center>
	<br>


<%-- <jsp:include page="Footer.jsp"></jsp:include> --%>


</body>
</html>