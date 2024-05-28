<%@page import="com.jspiders.cardekhowithservlets.jdbc.carJDBC"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<%@page import="com.jspiders.cardekhowithservlets.objects.carObject"%>
<%@ page import="com.jspiders.cardekhowithservlets.cardekho.fetchCar"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Car Details</title>
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
body{
	background-image: url("https://img.philkotse.com/2023/03/23/O3IWXvly/design-copy-c8c6_wm.png");
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
th, td{
	padding: 10px 30px;
	font-size: 20px;
	background-color: rgba(0,255,255,0.3);
	color: white;
	border-radius: 10px;
}
th{
background-color: rgba(255,0,0,0.5);
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


</style>
</head>
<body>
<div align="center">
<header>
			<div id="link">
				<a href="add_car.jsp">ADD CAR</a> <a href="update_car.jsp">UPDATE
					CAR</a> <a href="delete_car.jsp">DELETE CAR</a> <a href="Exit.jsp">EXIT</a>
			</div>
		</header>
<h1 style="color: white ; font-size: 50px; ">Available Cars</h1>
</div>
<%
    List<carObject> cars = carJDBC.fetchCar();
    if (cars != null && cars.size()>0) {
%>
    <div align="center">
        <table border="1">
            <tr style="padding: 20px">
                <th>ID</th>
                <th>Name</th>
                <th>Brand</th>
                <th>Price</th>
            </tr>
            <% for (carObject car : cars) { %>
            <tr>
                <td style="background-color: rgba(0,0,0,0.3);"><%= car.getId() %></td>
                <td><%= car.getName() %></td>
                <td><%= car.getBrand() %></td>
                <td><%= car.getPrice() %></td>
            </tr>
            <% } %>
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
</body>
</html>