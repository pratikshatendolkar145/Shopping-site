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
	width: 60%;
}

th, td {
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #87CEEB;
}

th {
	background-color: #4682B4;
	color: white;
	font-size: 20px;
	font-family: Adobe Gothic Std B;
}

input[type=submit] {
	text-align: center;
	background-color: #4682B4;
	border-top: 3px solid #CCCCCC;
	border-right: 3px solid #333333;
	border-bottom: 3px solid #333333;
	border-left: 3px solid #CCCCCC;
	height: 40px;
  width: 200px;
  color: white;
}

h2 {
	border: 5px solid #F0F8FF;
	color:#00008B;
}

</style>


</head>
<body style="background-color: #FFFFF0;">
	<div class="container">
		<jsp:include page="/WEB-INF/jsp/shared/navbar.jsp"></jsp:include>
		<br><br>
			<form action="editUser" method="GET">

				<table align="center" border="2">
					<tr>
						<td colspan="2" align="center"><h2>CONTACT FORM</h2></td>

					</tr>

					<tr>
						<td><h6>Name</h6></td>
						<td><input type="text" name=""></td>
					</tr>

					<tr>
						<td><h6>Email</h6></td>
						<td><input type="text" name=""></td>
					</tr>
					<tr>
						<td><h6>Mobile</h6></td>
						<td><input type="text" name=""></td>
					</tr>
					<tr>
						<td><h6>Message</h6></td>
						<td><textarea name="productDesc" style="width: 70%" rows="5"></textarea></td>
					</tr>
					<tr>
						<td colspan="2"><center>
								<h4>
									<input type="submit" value="Submit">
								</h4>
							</center></td>
					</tr>

				</table>
			</form>


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