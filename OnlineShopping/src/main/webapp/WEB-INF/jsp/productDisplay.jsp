<%-- <%@page import="com.second.model.Product"%>
 --%><%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" charset=ISO-8859-1">
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
background-color:#E8E8FA;
}
th
{
background-color:#483D8B;
color:#fff;
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
		<br>
		<br>

		<div class="row">
			<jsp:include page="/WEB-INF/jsp/shared/sidebar.jsp"></jsp:include>

			<div class="col-lg-9">

				<table align="center" border="3">
					<tr>
						<th>Id</th>
						<th>ProductName</th>
						<th>Product Description</th>
						<th>Price</th>
						<th>Quantity</th>
						<th>Product Image</th>
						<c:if test="${userName==null && adminName!=null}">
							<th>Edit</th>
							<th>Delete</th>
						</c:if>
					</tr>

					<c:forEach var="p" items="${plist}">
						<tr>
							<td>${p.productId }</td>
							<td>${p.productName }</td>
							<td>${p.productDesc }</td>
							<td>${p.price }</td>
							<td>${p.quantity }</td>
							<td><img
								src="<c:url value="resources/images//${p.productName}.jpg"></c:url>"
								height="100px" width="150px"></td>
							<c:if test="${userName==null && adminName!=null}">
								<td class="button"><a href="updateProduct${p.productId }">Edit</a></td>
								<td class="button"><a href="deleteproduct${p.productId }">Delete</a></td>
							</c:if>
						</tr>
					</c:forEach>
				</table>
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