<%@page import="Database.DBConnect"%> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<link rel="stylesheet" type="text/css" href="style/style.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		
		<title>Bill</title>

<style type="text/css">

#myProgress {
  width: 100%;
  background-color: #ddd;
}

#myBar {
  width: 10%;
  height: 30px;
  background-color: #4CAF50;
  text-align: center;
  line-height: 30px;
  color: white;
}  
#btn {
    background-color: DodgerBlue;
    border: none;
    color: white;
    padding: 12px 30px;
    cursor: pointer;
    font-size: 20px;

}
</style>



	</head>
	
<body background="images/bg2.jpg">
	<div class="noPrint">
  		<jsp:include page="header.jsp"></jsp:include>  

	<h1>Payment Successful!</h1>
	<br>
	</div>
	
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
			
<div align="center">

	<table> 
	<th>Payment Receipt</th> 
			
			<tr>
			<td>Payment Method : </td>
			 <td> <%=db.rs.getString("cardType")%></td>
			</tr>
			
			<tr>
						
			<tr>
			<td>Card Number    : </td>
			<td><%=db.rs.getString("cardNumber")%></td>
			</tr>		
	</table>		
			<%
		}
			
		}catch(Exception e){
			
		}
	
	%>

<div id="myProgress">
  <div id="myBar">0%</div>
</div>
<br>
<button  class="btn" onclick="move()"><i class="fa fa-download" ></i> Download</button>
</div>

<a href="UpdateCard.jsp"><input  class="btn btn-primary" type='button' style=" width:100px "name='edit' value='Back'></a>

<script>
function move() {
  var elem = document.getElementById("myBar");   
  var width = 10;
  var id = setInterval(frame, 10);
  function frame() {
    if (width >= 100) {
      clearInterval(id);
    } else {
      width++; 
      elem.style.width = width + '%'; 
      elem.innerHTML = width * 1  + '%';
    }
  }
}
</script>
</div>

	
	<div class="noPrint">
		<%-- <jsp:include page="Footer.jsp"></jsp:include> --%>
	</div>

</body>
</html>