<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang chủ</title>
<!-- Favicon -->
<link href="/user/img/favicon.ico" rel="icon">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap"
	rel="stylesheet">

<!-- Font Awesome -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="/user/lib/animate/animate.min.css" rel="stylesheet">
<link href="/user/lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="/user/css/style.css" rel="stylesheet">

<!-- gg -->
<link href="https://fonts.googleapis.com/css?family=Rubik" rel="stylesheet">

</head>
<body>

	
	
	<%@include file="navbar.jsp"%>


	<!-- Featured Start -->
<!-- 	<div class="container-fluid pt-5"> -->
<!-- 		<div class="row px-xl-5 pb-3"> -->
<!-- 			<div class="col-lg-12"> -->
<!-- 				<div class="d-flex align-items-center bg-light mb-4" -->
<!-- 					style="padding: 30px;"> -->
<!-- 					<h1 class="fa fa-check text-primary m-0 mr-3"></h1> -->
<!-- 					<h5 class="font-weight-semi-bold m-0">Chất Lượng</h5> -->
<!-- 				</div> -->
<!-- 			</div> -->
			
<!-- 		</div> -->
<!-- 	</div> -->
	<!-- Featured End -->

	<!-- Categories Start -->

	<!-- Categories End -->

	<!-- Find + Categories start -->
	<div class="row align-items-center py-3 px-xl-5 d-none d-lg-flex vip">
	
		<div class="col-sm-9">
		<div class="col-lg-6 text-center">
			<form action="/user/index" method="post">
				<div class="input-group">
					<input type="text" value="${keywords}" name="keywords" class="form-control" placeholder="Bạn muốn tìm sản phẩm?">
					<div class="input-group-append">
						<button class="input-group-text bg-info text-white">
							<i class="fa fa-search"></i>
						</button>
					</div>
				</div>
			</form>
		</div>
		</div>
		
		<div class="col-sm-3">
		<div class="col-lg-12 d-none d-lg-block">
			<a
				class="btn d-flex align-items-center justify-content-between bg-info w-100"
				data-toggle="collapse" href="#navbar-vertical"
				style="height: 65px; padding: 0 30px;">
				<h6 class="text-white m-0">
					<i class="fa fa-bars mr-2"></i>DANH MỤC SẢN PHẨM
				</h6> <i class="fa fa-angle-down text-dark"></i>
			</a>
			<nav
				class="collapse position-absolute navbar navbar-vertical navbar-light align-items-start p-0 bg-light"
				id="navbar-vertical"
				style="width: calc(100% - 30px); z-index: 999;">
				<div class="navbar-nav w-100">						
					<c:forEach var="item" items="${procate}">
						<a href="/shop/category/${item.group.id}" class="nav-item nav-link">${item.group.name}</a>
					</c:forEach>						
				</div>
			</nav>
		</div>
		</div>
		
	</div>
	<!-- Find + Categories end -->

	<!-- Products Start -->
	<div class="container-fluid pt-5 pb-3">
		<h2
			class="section-title position-relative text-uppercase mx-xl-5 mb-4">
			<span class="bg-secondary pr-3">MỚI NHẤT</span>
		</h2>
		<div class="row px-xl-5">
			<c:forEach var="item" items="${search}">
				<div class="col-lg-2 col-md-4 col-sm-6 pb-1">
					<div class="product-item bg-light mb-4">
						<div class="product-img position-relative overflow-hidden">
							<img class=" w-100" src="/upload/${item.image}" alt="">
							<div class="product-action">
								<a class="btn btn-outline-dark btn-square" href="/shop/detail/${item.id}"><i
									class="fa fa-shopping-cart"></i></a> 
							</div>
						</div>
						<div class="text-center py-4">
							<a class="h6 text-decoration-none text-truncate" href="/shop/detail/${item.id}">${item.name}</a>
							<div
								class="d-flex align-items-center justify-content-center mt-2">
								<h5>
									<fmt:formatNumber type="number" pattern="###,###,###"
										value="${item.price}" />
									VNĐ
								</h5>
							</div>
							<div
								class="d-flex align-items-center justify-content-center mb-1">
								<small class="fa fa-star text-primary mr-1"></small> <small
									class="fa fa-star text-primary mr-1"></small> <small
									class="fa fa-star text-primary mr-1"></small> <small
									class="fa fa-star text-primary mr-1"></small> <small
									class="fa fa-star text-primary mr-1"></small> <small>(99)</small>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>

		</div>
	</div>
	<!-- Products End -->

	<!-- Products Start -->
	<div class="container-fluid pt-5 pb-3">
		<h2
			class="section-title position-relative text-uppercase mx-xl-5 mb-4">
			<span class="bg-secondary pr-3">TOP 10 MẶT HÀNG THEO GIÁ</span>
		</h2>
		<div class="row px-xl-5">
			<c:forEach var="item" items="${dates}">
				<div class="col-lg-2 col-md-4 col-sm-6 pb-1">
					<div class="product-item bg-light mb-4">
						<div class="product-img position-relative overflow-hidden">
							<img class="h-25 d-inline-block w-100" src="/upload/${item.image}" alt="">
							<div class="product-action">
								<a class="btn btn-outline-dark btn-square" href="/shop/detail/${item.id}"><i
									class="fa fa-shopping-cart"></i></a> 
							</div>
						</div>
						<div class="text-center py-4">
							<a class="h6 text-decoration-none text-truncate" href="/shop/detail/${item.id}">${item.name}</a>
							<div
								class="d-flex align-items-center justify-content-center mt-2">
								<h5>
									<fmt:formatNumber type="number" pattern="###,###,###"
										value="${item.price}" />
									VNĐ
								</h5>
							</div>
							<div
								class="d-flex align-items-center justify-content-center mb-1">
								<small class="fa fa-star text-primary mr-1"></small> <small
									class="fa fa-star text-primary mr-1"></small> <small
									class="fa fa-star text-primary mr-1"></small> <small
									class="fa fa-star text-primary mr-1"></small> <small
									class="fa fa-star text-primary mr-1"></small> <small>(99)</small>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	<!-- Products End -->


	<!-- Vendor Start -->
	<div class="container-fluid py-5">
		<div class="row px-xl-5">
			<div class="col">
				<div class="owl-carousel vendor-carousel">
					<c:forEach var="item" items="${manufacture}">
						<div class="bg-light p-4">
							<img src="/upload/${item.image}" width="150" height="100" alt="">
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
	<!-- Vendor End -->


	
	<%@include file="footer.jsp"%>


	<!-- Back to Top -->
	<a href="#" class="btn btn-primary back-to-top"><i
		class="fa fa-angle-double-up"></i></a>
</body>
<!-- JavaScript Libraries -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
<script src="/user/lib/easing/easing.min.js"></script>
<script src="/user/lib/owlcarousel/owl.carousel.min.js"></script>

<!-- Contact Javascript File -->
<script src="/user/mail/jqBootstrapValidation.min.js"></script>
<script src="/user/mail/contact.js"></script>

<!-- Template Javascript -->
<script src="/user/js/main.js"></script>


</html>