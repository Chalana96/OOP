 <%@page import="Database.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<!DOCTYPE html>
<html lang="en">
	<head>
		<title> Header </title>
	</head>	

<style>
#mySidenav a {
	position: fixed; /* Position them relative to the browser window */
	left: -80px; /* Position them outside of the screen */ transition :
	0.3s; /* Add transition on hover */
	padding: 8px; /* 15px padding */
	width: 100px; /* Set a specific width */
	text-decoration: none; /* Remove underline */
	font-size: 15px; /* Increase font size */
	color: white; /* White text color */
	border-radius: 0 5px 5px 0;
	transition: 0.3s;
	/* Rounded corners on the top right and bottom right side */
}

#mySidenav a:hover {
	left: 0; /* On mouse-over, make the elements appear as they should */
}

/* The about link: 20px from the top with a green background */
#about {
	top: 380px;
	background-color: #4CAF50;
}

#blog {
	top: 415px;
	background-color: #2196F3; /* Blue */
}

#projects {
	top: 450px;
	background-color: #f44336; /* Red */
}

#contact {
	top: 485px;
	background-color: #555 /* Light Black */
}

a {
	text-decoration: none;
	color: #008CBA;
}

.topnav {
	background-color: #008CBA;
	overflow: visible;
}

.topnav a {
	float: left;
	display: block;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	font-size: 17px;
}

.active {
	background-color: navy;
	color: white;
}

.dropdown {
	float: left;
	overflow: visible;
}

/* Style the dropdown button to fit inside the topnav */
.dropdown .dropbtn {
	font-size: 17px;
	border: none;
	outline: none;
	color: white;
	padding-left:1px;
	padding-right:1px;
	background-color: inherit;
	font-family: inherit;
	margin: 0;
}

/* Style the dropdown content (hidden by default) */
.dropdown-content {
	display: none;
	position: absolute;
	background-color: #008CBA;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 10;
}

/* Style the links inside the dropdown */
.dropdown-content a {
	float: none;
	color: white;
	
	text-decoration: none;
	display: block;
	text-align: left;
}

.dropdown-content a:hover {
	background-color: white;
	color: #008CBA;
}

/* Show the dropdown menu when the user moves the mouse over the dropdown button */
.dropdown:hover .dropdown-content {
	display: block;
}
}
}
</style>
<body style="background-color: white; color: white;">
<!-- <div style="position: fixed;background-color: white;top:0px;"> -->
<!-- 	<div style="position: absolute; right: 30px;"> -->

<!-- 		<a href="viewProfile.jsp"> My Account </a> &nbsp; | &nbsp; -->
<!-- 		<a href=" Login.jsp"> Login </a> &nbsp; | &nbsp;  -->
<!-- 		<a href="Register.jsp">Sign Up </a> &nbsp; | &nbsp;  -->
<!-- 		<a href="AboutUs.jsp">About Us </a> -->
		
		
<!-- 	</div> -->

	<table align="center" width=100%>
		<tr>
			<td width=100% style="position: relative; top: 30px; z-index: -1"><marquee scrollamount="10">
					<h1 align="center" style="color: #008CBA;; font-size: 60px; font-family: Gabriola"> Auto Doctor Care Center <img src="images/logo.png" width=100px height=50px>
					</h1>
				</marquee></td>

		</tr>

	</table>
	<div id="search" style="position: static;">
		<form method="POST" action="PaymentMethod.jsp">
			<table align="right" width="50%">
				<tr>

					<td style="width: 100%"><input type="text" name="search"
						placeholder="Search.."
						style="position: absolute; top: 100px; left: 190px; color: #008CBA; background-position: 10px 10px; width: 500px; box-sizing: border-box; border: 2px solid #ccc; border-radius: 4px; font-size: 16px; background-color: #cccccc; background-position: 10px 10px; background-repeat: no-repeat; padding: 15px 40px 12px 60px; cursor: hand; margin-left: 450px;">
					</td>

					<td><input type="submit" name="submit" id="submit"value="Search" style="border-radius:4px;position: absolute; top: 100px; left: 1065px; cursor: pointer; background-color: #008CBA; border: none; color: white; padding: 15px 32px; text-align: center; text-decoration: none; display: inline-block; font-size: 16px;">
					<td align="right" style="margin-left: 1000px">
						<h3 style="color: white"></h3>
					</td>

				</tr>
			</table>
		</form>

	</div>
	<!-- This is navigation bar -->

	<div class="topnav" id="myTopnav"
		style="width: 101%; position: absolute; top: 160px;right: 1px">

		<a href="First.jsp">|&nbsp;&nbsp;Home</a>

			
		<table align="right">
				<%			
		response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
		
		if(session.getAttribute("name")==null) 
		{
			response.sendRedirect("login.jsp");
		}
		else
		{
	%>
		

				<tr
					style="background-color: #008cba; position: absolute; top:55px; right: 0px;border:solid;">
							<form method="post" action="login">
					<td align="center" style="width: 260px; height: 30px">Logged as: <%=session.getAttribute("name")%> 
					
					<a href="login.jsp">
 					<input type="button" value="Logout" style="border-radius:4px;position: relative; width: 100px; padding: 5px; border: 2px solid black; border-color: #008CBA; color: #008CBA; background-color: white; font-size: 16px; cursor: pointer;"> 
     				</a>
					
					</td>
</form>
				</tr>
		<%} %>
			</table>
	</div>
</div>

<div style="height: 200px">

</div>
</body>
</html>