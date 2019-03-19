<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

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
	background-color: #FFA07A;
}

th {
	background-color: #BDB76B;
	color: white;
	font-size: 20px;
	font-family: Adobe Gothic Std B;
}

input[type=submit] {
	text-align: center;
	background-color: #FA8072;
	border-top: 3px solid #CCCCCC;
	border-right: 3px solid #333333;
	border-bottom: 3px solid #333333;
	border-left: 3px solid #CCCCCC;
	height: 40px;
  width: 200px;
  color: white;
}

h2 {
	border: 5px solid #CCCCCC;
	color:#8B0000;
}

</style>

</head>
<body style="background-color: #FFFFF0;">
<div class="container">

		<jsp:include page="/WEB-INF/jsp/shared/navbar.jsp"></jsp:include>
		<br><br><br>
<form action="editUser" method="GET">

		<table align="center" border="2">
		<tr>
				<td colspan="2" align="center"><h2>Your Profile</h2></td>
				
			</tr>
		
		<tr>
				<td><h6>Id :</h6></td>
				<td><input type="text" name="id" value="${ul.id }"></td>
			</tr>
		
			<tr>
				<td><h6>First Name :</h6></td>
				<td><input type="text" name="firstName" value="${ul.firstName }"></td>
			</tr>
			<tr>
				<td><h6>Last Name :</h6></td>
				<td><input type="text" name="lastName" value="${ul.lastName }"></td>
			</tr>
			<tr>
				<td><h6>Email-ID :</h6></td>
				<td><input type="text" name="email" value="${ul.email }"></td>
			</tr>
			<tr>
				<td><h6>Mobile Number :</h6></td>
				<td><input type="text" name="mobileno" value="${ul.mobileno }"></td>
			</tr>
			<tr>
				<td><h6>UserName :</h6></td>
				<td><input type="text" name="username" value="${ul.username }"></td>
			</tr>
			<tr>
				<td><h6>Password :</h6></td>
				<td><input type="text" name="pass" value="${ul.pass }"></td>
			</tr>

			<tr>
				<td colspan="2"><center><h4><input type="submit" value="Edit"></h4></center></td>
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