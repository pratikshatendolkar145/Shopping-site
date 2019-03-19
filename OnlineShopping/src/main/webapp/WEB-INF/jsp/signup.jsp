<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href=resources/css/signup.css rel='stylesheet'>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/bootstrap.min.css" rel="stylesheet">

<!--  Custom styles for this template -->
<link href="resources/css/myapp.css" rel="stylesheet">
<style type="text/css">
a{
color:#FFFFFF;
}
h1{
color:#000080;
}
</style>
</head>
<body style="background-color: #FFFFF0;">
<div class="container">

		<jsp:include page="/WEB-INF/jsp/shared/navbar.jsp"></jsp:include>
		

		
			
<div id="login-box">
  <div class="left">
    <h1>Sign up</h1>
    <form action="addUser" method="post">
    <input type="text" name="firstName" placeholder="First Name" required=""/>
    <input type="text" name="lastName" placeholder="Last Name" required=""/>
    <input type="text" name="email" placeholder="E-mail" required=""/>
    <input type="text" name="mobileno" placeholder="Mobile Number" required=""/>
    <input type="text" name="username" placeholder="Username" required=""/>
    <input type="password" name="pass" placeholder="Password" required=""/>
    
    <input type="submit" name="signup_submit" value="Sign me up" />
    </form>
  </div>
  
  
  <div class="right">
    <span class="loginwith">Sign in with<br />social network</span>
    
    <button class="social-signin facebook"><a class="social-signin link" href="https://www.facebook.com/login/">Log in with facebook</a></button>
    <button class="social-signin twitter"><a class="social-signin link" href="https://twitter.com/login">Log in with Twitter</a></button>
    <button class="social-signin google"><a class="social-signin link" href="https://accounts.google.com/signin/v2/identifier?flowName=GlifWebSignIn&flowEntry=ServiceLogin&cid=1&navigationDirection=forward">Log in with Google+</a></button>
  </div>
  <div class="or">OR</div>
</div>


		

	</div>
	<!--  /.container -->
	<br><br><br><br><br><br><br><br><br><br><br>
	<jsp:include page="/WEB-INF/jsp/shared/footer.jsp"></jsp:include>


</body>
</html>