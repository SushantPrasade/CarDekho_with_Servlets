<%@page import="com.jspiders.cardekhowithservlets.jdbc.carJDBC"%>
<%@page import="com.jspiders.cardekhowithservlets.objects.carObject"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
* {
	margin: 0px;
	padding: 0px;
	box-sizing: border-box;
}

header {
	width: 100%;
	height: 60px;
	border: 1px solid;
	background-color: rgba(0, 0, 0, 0.5);
}

body {
	background-image:
		url("https://images.unsplash.com/photo-1605559424843-9e4c228bf1c2?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGNhcnN8ZW58MHx8MHx8fDA%3D");
	background-position: center;
	background-attachment: fixed;
	background-repeat: no-repeat;
	background-size: cover;
}

table {
	background-color: transparent;
	color: white;
	box-shadow: 2px 2px 10px white;
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
	margin-top: 15px
}

a {
	height: 25px;
	width: 50px;
	border: none;
	padding: 5px;
	border-radius: 50px;
	margin-left: 10px;
	font-size: 15px;
	font-weight: 900;
	font-family: sans-serif;
	text-decoration: none;
	background-color: rgba(0, 255, 0, 0.5);
	color: white;
	box-shadow: 0px 0px 10px white;
}

a:hover {
	background-color: rgba(255, 0, 0, 0.5);
	box-shadow: 0px 0px 10px yellow;
}
</style>
</head>
<body>

	<div align="center">
		<header>
			<div id="link">
				<a href="add_car.jsp">ADD CAR</a> <a href="delete_car.jsp">DELETE
					CAR</a> <a href="fetch_car.jsp">FETCH CAR</a> <a href="Exit.jsp">EXIT</a>
			</div>
		</header>
		<h1 style="color: white; font-size: 50px;">Available Cars</h1>
	</div>
	<%
	List<carObject> cars = carJDBC.fetchCar();
	if (cars != null && cars.size() > 0) {
	%>
	<div align="center">
		<table border="1">
			<tr style="padding: 20px">
				<th>ID</th>
				<th>Name</th>
				<th>Brand</th>
				<th>Price</th>
			</tr>
			<%
			for (carObject car : cars) {
			%>
			<tr>
				<td style="background-color: rgba(0,0,0,0.3);"><%=car.getId()%></td>
				<td><%=car.getName()%></td>
				<td><%=car.getBrand()%></td>
				<td><%=car.getPrice()%></td>
			</tr>
			<%
			}
			%>
		</table>

	</div>
	<%
	} else {
	%>
	<div align="center">
		<h1 style="color: blue;">Car details unavailable</h1>
	</div>
	<%
	}
	%>


	<div align="center" style="padding-top : 5px">
		<form action="update_car" method="post">
			<table border="1px solid" >
				<tr>
					<td colspan="2" style="color: white; background-color: rgba(0, 0, 0, 0.5); font-weight: 900;">Enter Car id with details to update</td>
				</tr>
				<tr>
					<th>Id</th>
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
			<input type="submit" value="UPDATE"
				style="color: white; background-color: green; font-size: 20px; padding: 5px; border-radius: 20px; font-weight: 900; margin-top: 5px;">
		</form>

	</div>

	<%
	String message = (String) request.getAttribute("message");
	if (message != null) {
	%>
	<div align="center">
		<h1 style="color: white;"><%=message%></h1>
	</div>
	}
	<%
	}
	%>

</body>
</html>