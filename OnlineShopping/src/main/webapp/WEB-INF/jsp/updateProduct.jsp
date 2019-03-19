 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2 align="center">Product Page</h2>
	<form action="editProduct" method="post" enctype="multipart/form-data">
		<table align="center">
			<tr>
				<td>Id :</td>
				<td><input type="text" name="productId" value="${pl.productId }"></td>
			</tr>
			<tr>
				<td>Product Name</td>
				<td><input type="text" name="productName" value="${pl.productName }"></td>
			</tr>
			<tr>
				<td>Product Description</td>
				<td><input type="text" name="productDesc"  value="${pl.productDesc }"></td>
			</tr>
			<tr>
				<td>Price</td>
				<td><input type="text" name="price" value="${pl.price }"></td>
			</tr>
			<tr>
				<td>Quantity</td>
				<td><input type="text" name="quantity"  value="${pl.quantity }"></td>
			</tr>

			<tr>
				<td>Product Image</td>
				<td><input type="file" name="file"  value="${pl.file }"></td>
			</tr>
			<tr>
				<td align="center"><input type="submit" value="Update Product"></td>
			</tr>

		</table>
	</form>

</body>
</html>