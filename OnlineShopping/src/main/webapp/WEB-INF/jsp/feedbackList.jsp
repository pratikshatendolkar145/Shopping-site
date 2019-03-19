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
width:100%;
}
th,td
{
text-align:left;
padding:8px;
}
tr:nth-child(even)
{
background-color:#f2f2f2;
}
th
{
background-color:#1E90FF;
color:#fff;
font-family:Adobe Gothic Std B;
font-size:20px;
}
.button{
text-align:center;
background-color:#87BEEB;
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
		<br> <br>

		
				<h2 align="center">FeedBack List</h2>
				<table align="center" border="3">
					<tr>
						<th>ID</th>
						<th>User name</th>
						<th>Email</th>
						<th>Mobile No</th>
						<th>Feedback</th>
						<th>Delete</th>
					</tr>

					<c:forEach var="f" items="${flist}">
						<tr>
							<td>${f.fid }</td>
							<td>${f.username }</td>
							<td>${f.email }</td>
							<td>${f.mobileno }</td>
							<td>${f.feedback }</td>
							<td class="button"><a href="deleteFeedlist${f.fid }">delete</a></td>
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