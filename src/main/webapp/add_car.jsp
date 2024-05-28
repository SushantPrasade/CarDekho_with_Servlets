<%@page import="com.jspiders.cardekhowithservlets.jdbc.carJDBC"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cardekhowithservlets</title>
<style type="text/css">
*{
	margin: 0px;
	padding: 0px;
	box-sizing: border-box;
}
header{
	width:  100%;
	height: 60px;
	border: 1px solid;
	background-color: rgba(0,0,0,0.5);
	
}
body {
	background-image:
		url("https://s3.amazonaws.com/the-drive-staging/message-editor/1528475120280-15-bugattichiron_d610129.jpg");
	background-position: center;
	background-attachment: fixed;
	background-repeat: no-repeat;
	background-size: cover;
}

table {
	background-color: transparent;
	color: white;
	box-shadow: 2px 2px 10px white;
	box-sizing: border-box;
	padding: 20px;
	border-radius: 10px;
}

th, td {
	padding: 10px 30px;
	font-size: 20px;
	background-color: rgba(0, 255, 255, 0.3);
	color: white;
	border-radius: 10px;
	
}

th {
	background-color: rgba(255, 0, 0, 0.5);
	color: white;
	border-radius: 10px;
}

table :hover {
	box-shadow: 2px 5px 5px red;
}

#link {
	margin-left: 55%;
	margin-top: 15px;
}

a {
	height: 25px;
	width: 50px;
	border: none;
	padding: 5px;
	border-radius: 50px;
	margin-left : 10px;
	font-size: 15px;
	background-color : rgba(0,255,0,0.5);
	font-weight: 900;
	font-family: sans-serif;
	text-decoration: none;
	color: white;
	box-shadow: 0px 0px 10px white;
	
}

a:hover {
	background-color : rgba(255,0,0,0.5);
	box-shadow: 0px 0px 10px yellow;
}

input {
	background-color: rgba(0, 0, 0, 0.7);
	color: white;
	font-weight: 900;
}
</style>
</head>
<body>
	<div align="center" id="main";>
	<header>
			<div id="link">
				<a href="fetch_car.jsp">FETCH CAR</a> <a href="update_car.jsp">UPDATE
					CAR</a> <a href="delete_car.jsp">DELETE CAR</a> <a href="Exit.jsp">EXIT</a>
			</div>
		</header>
		<h1 style="color: white; font-size: 50px;">Add the Cars</h1>
		<div align="center">
			<form action="add_car" method="post">
				<table>
					<tr>
						<th>ID</th>
						<td><input type="text" name="id" required="required"></td>
					</tr>
					<tr>
						<th>Name</th>
						<td><input type="text" name="name" required="required"></td>
					</tr>
					<tr>
						<th>Brand</th>
						<td><input type="text" name="brand" required="required"></td>
					</tr>
					<tr>
						<th>Price</th>
						<td><input type="text" name="price" required="required"></td>
					</tr>
				</table>
				<input type="submit" value="SUBMIT"
					style="color: white; background-color: green; font-size: 20px; padding : 5px; border-radius: 20px; font-weight: 900; margin-top: 5px;">
			</form>
		</div>
		<%!String message;%>
		<%
		message = (String) request.getAttribute("message");
		%>
		<div align="center">
			<%
			if (message != null) {
			%>
			<h1 style="color: white;"><%=message%></h1>
			<%
			}
			%>
		</div>
	</div>
</body>
</html>