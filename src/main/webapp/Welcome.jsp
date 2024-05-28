<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
* {
	padding: 0px;
	margin: 0px;
	box-sizing: border-box;
}

#main {
	height: 100vh;
	width: 100%;
	border: 1px solid;
	background: linear-gradient(hotpink,white,skyblue);
}

#title {
	margin: 150px auto;
	font-size: 40px;
	color: golden;
	border: none;
	text-shadow: 0px 0px 10px red;
	text-align: center;
	font-family: sans-serif;
}

a {
	background-color: green;
	color: white;
	font-size: 30px;
	padding: 5px;
	border-radius: 20px;
	text-decoration: none;
	margin-left: 45%;
	text-shadow: 0px 0px 10px red;
}

a:hover {
	background-color: rgba(0, 255, 0, 0.5);
	color: red;
}
</style>
</head>

<body>
	<div id="main">
		<div id="title">
			<h1>WEL-COME TO CARDEKHO</h1>
		</div>
		<a href="fetch_car.jsp">SHOW CARS</a>
	</div>
</body>
</html>