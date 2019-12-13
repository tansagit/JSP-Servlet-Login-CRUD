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

<style>
</style>





<title>Login</title>
</head>
<body>

	<div class="container">
		<div></div>
		<div class="row">
			<div class="col align-self-start"></div>
			<div class="col align-self-center" style="text-align: center;">
				<div style="background: #3F6898; padding: 50px; margin: 0 auto;">
					<h1 class="text-center text-white">LOGIN PAGE</h1>
					<br>
					<br>
					<form method="post"
						action="${pageContext.request.contextPath}/login">
						<div class="form-group">
							<input type="text" class="form-control" id="exampleInputEmail1"
								name="userName" value="${user.userName}" placeholder="Username">
						</div>
						<div class="form-group">
							<input type="password" class="form-control"
								id="exampleInputPassword1" name="password"
								value="${user.password}" placeholder="Password">
						</div>
						<div class="form-group form-check">
							<input type="checkbox" class="form-check-input "
								id="exampleCheck1" name="rememberMe" value="Y"> <label
								class="form-check-label text-white" for="exampleCheck1">Remember
								me</label>
						</div>
						<button type="submit" class="btn btn-info">Login</button>
						<%-- <a href="${pageContext.request.contextPath}">Cancel</a>--%>
					</form>
				</div>
			</div>
			<div class="col align-self-end"></div>
		</div>

	</div>
	<%-- <jsp:include page="_footer.jsp"></jsp:include> --%>
</body>
</html>