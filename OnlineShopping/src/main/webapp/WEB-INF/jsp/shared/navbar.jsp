<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">
			<a class="navbar-brand" href="#">ELECTO-TWICE</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a class="nav-link" href="index">Home
							<span class="sr-only">(current)</span>
					</a></li>

					<li class="nav-item"><a class="nav-link" href="productDisplay">Product
							List</a></li>

					<c:if test="${userName!=null && adminName==null}">
						<li class="nav-item"><a class="nav-link" href="editProfile">EditProfile</a></li>
						<li class="nav-item"><a class="nav-link" href="cartList">CartList</a></li>
						<!-- <li class="nav-item"><a class="nav-link" href="#">Order</a></li> -->
						<li class="nav-item"><a class="nav-link" href="feedbackPage">FeedBack</a></li>

					</c:if>
					<c:if test="${userName==null && adminName!=null}">
						<li class="nav-item"><a class="nav-link" href="userlist">User
								List</a></li>
						<li class="nav-item"><a class="nav-link" href="categoryList">Category
								List</a></li>
						<li class="nav-item"><a class="nav-link" href="product">AddProducts</a>
						</li>

						<li class="nav-item"><a class="nav-link" href="category">AddCategory</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="orderList">OrderList</a></li>
						<li class="nav-item"><a class="nav-link" href="feedbackList">FeedBack List</a></li>

					</c:if>

					<c:if test="${userName==null &&  adminName==null}">
						<li class="nav-item"><a class="nav-link" href="register">Sign
								up</a></li>
						<li class="nav-item"><a class="nav-link" href="loginPage">Login</a></li>
						<li class="nav-item"><a class="nav-link" href="aboutus">About</a></li>
						<li class="nav-item"><a class="nav-link" href="contactus">Contact</a></li>
					</c:if>

					<c:if test="${userName!=null || adminName!=null}">
						<li class="nav-item"><a class="nav-link" href="logOut">Logout</a></li>

					</c:if>
					
				</ul>
			</div>
		</div>
	</nav>

</body>
</html>