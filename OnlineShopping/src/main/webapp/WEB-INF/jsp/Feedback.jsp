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


<link href="resources/css/feedform.css" rel="stylesheet">
<script src="resources/js/feedform.js"></script>
</head>
<body style="background-color: #FFFFF0;">

	<div class="container">
		<jsp:include page="/WEB-INF/jsp/shared/navbar.jsp"></jsp:include>
		<br><br>
		<center>
			<div class="col-md-6 col-md-offset-3 form-container">
				<h2 style="color:#FF8C00; border:4px solid #F4A460; margin-top:10px">Feedback</h2>
				<p>Please provide your feedback below</p>
				<form action="addFeedback" method="post" id="reused_form">
					
					<div class="row">
						<div class="col-sm-6 form-group">
							<label for="name"> Your Name</label> <input type="text"
								class="form-control" id="name" name="username" required>
						</div>
						<div class="col-sm-6 form-group">
							<label for="email"> Email</label> <input type="email"
								class="form-control" id="email" name="email" required>
						</div>
						<div class="col-sm-6 form-group">
							<label for="mobileno"> Mobile No</label> <input type="text"
								class="form-control" id="mobileno" name="mobileno" required>
						</div>
					</div>
					
					<div class="row">
						<div class="col-sm-12 form-group">
							<label for="comments"> Enter Your Comments</label>
							<textarea class="form-control" type="textarea" name="feedback"
								id="comments" placeholder="Your Comments" maxlength="6000"
								rows="7"></textarea>
						</div>
					</div>
					
					<div class="row">
						<div class="col-sm-12 form-group">
							<button type="submit" class="btn btn-lg btn-warning btn-block">Post
							</button>
						</div>
					</div>
				</form>
			</div>
			</center>

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

	<!-- <h2>Give Your Feedback</h2>
				<form action="addFeedback" method="post">
					<table>
						<tr>
							<td>Your Good Name</td>
							<td><input type="text" name="username"></td>
						</tr>
						<tr>
							<td>Your E-mail Please</td>
							<td><input type="text" name="email"></td>
						</tr>
						<tr>
							<td>Your Mobile Number</td>
							<td><input type="text" name="mobileno"></td>
						</tr>
						<tr>
							<td><textarea name="feedback" style="width: 150%" rows="5"
									placeholder="Enter Your Feedback Here..."></textarea></td>
						</tr>
						<tr>
							<td><input type="submit" value="Save"></td>
						</tr>

					</table>
				</form> -->