<%@page import="java.util.ArrayList"%>
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
}
th,td
{
padding:8px;
}
tr:nth-child(even)
{
background-color:#f2f2f2;
}
th
{
background-color:#CD853F;
color:white;
font-family:Calibri;
}
.button{
text-align:center;

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
		<br>
		<h2 align="center">Order page</h2>
		<%
			ArrayList<Double> priceList = (ArrayList<Double>) session.getAttribute("priceList");
			ArrayList<Double> price = (ArrayList<Double>) session.getAttribute("pricel");
			ArrayList<Integer> qty = (ArrayList<Integer>) session.getAttribute("qtyl");
			int count = 0;
		%>
		<form>
			<table align="center" border="3" cellspacing="2" cellpadding="10">
				<tr>
					<td>ID</td>
					<td>Product Name</td>
					<td>PricePerProduct</td>
					<td>Quantity</td>
					<td>Total Price /Product</td>
				</tr>
				<c:forEach var="c" items="${cl }">
					<tr>
						<td>${c.productId }</td>
						<td>${c.productName}</td>
						<td><%=price.get(count)%></td>
						<td><%=qty.get(count)%></td>
						<td><%=priceList.get(count)%></td>


					</tr>
					<%
						count++;
					%>
				</c:forEach>
				<tr>
					<td align="right" colspan="5" rowspan="3"><h4>TotalAmount
							: ${totalAmount }</h4></td> 
				
				</tr>
			</table>
			<%-- <center>
				<input type="submit" value="Place Order"
					style="height: 50px; width: 555px; font-size: 20px; background-color: #FFA500; font: bold">
			</center> --%>
			
<br>
		</form>
		<h2 align="center">Billing Address</h2>
		<form action="updateAddress" method="post">
			<table align="center" border="3" cellspacing="2" cellpadding="10" width="500">
				
				
					
					<input type="hidden" name="bilingAddressId" style="width:300px;" value="${adr.bilingAddressId }">
				
				
				<tr>
				
					<td align="center" style="width:200px;">Email</td>
					<td><input type="text" name="userEmail" style="width:300px;" value="${userName }"></td>
				</tr>
				<tr>
					<td align="center" style="width:200px;">Address</td>
					<td><textarea name="address" style="width:300px; height:100px" >${adr.address }</textarea></td>
				</tr>
				<tr>
					<td align="center" style="width:200px;">City</td>
					<td><input type="text" name="city" style="width:300px;" value="${adr.city }"></td>
				</tr>
				<tr>
					<td align="center" style="width:200px;">Zipcode</td>
					<td><input type="text" name="zipcode" style="width:300px;" value="${adr.zipcode }"></td>
				</tr>
				<tr>

					<td align="center" style="width:200px;">State</td>
					<td><input type="text" name="state" style="width:300px;" value="${adr.state }"></td>
				</tr>
				<tr>
					<td align="center" style="width:200px;">District</td>
					<td><input type="text" name="dist" style="width:300px;" value="${adr.dist }"></td>
				</tr>
				<tr>
					<td align="center" style="width:200px;">Landmark</td>
					<td><input type="text" name="landmark" style="width:300px;" value="${adr.landmark }"></td>
				</tr>
			</table>

			<center>
				<input type="submit" value="Continue"
					style="height: 50px; width: 400px; font-size: 20px; background-color: green; font: bold;">
			</center>

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
	<jsp:include page="/WEB-INF/jsp/shared/footer.jsp"></jsp:include>


</body>
</html>