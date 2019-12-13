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
<title>Create Product</title>
</head>
<body>

	<jsp:include page="_header.jsp"></jsp:include>
	<script type="text/javascript">
		function setInputFilter(textbox, inputFilter) {
			[ "input", "keydown", "keyup", "mousedown", "mouseup", "select",
					"contextmenu", "drop" ].forEach(function(event) {
				textbox.addEventListener(event, function() {
					if (inputFilter(this.value)) {
						this.oldValue = this.value;
						this.oldSelectionStart = this.selectionStart;
						this.oldSelectionEnd = this.selectionEnd;
					} else if (this.hasOwnProperty("oldValue")) {
						this.value = this.oldValue;
						this.setSelectionRange(this.oldSelectionStart,
								this.oldSelectionEnd);
					} else {
						this.value = "";
					}
				});
			});
		}
	</script>
	<div class="container">
		<div>
			<br> <a href="productList">Back to list</a>
			<h2 class="text-center text-info">Product information</h2>
		</div>
		<div class="row">
			<div class="col"></div>
			<div class="col">
				<p class="text-danger">${errorString}</p>
				<form method="POST"
					action="${pageContext.request.contextPath}/createProduct">
					<div class="form-group">
						<input type="text" class="form-control" name="code"
							value="${product.code}" placeholder="Code">
					</div>
					<div class="form-group">
						<input type="text" class="form-control" name="name"
							value="${product.name}" placeholder="Name">
					</div>
					<div class="form-group">
						<input type="text" id="inputPrice" class="form-control"
							name="price" value="${product.price}" placeholder="Price">
					</div>
					<input type="submit" value="Submit" class="btn btn-info" />
					<script>
						setInputFilter(document.getElementById("inputPrice"),
								function(value) {
									return /^-?\d*[.,]?\d*$/.test(value);
								});
					</script>
				</form>
			</div>
			<div class="col"></div>
		</div>
	</div>


</body>
</html>