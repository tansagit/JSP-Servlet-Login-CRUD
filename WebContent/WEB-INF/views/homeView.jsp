<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script type="text/javascript"
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Home Page</title>
</head>
<body>
	<jsp:include page="_header.jsp"></jsp:include>

	<div class="container">
		<br>
		<h3 class="text text-info">WEB Demo Login + CRUD with JSP/Servlet</h3>
		<br> <b>It includes the following functions:</b>
		<br>
		<br>
		<ul class="list-group">
			<li class="list-group-item">Login</li>
			<li class="list-group-item">Storing user information in cookies</li>
			<li class="list-group-item">Display product list</li>
			<li class="list-group-item">Add new product</li>
			<li class="list-group-item">Edit Product</li>
			<li class="list-group-item">Delete Product</li>
		</ul>
	</div>
</body>
</html>