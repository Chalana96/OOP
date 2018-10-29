 <%@page import="Database.DBConnect"%> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title> Payment Page </title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="style/first.css">
<jsp:include page="header.jsp"></jsp:include>

</head>
<body background="images/slide1.jpg">

<%			
		response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
		
		if(session.getAttribute("name")==null) 
		{
			response.sendRedirect("login.jsp");
		}
		else
		{
	%>

 <div class="container">
 <br><br>
 <header>
  <h2><i class="fas fa-file-invoice-dollar"></i> Payments</h2>
</header>
 <br><br>
 <div class="row">
<div class="col-md-8">

   <h3><small><i class="fas fa-user-circle"></i> Your Account Details</small></h3><br><br>
   
 <form name="payment" method="post" action="UpdateUserServlet">
					<input type = "hidden" name = "id" value="<%=request.getParameter("id") %>">
							<div>
							<strong> <i class="fas fa-signature"></i> Name&emsp;&emsp;&emsp;&nbsp;&emsp;&emsp;&emsp;:</strong> <font color = ""> &emsp;&emsp;<input type = "text" name ="name" value="<%=request.getParameter("name") %>" required="required">    </font> 
							</div>
					<br><br>
							<div>
							<strong> <i class="fas fa-at"></i> Email&emsp;&emsp;&emsp;&nbsp;&nbsp;&emsp;&emsp;&emsp;:</strong> <font color = "">&emsp;&emsp;<input type = "text" name ="email" value="<%=request.getParameter("email") %>" required="required"> </font>
							</div>
					<br><br>
							<div>
							<strong><i class="fas fa-map-marker-alt"></i> Address&emsp;&emsp;&emsp;&nbsp;&nbsp;&emsp;&emsp;:</strong> <font color = "">&emsp;&emsp;<input type = "text" name ="address" value="<%=request.getParameter("address") %>" required="required"> </font>
							</div>
					<br><br>
							<div>
							<strong><i class="fas fa-phone"></i> Phone Number&emsp;&emsp;:</strong> <font color = "red">&emsp;&emsp;<input type = "text" name ="phoneNo" value="<%=request.getParameter("phoneNo") %>" required="required"> </font>
							</div>
					<br><br>
					
					<div style="padding-left:100px"><a href="First.jsp"><input  class="btn btn-primary" type='button' style=" width:100px " onclick="checkSubmitType()" name='edit' value='Back'></a>
					<input  class="btn btn-primary" type="submit" style=" width:100px "  name='edit' value='Update'>
					
				</div>						
										
</form>	

</div>


	<div class="col-md-4">
			<h3><small><i class="far fa-money-bill-alt"></i> Total Amount</small></h3>
			<br>
	                        <strong style='color: red; font-weight: bold; font-size: 25px'>Total : Rs 2500.00</strong>
	                   
	                        <input type='hidden' name='total' value=$total>
	                   <br><br><br>
	                       <a href="PaymentMethod.jsp"><input  class="btn btn-primary" type='button' onclick="checkSubmitType()" name='purchase' value='Proceed'></a>
			

			</div>
			</div>
			</div>
			<% } %>
</body>
</html>

