<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
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
	background-color: #F08080;
	color:#fff;
}

th {
	background-color: #BDB76B;
	color: white;
	font-size: 20px;
	font-family: Adobe Gothic Std B;
}

input[type=submit] {
	text-align: center;
	background-color: #DC143C;
	border-top: 3px solid #CCCCCC;
	border-right: 3px solid #333333;
	border-bottom: 3px solid #333333;
	border-left: 3px solid #CCCCCC;
	height: 40px;
  width: 200px;
  color: white;
}

h2 {
	border: 5px solid #FFE4E1;
	color:#8B0000;
}

</style>
</head>
<body>

	<div class="container">

		<jsp:include page="/WEB-INF/jsp/shared/navbar.jsp"></jsp:include>
		<br> <br>
		<form action="addProduct" method="post" enctype="multipart/form-data">
			<table align="center" cellspacing="6" cellpadding="6" border="2">
			<tr>
			<td colspan="2" align="center"><h2>Product</h2></td>
			</tr>
				<tr>
					<td><h5>Product Name</h5></td>
					<td><input type="text" name="productName"></td>
				</tr>
				<tr>
					<td><h5>Category</h5></td>
					<td><select name="categoryId">
					 <c:forEach var="c" items="${clist }">
							<option value="${c.categoryId}">${c.categoryName }</option>
						</c:forEach>
					</select></td>
				</tr>
				<tr>
					<td><h5>Product Description</h5></td>
					<!-- <td><input type="text" name="productDesc"></td> -->
					<td><textarea name="productDesc" style="width: 70%" rows="5"></textarea></td>
				</tr>
				<tr>
					<td><h5>Price</h5></td>
					<td><input type="text" name="price"></td>
				</tr>
				<tr>
					<td><h5>Quantity</h5></td>
					<td><input type="text" name="quantity"></td>
				</tr>
				<tr>
					<td><h5>Product Image</h5></td>
					<td><input type="file" name="file"></td>
				</tr>
				<tr>
					<td align="center" colspan="2" class="button"><input
						type="submit" value="Add Product"></td>
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
	<jsp:include page="/WEB-INF/jsp/shared/footer.jsp"></jsp:include>
</body>
</html>