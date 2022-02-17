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
<link href="/user/css/myaccount.css" rel="stylesheet">
</head>
<body>
	<%@include file="navbar.jsp"%>

	<!-- Breadcrumb Start -->
	<div class="container-fluid">
		<div class="row px-xl-5">
			<div class="col-12">
				<nav class="breadcrumb bg-light mb-30">
					<a class="breadcrumb-item text-dark" href="/index">Trang chủ</a> <span
						class="breadcrumb-item active">Thông tin</span>
				</nav>
			</div>
		</div>
	</div>
	<!-- Breadcrumb End -->

	<!-- My Account Start -->
	<div class="my-account">
		<div class="container-fluid1">
			<div class="row">
				<div class="col-md-3">
					<div class="nav flex-column nav-pills" >
						<!-- <a class="nav-link active" id="dashboard-nav" data-toggle="pill" href="#dashboard-tab" role="tab"><i class="fa fa-tachometer-alt"></i>Dashboard</a> -->
						<a class="nav-link active" id="orders-nav" data-toggle="pill"
							href="/shop/profile/order"
							onclick="location.href='/shop/profile/order';" role="tab"><i
							class="fa fa-shopping-bag"></i>Đơn Hàng</a> <a class="nav-link"
							id="payment-nav" data-toggle="pill" href="#payment-tab"
							onclick="location.href='/shop/profile/favorite';" role="tab"><i
							class="fas fa-heart"></i>Sản Phẩm Yêu Thích</a> <a class="nav-link"
							id="address-nav" data-toggle="pill" href="/shop/profile/address"
							onclick="location.href='/shop/profile/address';" role="tab"><i
							class="fa fa-map-marker-alt"></i>Địa Chỉ Giao Hàng</a> <a
							class="nav-link" id="account-nav" data-toggle="pill"
							href="#account-tab" onclick="location.href='/shop/profile/user';"
							role="tab"><i class="fa fa-user"></i>Thông Tin Cá Nhân</a> <a
							class="nav-link" href="/logout"><i class="fa fa-sign-out-alt"></i>Đăng
							Xuất</a>
					</div>
				</div>
				<div class="col-md-9">
					<div class="tab-content">
						<!-- <div class="tab-pane fade " id="dashboard-tab" role="tabpanel" aria-labelledby="dashboard-nav">
                            <h4>Dashboard</h4>
                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. In condimentum quam ac mi viverra dictum. In efficitur ipsum diam, at dignissim lorem tempor in. Vivamus tempor hendrerit finibus. Nulla tristique viverra nisl, sit amet bibendum ante suscipit non. Praesent in faucibus tellus, sed gravida lacus. Vivamus eu diam eros. Aliquam et sapien eget arcu rhoncus scelerisque.
                            </p> 
                        </div> -->
						<div class="tab-pane fade show active" id="orders-tab"
							role="tabpanel" aria-labelledby="orders-nav">
							<div class="table-responsive">
								<table class="table table-bordered">
									<thead class="thead-dark">
										<tr>
											<th>STT</th>
											<th>Mã hàng</th>
											<th>Ngày đặt</th>
											<th>Giá</th>
											<th>Trạng thái</th>
											<th>Hoạt động</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="item" items="${order}">
											<tr>
												<td>${location = location + 1}</td>
												<td>${item.name}</td>
												<td>${item.date}</td>
												<td><fmt:formatNumber type="number"
														pattern="###,###,###" value="${item.price+30000}" /> VNĐ</td>
												<td>${item.status?'Đã giao':'Đang chờ'}</td>
												<td><a href="/shop/invoice/${item.name}"
													class="btn btn1 ">Hóa đơn</a> <a
													href="/shop/order/delete/${item.name}"
													class="btn btn1 ${item.status?'disabled':''}">Hủy</a></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- My Account End -->


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