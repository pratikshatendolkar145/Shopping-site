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
<body style="background-color: #FFFFF0;">
	<div class="container">

		<jsp:include page="/WEB-INF/jsp/shared/navbar.jsp"></jsp:include>

<h1>Billing Address</h1>

		<table>
			<tr>
				<td><b>City</b></td>
				<td>${bl.city}</td>
			</tr>
			<tr>
				<td><b>State</b></td>
				<td>${bl.state}</td>
			</tr>

			<tr>
				<td><b>District</b></td>
				<td>${bl.dist}</td>
			</tr>

			<tr>
				<td><b>AAddress</b></td>
				<td>${bl.address}</td>
			</tr>

			<tr>
				<td><b>Landmark</b></td>
				<td>${bl.landmark}</td>
			</tr>

			<tr>
				<td><b>Zipcode</b></td>
				<td>${bl.zipcode}</td>
			</tr>
		</table>


		<h1 align="center">Order Status</h1>
		<table align="center">
			<tr>
				<td><b>Email<b></td>
				<td>${od.userEmail}</td>
			</tr>
			<tr>
				<td><b>Order Status</b></td>
				<td>${od.orderStatus}</td>
			</tr>

			<tr>
				<td><b>Order Date</b></td>
				<td>${od.orderDate}</td>
			</tr>

			<tr>
				<td><b>Total Amount</b></td>
				<td>${od.totalAmt}</td>
			</tr>
		</table>
		<br><br>
		<h3 align="right">Your Order Place Successfully...</h3>
	
	</div>
	<br><br><br>
	<!--  /.container -->
	<jsp:include page="/WEB-INF/jsp/shared/footer.jsp"></jsp:include>

</body>
</html>