<%@page import="Database.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="CSS/Styles.css">
<link rel="stylesheet" type="text/css" href="CSS/adminCss.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

<style>
.input[type=button] {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 8px 16px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    cursor: pointer;
}



.button3 {
    background-color: white; 
    color: black; 
    border: 2px solid #f44336;
}

.button3:hover {
    background-color: #f44336;
    color: white;
}
#pay {
color : black;
}


}
</style>

</head>
<body background="images/bg2.jpg">

	<jsp:include page="header.jsp"></jsp:include>
	
	<div style="min-height: 53% ">	

		
	<div align="center">
	<h1>Payment Methods</h1>
	
	<h3>Select the card</h3>
	
	<form method ="POST"  encrypt="multipart/form-data">
	
	<table align="center" id="customers" style="text-align: center; width: 50%;color: gold" >
	<tr>
	
	</tr>
	<tr style="background-color:#4CAF50; color:black">
	<td><b>Select</b></td>
	<td><b>Card Type</b></td>
	<td><b>Card Number</b></td>
	<td><b>Remove</b></td>
	
	
	</tr>
	
	
	<%
		try{
			String mail = session.getAttribute("mail").toString();
			DBConnect db = new DBConnect();
			String q ="select * from updatecarddetails where VEmail = '"+mail+"'";
			System.out.println(q);
			db.rs = db.st.executeQuery(q);
			
		while(db.rs.next()){
			System.out.println(db.rs.getString("cardType"));
			
			%>
			
			<tr>
			<td><input type="radio" name ="radio"></td>
			<td><%=db.rs.getString("cardType") %></td>
			<td><%=db.rs.getString("cardNumber") %></td>
			
			 <%
			 String cardNo = db.rs.getString("cardNumber");
			 %>
			
			<td><a href = "RemoveCard.jsp?cardNo=<%=cardNo %>"><Input type ="button" class="button button3" value="Remove"></a></td>
			
			</tr>
			
	
			<%
		}
			
		}catch(Exception e){
			
		}
	
	%>
	</table>
	</form>
	<br>
	
	<form  method="post">
	<a href = "UpdateCard.jsp" ><input class="button button1" type="button" name="addcard" value="Add New Card"></a>
	</form> </br>
		<div style="padding-left:100px"><a href="ViewBill.jsp"><input  class="btn btn-primary" type='button' style=" width:100px " onclick="checkSubmitType()" name='edit' value='View Details'></a>
		
	</div>
	
</div>
<%-- <jsp:include page="Footer.jsp"></jsp:include> --%>
</body>
</html>