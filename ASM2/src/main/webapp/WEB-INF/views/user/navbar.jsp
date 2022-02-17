<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- link -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">


</head>
<body>
	<!-- Topbar Start -->
	<div class="container-fluid">
		<div class="row bg-secondary py-1 px-xl-5">
			<div class="col-lg-6 d-none d-lg-block">
				<div class="d-inline-flex align-items-center h-100">
			 	<a class="text-body mr-3" href="">Trợ giúp?</a> <a
						class="text-body mr-3" href="">Hỏi đáp?</a> &emsp;&emsp;<a
						class="text-info" >Chào mừng bạn đến với M-GEAR</a>
						
				</div>
			</div>
			<div class="col-lg-6 text-center text-lg-right">
				<div class="d-inline-flex align-items-center">
					<div class="btn-group">
						<button type="button" class="btn btn-sm btn-light dropdown-toggle"
							data-toggle="dropdown">Ngôn ngữ</button>
						<div class="dropdown-menu dropdown-menu-right">
							<button class="dropdown-item" type="button">Việt Nam</button>
							<button class="dropdown-item" type="button">English</button>
						</div>
					</div>
					<!-- <div class="btn-group mx-2">
                        <button type="button" class="btn btn-sm btn-light dropdown-toggle" data-toggle="dropdown">VI</button>
                        <div class="dropdown-menu dropdown-menu-right">
                            <button class="dropdown-item" type="button">EN</button>
                        </div>
                    </div> -->
				</div>
				<div class="d-inline-flex align-items-center d-block d-lg-none">
					<a href="" class="btn px-0 ml-2"> <i
						class="fas fa-heart text-dark"></i> <span
						class="badge text-dark border border-dark rounded-circle"
						style="padding-bottom: 2px;">0</span>
					</a> <a href="/shop/cart" class="btn px-0 ml-2"> <i
						class="fas fa-shopping-cart text-dark"></i> <span
						class="badge text-dark border border-dark rounded-circle"
						style="padding-bottom: 2px;">0</span>
					</a>
				</div>
			</div>
		</div>
		
	</div>
	<!-- Topbar End -->
	
	<!-- Carousel Start -->
		<div class=" mb-3 mt-2">
		<div class="row ">
			<div class="col-lg-12">
				<div id="header-carousel"
					class="carousel slide carousel-fade mb-30 mb-lg-0"
					data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#header-carousel" data-slide-to="0"
							class="active"></li>
						<li data-target="#header-carousel" data-slide-to="1"></li>
						<li data-target="#header-carousel" data-slide-to="2"></li>
					</ol>
					<div class="carousel-inner">
						<div class="carousel-item position-relative active"
							style="height: 250px;">
							<img class="position-absolute w-100 h-100"
								src="/user/img/carousel-1.jpg" style="object-fit: cover;">
							<div
								class="carousel-caption d-flex flex-column align-items-center justify-content-center">
								<div class="p-3" style="max-width: 700px;">
									<h1
										class="display-4 text-white mb-3 animate__animated animate__fadeInDown">Phụ
										Kiện PC</h1>
									
									<a
										class="btn btn-outline-light py-2 px-4 mt-3 animate__animated animate__fadeInUp"
										href="#">Click ngay</a>
								</div>
							</div>
						</div>
						<div class="carousel-item position-relative"
							style="height: 250px;">
							<img class="position-absolute w-100 h-100"
								src="/user/img/carousel-2.jpg" style="object-fit: cover;">
							<div
								class="carousel-caption d-flex flex-column align-items-center justify-content-center">
								<div class="p-3" style="max-width: 700px;">
									<h1
										class="display-4 text-white mb-3 animate__animated animate__fadeInDown">Phụ
										Kiện ĐTDĐ</h1>
									
									<a
										class="btn btn-outline-light py-2 px-4 mt-3 animate__animated animate__fadeInUp"
										href="#">Click Ngay</a>
								</div>
							</div>
						</div>
						<div class="carousel-item position-relative"
							style="height: 250px;">
							<img class="position-absolute w-100 h-100"
								src="/user/img/carousel-3.jpg" style="object-fit: cover;">
							<div
								class="carousel-caption d-flex flex-column align-items-center justify-content-center">
								<div class="p-3" style="max-width: 700px;">
									<h1
										class="display-4 text-white mb-3 animate__animated animate__fadeInDown">Đồ
										Chơi Đi Động</h1>
							
									<a
										class="btn btn-outline-light py-2 px-4 mt-3 animate__animated animate__fadeInUp"
										href="#">Click ngay</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			
		</div>
	</div>
	<!-- Carousel End -->


	<!-- Navbar Start -->
	<div class="container-fluid mb-0 mt-3 ">
		<div class="row px-xl-5">

			<div class="col-lg-12">
				<nav
					class="navbar navbar-expand-lg navbar-dark py-3 py-lg-0 px-0">
					
					<a href="" class="text-decoration-none d-block d-lg-none"> <span
						class="h1 text-uppercase text-dark bg-light px-2"></span> <span
						class="h1 text-uppercase text-dark bg-primary px-2 ml-n1"></span>
					</a>
					<button type="button" class="navbar-toggler" data-toggle="collapse"
						data-target="#navbarCollapse">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse justify-content-between "
						id="navbarCollapse">
						<div class="navbar-nav mr-auto py-0 ">
							<span class=" text-uppercase text-dark px-2 ml-n1"><img src="/upload/icon.jpg"></span>
							
							<a class="h5 nav-item nav-link active nav-item text-uppercase text-danger px-2 ml-n1">M-GEAR</a>
							<a href="/index" class="nav-item nav-link active text-dark">Trang
								chủ</a> <a href="/user/blog" class="nav-item nav-link text-dark">About Us</a> <a
								href="/user/contact" class="nav-item nav-link text-dark">Liên hệ</a>
							<%-- 	<c:if test="${empty sessionScope.username}">
								
							</c:if> --%>
							<%-- 	<c:if test="${not empty sessionScope.username}">
								
							</c:if> --%>
							<security:authorize access="!isAuthenticated()">
								<div class="nav-item dropdown">
									<a href="#" class="nav-link dropdown-toggle text-dark"
										data-toggle="dropdown">Tài khoản <i
										class="fa fa-angle-down mt-1"></i></a>
									<div class="dropdown-menu bg-primary rounded-0 border-0 m-0">
										<a href="/login" class="dropdown-item">Đăng nhập</a> <a
											href="/register" class="dropdown-item">Đăng ký</a>
									</div>
								</div>
							</security:authorize>
							<security:authorize access="isAuthenticated()">
								<div class="nav-item dropdown">
									<a href="#" class="nav-link dropdown-toggle text-dark"
										data-toggle="dropdown">Tài khoản <i
										class="fa fa-angle-down mt-1"></i></a>
									<div class="dropdown-menu bg-primary rounded-0 border-0 m-0">
										<a href="/shop/profile/order" class="dropdown-item">Thông tin</a> <a
											href="/logout" class="dropdown-item">Đăng xuất</a>
									</div>
								</div>
							</security:authorize>

							<security:authorize access="hasRole('ROLE_ADMIN')">  
 								<a href="/admin/index" class="nav-item nav-link text-dark">Quản lý</a>
							</security:authorize>
						</div>

						<div class="col-lg-4 text-right">
							<p class="m-0">rongkho2@gmail.com</p>
							<h5 class="m-0">0914054080</h5>
						</div>
						
						<div class="navbar-nav ml-auto py-0 d-none d-lg-block">
							<a href="/shop/profile/favorite" class="btn px-0"> <i
								class="fas fa-heart text-danger"></i> <span
								class="badge text-secondary border border-secondary rounded-circle"
								style="padding-bottom: 2px;">${sessionScope.countFavorite} ${sessionScope.countFavorite==null?'0':''}</span>
							</a> <a href="/shop/cart" class="btn px-0 ml-3"> <i
								class="fas fa-shopping-cart text-info"></i> <span
								class="badge text-secondary border border-secondary rounded-circle"
								style="padding-bottom: 2px;">${sessionScope.countProduct} ${sessionScope.countProduct==null?'0':''}</span>
							</a>
						</div>
						
					</div>
				</nav>
			</div>
		</div>
	</div>
	<!-- Navbar End -->
</body>
</html>