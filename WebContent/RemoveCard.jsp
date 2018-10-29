<%@page import="javax.swing.JOptionPane"%>
<%@page import="Database.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

</head>
<body>
<%
	System.out.println("Remove page");
	String card = request.getParameter("cardNo").toString();

	DBConnect db = new DBConnect();
	try{
		
		String q = "delete from updatecarddetails where cardNumber = '"+card+"'";
		System.out.println(q);
		db.st.executeUpdate(q);
		JOptionPane.showMessageDialog(null, "Card deleted");
		response.sendRedirect("PaymentMethod.jsp");
	}catch(Exception e ){
		e.printStackTrace();
	}
		

%>


<body background="images/bg2.jpg">
</html>