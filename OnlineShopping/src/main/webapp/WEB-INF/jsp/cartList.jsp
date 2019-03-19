<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
width:100%;
}
th,td
{
text-align:center;
padding:8px;
}
tr:nth-child(even)
{
background-color:#F0E68C;
}
th
{
background-color:#BDB76B;
color:white;
font-size:20px;
font-family:Adobe Gothic Std B;
}
.button{
text-align:center;
background-color:#FFFACD;
 border-top: 3px solid #CCCCCC;
  border-right: 3px solid #333333;
  border-bottom: 3px solid #333333;
  border-left: 3px solid #CCCCCC;
}
</style>


</head>
<body style="background-color: #FFFFF0;">
	<div class="container">

		<jsp:include page="/WEB-INF/jsp/shared/navbar.jsp"></jsp:include>
		<br> <br>

		<div class="row">
			<jsp:include page="/WEB-INF/jsp/shared/sidebar.jsp"></jsp:include>

			<div class="col-lg-9">

				<h2 align="center">CartList Page</h2>

				<form action="placeOrder" method="post">

					<table align="center" border="4">

						<tr>
							<th>Id</th>
							<th>Product Name</th>
							<th>Quantity</th>
							<th>Product Description</th>
							<th>Price</th>
							<th>Delete</th>
						</tr>
						<c:forEach var="c" items="${cl }">
							<tr>
								<td>${c.productId }</td>
								<td>${c.productName}</td>
								<td><input type="text" name="qty" value="1"></td>
								<td>${c.productDec}</td>
								<td>${c.price}</td>
								<input type="hidden" name="price" value="${c.price}">
								<td class="button"><a style="color:#000000;" href="deleteCart${c.productId}">delete</a></td>
							</tr>
						</c:forEach>
						<tr>
							<td align="right" colspan="6"><h5><input type="submit"
								value="PROCEED TO BUY" style="background: #FFA500; width:45%;"></h5></td>
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