<%@ page import="Database.DBConnect"%> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="model.PersonModel"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

	

<title> Update Card Details </title>
<link type="text/css" rel="stylesheet" href="style/style.css" />
	<script src="style/chkValidation2.js"></script>
	
 	  	<jsp:include page="header.jsp"></jsp:include> 


</head>

<body background="images/bg2.jpg">

<%			
		response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
		
		if(session.getAttribute("name")==null) 
		{
			response.sendRedirect("login.jsp");
		}
		else
		{
	%>

	<div>
		<div align="center">
			<br>
			<br>
			<h2>
				<h2>Enter Card details..</h2>
			</h2>
			</br>

			<form name="payment" action="AddNewCreditCard" method="post" onsubmit="return formValidate()">
				<div class="form-group col-md-6"  align="center">
				
					<label> <b>Card Number</b><input type="text" name="cardnumber" id="number" class="form-control"/></label> <br/>
					
				    <label> <b> Expiration date </b>	</label>
					
						<div class="row"  align="center">
							<div class="col"  align="center">
								
							
							</div>
							
							<div class="col">
								<input type="text" name="month" id="month"  class="form-control" placeholder="MM">
							</div>

							<div class="col">
								<input type="text" name="year" id="year" class="form-control" placeholder="YY"><br/>
							</div>
						</div>

				<label> <b>Enter security code </b> &emsp;<input type="text" name="securityCode" id="code" class="form-control"></label> 
				

				<div class="input-checkbox" align="center" >
					<input type="checkbox" id="terms"  name="terms" > <label for="terms">
						<span></span><b> I've read and accept the  <a href="#">terms & conditions </b></a>
					</label>


				</div>
				<input type = "hidden" name ="userId" value="<%=session.getAttribute("mail") %>" /> 
				
				<br> <input type="submit"  class="btn btn-primary" value="Pay for Your product"></a>
				
		</div>
		</form>
				<div style="padding-left:100px"><a href="PaymentMethod.jsp"><input  class="btn btn-primary" type='button' style=" width:100px " onclick="checkSubmitType()" name='edit' value='Back'></a>

		
	</div>
	</div>

<%} %>
	<%-- 	<jsp:include page="Footer.jsp"></jsp:include> --%>
</body>
</html>