<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<title>Product List</title>
</head>
<body>

	<jsp:include page="_header.jsp"></jsp:include>

	<div class="container">
		<div>
		<br>
			<h3 class="text-center text-info">Products List</h3>
		</div>
		<div class="row">
			<div class="col-3"></div>
			<div class="col-6">
				<p class="text-danger">${errorString}</p>
				<table class="table table-bordered">
					<thead class="thead-light">
						<tr>
							<th>Code</th>
							<th>Name</th>
							<th>Price</th>
							<th colspan="2" style="text-align:center">Actions</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${productList}" var="product">
							<tr>
								<td><c:out value="${product.code} " /></td>
								<td><c:out value="${product.name} " /></td>
								<td><c:out value="${product.price} " /></td>
								<td style="text-align:center"><a class="btn btn-info" href="editProduct?code=${product.code }">Edit</a></td>
								<td style="text-align:center"><a class="btn btn-danger" href="deleteProduct?code=${product.code }" onclick="return confirm('Are you sure you want to delete this Record ?')">Delete</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

				<a class="btn" style="background:#3F6898;background-border:#3F6898;color:white" href="createProduct">Add new product</a>

			</div>
			<div class="col-3"></div>
		</div>
	</div>

</body>
</html>