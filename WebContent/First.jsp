<%@page import="Database.DBConnect"%> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
	
<!DOCTYPE html>
<html lang="en">
	<head>
		<title> Payment Page </title>
		
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<link rel="stylesheet" href="https://use.ontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

   		<link rel="stylesheet" type="text/css" href="style/first.css">
   		
    	<jsp:include page="header.jsp"></jsp:include>  
	</head>
<body background="images/bg2.jpg">

 <div class="container">
 <br><br>
 	<header>
  		<h2><i class="fas fa-file-invoice-dollar"></i> Payments</h2>
	</header>
 <br><br>
 <%--Session--%>
 	<%			
		response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");   
		
		if(session.getAttribute("name")==null) 
		{
			response.sendRedirect("login.jsp");
		}
		else
		{
	%>
<div class="row">
	<div class="col-md-8">

   		<br><br>

			<form method="post" action="TestServlet">
				
				<input type="hidden" name="email" id="email" value="<%=session.getAttribute("mail") %>"><br>
					
				<input  class="btn btn-primary" type='submit' name='submit' value='Click here to change your account details'>
			</form>
	</div>
	<div class="col-md-4">
			<h3><small><i class="far fa-money-bill-alt"></i> Total Amount</small></h3>
			<br>
	                        <strong style='color: red; font-weight: bold; font-size: 25px'>Price : Rs 2500.00</strong>
	                   
	                        <input type='hidden' name='total' value=$total>
	                   <br><br><br>
	                       <a href="PaymentMethod.jsp"><input  class="btn btn-primary" type='button' onclick="checkSubmitType()" name='purchase' value='Proceed'></a>
			

			</div>
</div>
</div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<% } %>
</body>
</html>

