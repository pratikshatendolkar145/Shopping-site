<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
table
{
border-collapse:collapse;
width:90%;
}
th,td
{
text-align:left;
padding:8px;
}
tr:nth-child(even)
{
background-color:#D8BFD8;
}
th
{
background-color:#BA55D3;
color:white;
font-family:Adobe Gothic Std B;
font-size:20px;
}
.button{
text-align:center;
background-color:#BC8F8F;
 border-top: 3px solid #CCCCCC;
  border-right: 3px solid #333333;
  border-bottom: 3px solid #333333;
  border-left: 3px solid #CCCCCC;
}
a{
color:#FFFFFF;
}
</style>

</head>
<body>
<div class="container">

		<jsp:include page="/WEB-INF/jsp/shared/navbar.jsp"></jsp:include>
		<br>
		<br>

				<table align="center" border="3">
					<tr>
						<th><h4>Id</h4></th>
						<th><h4>Order Date</h4></th>
						<th><h4>Order Status</h4></th>
						<th><h4>Total Amount</h4></th>
						<th><h4>User Email</h4></th>
						<th><h4>Delete</h4></th>
					</tr>

					<c:forEach var="o" items="${olist}">
						<tr>
							<td>${o.orderId }</td>
							<td>${o.orderDate }</td>
							<td>${o.orderStatus }</td>
							<td>${o.totalAmt }</td>
							<td>${o.userEmail }</td>
							<td class="button"><a href="deleteOrder${o.orderId }">Delete</a></td>
						</tr>
					</c:forEach>
				</table>

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