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
<link href="resources/css/signin.css" rel="stylesheet">
</head>
<body style="background-color: #FFFFF0;">
	<div class="container">

		<jsp:include page="/WEB-INF/jsp/shared/navbar.jsp"></jsp:include>
		<br><br><br>

				
					<form action=loginUser method="post" class="form-signin">
					
						<h2 class="form-signin-heading">Sign in</h2>
						
						<input type="text" class="form-control" name="userName" placeholder="Email Address" required="" autofocus="" /> 
						<input type="password" class="form-control" name="pass" placeholder="Password" required="" /> 
						
						<label class="checkbox">
						<input type="checkbox" value="remember-me" id="rememberMe" name="rememberMe"> Remember me
						</label>
						
						<button class="btn btn-lg btn-primary btn-block" type="submit" style="background-color:#000080">Login</button>
						<br>
						<p>Not a user..?<a href="register">   Create an account</a></p>
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