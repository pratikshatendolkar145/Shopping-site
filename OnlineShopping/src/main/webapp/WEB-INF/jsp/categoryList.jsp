<%@page import="test.model.Category"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
align:right;
border-collapse:collapse;
width:50%;
}
th,td
{
text-align:center;
/* text-align:left; */
padding:8px;
}
tr:nth-child(even)
{
background-color:#f2f2f2;
}
th
{

background-color:#F4A460;
color:white;
font-family:Adobe Gothic Std B;
padding: 2px 2px 2px 2px;
}
.button{
text-align:center;
background-color:#D2B48C;
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
						<th><h4>Category Name</h4></th>
						<th><h4>Delete</h4></th>
					</tr>

					<c:forEach var="c" items="${clist}">
						<tr>
							<td>${c.categoryId }</td>
							<td>${c.categoryName }</td>
							<td class="button"><a href="deleteCategory${c.categoryId }">Delete</a></td>
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