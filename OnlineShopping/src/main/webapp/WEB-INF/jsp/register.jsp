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

</head>
<body>
	<div class="container">

		<jsp:include page="/WEB-INF/jsp/shared/navbar.jsp"></jsp:include>
		<br><br>

		<div class="row">
			<jsp:include page="/WEB-INF/jsp/shared/sidebar.jsp"></jsp:include>

			<div class="col-lg-9">

				
				<form action="addUser" method="GET">
					<table align="center">
						<tr>
							<td>First Name :</td>
							<td><input type="text" name="firstName"></td>
						</tr>
						<tr>
							<td>Last Name :</td>
							<td><input type="text" name="lastName"></td>
						</tr>
						<tr>
							<td>Email-ID :</td>
							<td><input type="text" name="email"></td>
						</tr>
						<tr>
							<td>Mobile Number :</td>
							<td><input type="text" name="mobileno"></td>
						</tr>
						<tr>
							<td>UserName :</td>
							<td><input type="text" name="username"></td>
						</tr>
						<tr>
							<td>Password :</td>
							<td><input type="text" name="pass"></td>
						</tr>

						<tr>
							<td><input type="submit" value="Submit"></td>
						</tr>

					</table>
				</form>
			</div>
			<!-- /.col-lg-9 -->

		</div>
		<!--  /.row -->

	</div>
	<!--  /.container -->
	<br><br><br><br><br><br><br><br><br><br><br>
	<jsp:include page="/WEB-INF/jsp/shared/footer.jsp"></jsp:include>



</body>
</html>