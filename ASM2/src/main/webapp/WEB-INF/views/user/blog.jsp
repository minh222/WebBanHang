<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang chủ</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="Free HTML Templates" name="keywords">
<meta content="Free HTML Templates" name="description">

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
<link href="/user/css/mycss.css" rel="stylesheet">

<!-- link -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>

<!-- style -->
<style>
.social-link {
	width: 30px;
	height: 30px;
	border: 1px solid #ddd;
	display: flex;
	align-items: center;
	justify-content: center;
	color: #666;
	border-radius: 50%;
	transition: all 0.3s;
	font-size: 0.9rem;
}

.social-link:hover, .social-link:focus {
	background: #ddd;
	text-decoration: none;
	color: #555;
}
</style>
</head>
<body>
	<%@include file="navbar.jsp"%>

	<nav class="navbar navbar-expand-lg navbar-light bg-light py-3">
		<div class="container">
			<a href="#" class="navbar-brand d-flex align-items-center"> <i
				class="fa fa-snowflake-o fa-lg text-primary mr-2"></i><strong>Snowflake</strong></a>
			<button type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation" class="navbar-toggler">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div id="navbarSupportedContent" class="collapse navbar-collapse">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a href="#"
						class="nav-link font-italic"> Home </a></li>
					<li class="nav-item active"><a href="#"
						class="nav-link font-italic"> About </a></li>
					<li class="nav-item active"><a href="#"
						class="nav-link font-italic"> Services </a></li>
					<li class="nav-item active"><a href="#"
						class="nav-link font-italic"> Contact</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="bg-light">
		<div class="container py-5">
			<div class="row h-100 align-items-center py-5">
				<div class="col-lg-6">
					<h1 class="display-4">About us page</h1>
					<p class="lead text-muted mb-0">Create a minimal about us page
						using Bootstrap 4.</p>
					<p class="lead text-muted">
						Snippet by <a href="https://bootstrapious.com/snippets"
							class="text-muted"> <u>Bootstrapious</u></a>
					</p>
				</div>
				<div class="col-lg-6 d-none d-lg-block">
					<img src="https://bootstrapious.com/i/snippets/sn-about/illus.png"
						alt="" class="img-fluid">
				</div>
			</div>
		</div>
	</div>

	<div class="bg-white py-5">
		<div class="container py-5">
			<div class="row align-items-center mb-5">
				<div class="col-lg-6 order-2 order-lg-1">
					<i class="fa fa-bar-chart fa-2x mb-3 text-primary"></i>
					<h2 class="font-weight-light">Lorem ipsum dolor sit amet</h2>
					<p class="font-italic text-muted mb-4">Lorem ipsum dolor sit
						amet, consectetur adipisicing elit, sed do eiusmod tempor
						incididunt ut labore et dolore magna aliqua.</p>
					<a href="#" class="btn btn-light px-5 rounded-pill shadow-sm">Learn
						More</a>
				</div>
				<div class="col-lg-5 px-5 mx-auto order-1 order-lg-2">
					<img src="https://bootstrapious.com/i/snippets/sn-about/img-1.jpg"
						alt="" class="img-fluid mb-4 mb-lg-0">
				</div>
			</div>
			<div class="row align-items-center">
				<div class="col-lg-5 px-5 mx-auto">
					<img src="https://bootstrapious.com/i/snippets/sn-about/img-2.jpg"
						alt="" class="img-fluid mb-4 mb-lg-0">
				</div>
				<div class="col-lg-6">
					<i class="fa fa-leaf fa-2x mb-3 text-primary"></i>
					<h2 class="font-weight-light">Lorem ipsum dolor sit amet</h2>
					<p class="font-italic text-muted mb-4">Lorem ipsum dolor sit
						amet, consectetur adipisicing elit, sed do eiusmod tempor
						incididunt ut labore et dolore magna aliqua.</p>
					<a href="#" class="btn btn-light px-5 rounded-pill shadow-sm">Learn
						More</a>
				</div>
			</div>
		</div>
	</div>

	<div class="bg-light py-5">
		<div class="container py-5">
			<div class="row mb-4">
				<div class="col-lg-5">
					<h2 class="display-4 font-weight-light">Our team</h2>
					<p class="font-italic text-muted">Lorem ipsum dolor sit amet,
						consectetur adipisicing elit.</p>
				</div>
			</div>

			<div class="row text-center">
				<!-- Team item-->
				<div class="col-xl-3 col-sm-6 mb-5">
					<div class="bg-white rounded shadow-sm py-5 px-4">
						<img
							src="https://bootstrapious.com/i/snippets/sn-about/avatar-4.png"
							alt="" width="100"
							class="img-fluid rounded-circle mb-3 img-thumbnail shadow-sm">
						<h5 class="mb-0">Manuella Nevoresky</h5>
						<span class="small text-uppercase text-muted">CEO - Founder</span>
						<ul class="social mb-0 list-inline mt-3">
							<li class="list-inline-item"><a href="#" class="social-link"><i
									class="fa fa-facebook-f"></i></a></li>
							<li class="list-inline-item"><a href="#" class="social-link"><i
									class="fa fa-twitter"></i></a></li>
							<li class="list-inline-item"><a href="#" class="social-link"><i
									class="fa fa-instagram"></i></a></li>
							<li class="list-inline-item"><a href="#" class="social-link"><i
									class="fa fa-linkedin"></i></a></li>
						</ul>
					</div>
				</div>
				<!-- End-->

				<!-- Team item-->
				<div class="col-xl-3 col-sm-6 mb-5">
					<div class="bg-white rounded shadow-sm py-5 px-4">
						<img
							src="https://bootstrapious.com/i/snippets/sn-about/avatar-3.png"
							alt="" width="100"
							class="img-fluid rounded-circle mb-3 img-thumbnail shadow-sm">
						<h5 class="mb-0">Samuel Hardy</h5>
						<span class="small text-uppercase text-muted">CEO - Founder</span>
						<ul class="social mb-0 list-inline mt-3">
							<li class="list-inline-item"><a href="#" class="social-link"><i
									class="fa fa-facebook-f"></i></a></li>
							<li class="list-inline-item"><a href="#" class="social-link"><i
									class="fa fa-twitter"></i></a></li>
							<li class="list-inline-item"><a href="#" class="social-link"><i
									class="fa fa-instagram"></i></a></li>
							<li class="list-inline-item"><a href="#" class="social-link"><i
									class="fa fa-linkedin"></i></a></li>
						</ul>
					</div>
				</div>
				<!-- End-->

				<!-- Team item-->
				<div class="col-xl-3 col-sm-6 mb-5">
					<div class="bg-white rounded shadow-sm py-5 px-4">
						<img
							src="https://bootstrapious.com/i/snippets/sn-about/avatar-2.png"
							alt="" width="100"
							class="img-fluid rounded-circle mb-3 img-thumbnail shadow-sm">
						<h5 class="mb-0">Tom Sunderland</h5>
						<span class="small text-uppercase text-muted">CEO - Founder</span>
						<ul class="social mb-0 list-inline mt-3">
							<li class="list-inline-item"><a href="#" class="social-link"><i
									class="fa fa-facebook-f"></i></a></li>
							<li class="list-inline-item"><a href="#" class="social-link"><i
									class="fa fa-twitter"></i></a></li>
							<li class="list-inline-item"><a href="#" class="social-link"><i
									class="fa fa-instagram"></i></a></li>
							<li class="list-inline-item"><a href="#" class="social-link"><i
									class="fa fa-linkedin"></i></a></li>
						</ul>
					</div>
				</div>
				<!-- End-->

				<!-- Team item-->
				<div class="col-xl-3 col-sm-6 mb-5">
					<div class="bg-white rounded shadow-sm py-5 px-4">
						<img
							src="https://bootstrapious.com/i/snippets/sn-about/avatar-1.png"
							alt="" width="100"
							class="img-fluid rounded-circle mb-3 img-thumbnail shadow-sm">
						<h5 class="mb-0">John Tarly</h5>
						<span class="small text-uppercase text-muted">CEO - Founder</span>
						<ul class="social mb-0 list-inline mt-3">
							<li class="list-inline-item"><a href="#" class="social-link"><i
									class="fa fa-facebook-f"></i></a></li>
							<li class="list-inline-item"><a href="#" class="social-link"><i
									class="fa fa-twitter"></i></a></li>
							<li class="list-inline-item"><a href="#" class="social-link"><i
									class="fa fa-instagram"></i></a></li>
							<li class="list-inline-item"><a href="#" class="social-link"><i
									class="fa fa-linkedin"></i></a></li>
						</ul>
					</div>
				</div>
				<!-- End-->

			</div>
		</div>
	</div>


	<footer class="bg-light pb-5">
		<div class="container text-center">
			<p class="font-italic text-muted mb-0">&copy; Copyrights
				Company.com All rights reserved.</p>
		</div>
	</footer>
	<div class="tv">
		<div class="screen mute" id="tv"></div>
	</div>

	<%@include file="footer.jsp"%>

	<!-- Back to Top -->
	<a href="#" class="btn btn-primary back-to-top"><i
		class="fa fa-angle-double-up"></i></a>


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
</body>
</html>