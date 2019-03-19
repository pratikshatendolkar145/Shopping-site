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

<link rel="stylesheet" href="resources/css/paydemo.css">
<link rel="stylesheet" href="resources/css/paystyles.css">


</head>
<body style="background-color: #FFFFF0;">
	<div class="container">

		<jsp:include page="/WEB-INF/jsp/shared/navbar.jsp"></jsp:include>
		<div class="creditCardForm">
			<div class="heading">
				<h1>Confirm Purchase</h1>
			</div>
			<div class="payment">
				<form action="finalPlaceOrder" method="post">
					<div class="form-group owner">
						<label for="owner">Owner</label> <input type="text"
							class="form-control" id="owner">
					</div>
					<div class="form-group CVV">
						<label for="cvv">CVV</label> <input type="text"
							class="form-control" id="cvv">
					</div>
					<div class="form-group" id="card-number-field">
						<label for="cardNumber">Card Number</label> <input type="text"
							class="form-control" id="cardNumber">
					</div>
					<div class="form-group" id="expiration-date">
						<label>Expiration Date</label> <select>
							<option value="01">January</option>
							<option value="02">February</option>
							<option value="03">March</option>
							<option value="04">April</option>
							<option value="05">May</option>
							<option value="06">June</option>
							<option value="07">July</option>
							<option value="08">August</option>
							<option value="09">September</option>
							<option value="10">October</option>
							<option value="11">November</option>
							<option value="12">December</option>
						</select> <select>
							<option value="16">2016</option>
							<option value="17">2017</option>
							<option value="18">2018</option>
							<option value="19">2019</option>
							<option value="20">2020</option>
							<option value="21">2021</option>
						</select>
					</div>
					<div class="form-group" id="credit_cards">
						<img src="resources/card_img/visa.jpg" id="visa"> 
						<img src="resources/card_img/mastercard.jpg" id="mastercard"> 
						<img src="resources/card_img/amex.jpg" id="amex">
					</div>
					<div class="form-group" id="pay-now">
						<button type="submit" class="btn btn-default"
							id="confirm-purchase">Confirm</button>
					</div>
				</form>
			</div>
		</div>
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

 <script src="resources/js/jquery.payform.min.js" charset="utf-8"></script>
    <script src="resources/js/script.js"></script>




</body>
</html>

