<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/bootstrap.min.css" rel="stylesheet">

<!--  Custom styles for this template -->
<link href="resources/css/myapp.css" rel="stylesheet">
<style type="text/css">
table {
	border-collapse: collapse;
	width: 50%;
}

th, td {
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #FFA07A;
}

th {
	background-color: #BDB76B;
	color: white;
	font-size: 20px;
	font-family: Adobe Gothic Std B;
}

input[type=submit] {
	text-align: center;
	background-color: #FFE4C4;
	border-top: 3px solid #CCCCCC;
	border-right: 3px solid #333333;
	border-bottom: 3px solid #333333;
	border-left: 3px solid #CCCCCC;
}

h2 {
	border: 5px solid #CCCCCC;
	color: #800000;
}
</style>
</head>
<body>
	<div class="container">

		<jsp:include page="/WEB-INF/jsp/shared/navbar.jsp"></jsp:include>
		<br> <br>

		<div class="row">
			<jsp:include page="/WEB-INF/jsp/shared/sidebar.jsp"></jsp:include>

			<div class="col-lg-9">

				<form action="addCategory" method="post">

					<table align="center" border="2">
						<tr>
							<td colspan="2" align="center"><h2>Category</h2></td>
						</tr>
						<tr>
							<td><h5>Category Name :</h5>
							<td><input type="text" name="categoryName"></td>
						</tr>

						<tr>
					<td align="center" colspan="2" class="button"><input
						type="submit" value="Add Category"></td>
				</tr>

					</table>
				</form>
			</div>
			<!-- /.col-lg-9 -->

		</div>
		<!--  /.row -->

	</div>
	<!--  /.container -->
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<jsp:include page="/WEB-INF/jsp/shared/footer.jsp"></jsp:include>


</body>
</html>