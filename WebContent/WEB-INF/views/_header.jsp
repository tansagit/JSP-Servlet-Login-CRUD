<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<div style="background: #DCEFF5">
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand text-info font-weight-bold" href="#">LTM</a>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link text-info"
					href="${pageContext.request.contextPath}/home">Home <span
						class="sr-only">(current)</span></a></li>
				<li class="nav-item"><a class="nav-link text-info"
					href="${pageContext.request.contextPath}/productList">Product
						List</a></li>

				<li class="nav-item"><a class="nav-link text-info"
					href="${pageContext.request.contextPath}/userInfo">Account
						Information</a></li>
			</ul>
			<span class="navbar-text text-dark"> Hello,
				${loginedUser.userName} </span>
		</div>
	</nav>
</div>