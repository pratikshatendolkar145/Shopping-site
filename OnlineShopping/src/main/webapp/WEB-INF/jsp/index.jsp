<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- <html>
<body>
<h2>Hello World!</h2>
<h2><a href="register.html">Register</a></h2>
<h2><a href="userlist">User List</a></h2>
<h2><a href="product">Product</a></h2>
<h2><a href="productDisplay">Product Display</a></h2>
<h2><a href="category">Category</a></h2>
<h2><a href="categoryList">Category List</a></h2>
</body>
</html> -->

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Shop Homepage - Start Bootstrap Template</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/bootstrap.min.css" rel="stylesheet">

<!--  Custom styles for this template -->
<link href="resources/css/myapp.css" rel="stylesheet">

</head>
<body style="background-color: #FFFFF0;">

	<!--  Page Content -->
	<div class="container" >

		<jsp:include page="/WEB-INF/jsp/shared/navbar.jsp"></jsp:include>

		<div class="row">
			<jsp:include page="/WEB-INF/jsp/shared/sidebar.jsp"></jsp:include>

			<div class="col-lg-9">

				<div id="carouselExampleIndicators" class="carousel slide my-4"
					data-ride="carousel">

					<jsp:include page="/WEB-INF/jsp/shared/sliderPage.jsp"></jsp:include>
					
				</div>
				<div class="row">

					<c:forEach var="p" items="${plist }">

						<div class="col-lg-4 col-md-6 mb-4">
							<div class="card h-100">
								<a href="#"><img class="card-img-top"
									src="resources/images/${p.productName }.jpg" alt=""></a>
								<div class="card-body">
									<h4 class="card-title">
									<p>${p.productName }</p>
										<c:if test="${userName!=null && adminName==null}">

											<a href="addToCart${p.productId }">AddToCart</a>
										</c:if>
										<c:if test="${userName==null && adminName!=null}">


											<a href="#">Edit</a>
											<a href="#">Delete</a>

										</c:if>

										<c:if test="${userName==null && adminName==null}">

											<a href="register">AddToCart</a>
										</c:if>

									</h4>
									<h5>${p.price }</h5>
									<p class="card-text">${p.productDesc }</p>
								</div>
								<div class="card-footer">
									<small class="text-muted">&#9733; &#9733; &#9733;
										&#9733; &#9734;</small>
								</div>
							</div>
						</div>

					</c:forEach>

				</div>
				<!-- /.row -->

			</div>
			<!-- /.col-lg-9 -->

		</div>
		<!--  /.row -->

	</div>
	<!--  /.container -->
	<jsp:include page="/WEB-INF/jsp/shared/footer.jsp"></jsp:include>


</body>

</html>
