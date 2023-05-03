<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!-- directive SPRING-FORM -->
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!-- directive cua JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" />
<link rel="stylesheet" href="${base}/user/font/fontawesome/css/all.css" />
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&amp;display=swap"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css2?family=Pattaya&amp;display=swap"
	rel="stylesheet" />
<link rel="stylesheet" href="${base}/user/css/style.css" />
<link rel="stylesheet" href="${base}/user/css/footer.css" />
<link href="${base}/user/img/logo.svg" type="image/x-icon" rel="icon" />
<link rel="stylesheet" type="text/css"
	href="${base}/user/css/slick/slick.css" />
<link rel="stylesheet" href="${base}/user/css/home.css" />
<link rel="stylesheet" href="${base}/user/css/productcart.css" />
<title>| Sports shop</title>
<style type="text/css">
.custom {
	font-family: "Roboto";
	font-style: normal;
	font-weight: normal;
	background-color: var(- -color-red);
	padding: 1rem 2.2rem;
	border-radius: 5px;
	display: inline-block;
	color: var(- -color-white);
	transition: background-color 0.2s linear;
}
</style>
</head>
<body>
	<jsp:include page="/WEB-INF/views/user/layouts/header.jsp"></jsp:include>
	<main>
		<main class="home">
			<div class="content"></div>
			<div class="banner">
				<div class="bamner-carousell">
					<div class="bamner-carousell__item">
						<img src="${base}/user/img/banner11.jpg"
							alt="Giảm 10% khi mua giày trong tháng" />
						<form class="banner-carousell__content">
							<h1 class="heading-primary">
								Giảm <span>10%</span><br />khi mua giày trong tháng
							</h1>
							<button class="btn btn--red btn--transtion-1">Mua ngay</button>
						</form>
					</div>
					<div class="bamner-carousell__item">
						<img src="${base}/user/img/banner22.jpg"
							alt="Giảm 15% với các sản phẩm Nike" />
						<form
							class="banner-carousell__content banner-carousell__content--modify">
							<h1 class="heading-primary">
								Giảm <span>15%</span><br />với các sản phẩm Nike
							</h1>
							<button class="btn btn--red btn--transtion">Mua ngay</button>
						</form>
					</div>
				</div>
			</div>
			<div class="banner-list">
				<div class="container">
					<div class="row">
						<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
							<a href="${base}/detail/${13}">
								<div class="banner-list__photo js-photo-1">
									<div class="banner-list__title-box"></div>
									<span class="banner-list__title">Giày hot trong tháng</span>
								</div>
							</a>
						</div>
						<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
							<a href="#">
								<div class="banner-list__photo-box">
									<div class="row">
										<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 photo-3-4">
											<a href="${base}/detail/${20}">
												<div class="banner-list__photo-2 js-photo-2">
													<div class="banner-list__box-2">
														<span class="title">Giày Futsal Sale</span><span
															class="quaty">20%</span>
													</div>
												</div>
											</a>
										</div>
										<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
											<div class="banner-list__photo-box-2">
												<div class="row banner-photo-3">
													<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
														<a href="${base}/detail/${24}">
															<div class="banner-list__photo-3 js-photo-3"></div>
														</a>
													</div>
													<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
														<a href="${base}/detail/${19}">
															<div class="banner-list__photo-4 js-photo-3"></div>
														</a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</a>
						</div>
					</div>
				</div>
			</div>
			<div class="best-slice">
				<h2 class="heading-secondery">Những mẫu giày bán chạy</h2>

				<div class="best-slice__list">

					<div class="container">

						<div class="row">
							<c:forEach var="listpr" items="${product}">
								<div class="col-xl-3 col-lg-3 col-md-4 col-sm-6">
									<div class="best-slice__card">
										<div class="best-slice__photo">
											<a href="${base }/detail/${listpr.id}"><img
												src="${base}/upload/${listpr.avatar}" alt="" title="" /></a>
										</div>
										<div class="best-slice__content">
											<a href="${base }/detail/${listpr.id}">
												<h3 class="best-slice__heading">${listpr.title}</h3>
											</a>
											<div class="best-slice__rate">
												<i class="fas fa-star"></i><i class="fas fa-star"></i><i
													class="fas fa-star"></i><i class="fas fa-star"></i><i
													class="fas fa-star"></i>
											</div>
											<div class="best-slice__price">
												<fmt:formatNumber type="number" maxFractionDigits="3"
													value="${listpr.price}" /> đ
											</div>
											<button class="btn btn--red btn--transtion"
												onclick="addToCart(${listpr.id},1)">
												<span>Thêm Vào Giỏ</span><i class="fas fa-cart-plus"></i>
											</button>
											
										</div>
									</div>
								</div>
							</c:forEach>
						</div>

					</div>

				</div>


			</div>
			<div class="order">
				<div class="container order-continer">
					<div class="row">
						<div class="col">
							<h2 class="heading-secondery heading-secondery--white">Đặt
								Hàng Trong Ba Bước</h2>
							<div class="order__list">
								<div class="order__content" data-aos="fade-up">
									<div class="order__box-icon">
										<img src="${base}/user/img/icon-step1.svg"
											alt="Chọn Loại Giày" />
									</div>
									<div class="order__title">Chọn Loại Giày</div>
								</div>
								<div class="order__content">
									<div class="order__box-icon">
										<img src="${base}/user/img/icon-step2.svg"
											alt="Chọn Hãng Giày" />
									</div>
									<div class="order__title">Chọn Hãng Giày</div>
								</div>
								<div class="order__content">
									<div class="order__box-icon">
										<img src="${base}/user/img/icon-step3.svg" alt="Giao Hàng" />
									</div>
									<div class="order__title">Giao Hàng</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="feature">
				<div class="contaner">
					<div class="row">
						<div class="col">
							<h2 class="heading-secondery" data-aos="fade-up">Giày mới về</h2>
							<div class="container">
								<div class="row">
									<div class="col">
										<div class="feature-carousell" data-aos="fade-up">
											<div class="best-slice__card">
												<div class="best-slice__photo">
													<a href="./details.html"><img
														src="${base}/user/img/newshoe1.svg" alt="" title="" /></a>
												</div>
												<div class="best-slice__content">
													<a href="./details.html">
														<h3 class="best-slice__heading">Adidas COPA</h3>
													</a>
													<div class="best-slice__rate">
														<i class="fas fa-star"></i><i class="fas fa-star"></i><i
															class="fas fa-star"></i><i class="fas fa-star"></i><i
															class="fas fa-star"></i>
													</div>
													<div class="best-slice__price">1,590,000 đ</div>
													<a class="best-slice__button" href="./cart.html"><span>Thêm
															Vào Giỏ</span><i class="fas fa-cart-plus"></i></a>
												</div>
											</div>
											
											
											<div class="best-slice__card">
												<div class="best-slice__photo">
													<a href="./details.html"><img
														src="${base}/user/img/newshoe2.svg" alt="" title="" /></a>
												</div>
												<div class="best-slice__content">
													<a href="./details.html">
														<h3 class="best-slice__heading">Puma King Plantium</h3>
													</a>
													<div class="best-slice__rate">
														<i class="fas fa-star"></i><i class="fas fa-star"></i><i
															class="fas fa-star"></i><i class="fas fa-star"></i><i
															class="fas fa-star"></i>
													</div>
													<div class="best-slice__price">1,550,000 đ</div>
													<a class="best-slice__button" href="./cart.html"><span>Thêm
															Vào Giỏ</span><i class="fas fa-cart-plus"></i></a>
												</div>
											</div>
											<div class="best-slice__card">
												<div class="best-slice__photo">
													<a href="./details.html"><img
														src="${base}/user/img/newshoe3.svg" alt="" title="" /></a>
												</div>
												<div class="best-slice__content">
													<a href="./details.html">
														<h3 class="best-slice__heading">Nike Tiempo Lengend</h3>
													</a>
													<div class="best-slice__rate">
														<i class="fas fa-star"></i><i class="fas fa-star"></i><i
															class="fas fa-star"></i><i class="fas fa-star"></i><i
															class="fas fa-star"></i>
													</div>
													<div class="best-slice__price">1,099,000 đ</div>
													<a class="best-slice__button" href="./cart.html"><span>Thêm
															Vào Giỏ</span><i class="fas fa-cart-plus"></i></a>
												</div>
											</div>
											<div class="best-slice__card">
												<div class="best-slice__photo">
													<a href="./details.html"><img
														src="${base}/user/img/newshoe4.svg" alt="" title="" /></a>
												</div>
												<div class="best-slice__content">
													<a href="./details.html">
														<h3 class="best-slice__heading">Mizuno Morelia</h3>
													</a>
													<div class="best-slice__rate">
														<i class="fas fa-star"></i><i class="fas fa-star"></i><i
															class="fas fa-star"></i><i class="fas fa-star"></i><i
															class="fas fa-star"></i>
													</div>
													<div class="best-slice__price">999,000 đ</div>
													<a class="best-slice__button" href="./cart.html"><span>Thêm
															Vào Giỏ</span><i class="fas fa-cart-plus"></i></a>
												</div>
											</div>
											<div class="best-slice__card">
												<div class="best-slice__photo">
													<a href="./details.html"><img
														src="${base}/user/img/newshoe5.svg" alt="Banh Pizza"
														title="" /></a>
												</div>
												<div class="best-slice__content">
													<a href="./details.html">
														<h3 class="best-slice__heading">Adidas Predator 2020</h3>
													</a>
													<div class="best-slice__rate">
														<i class="fas fa-star"></i><i class="fas fa-star"></i><i
															class="fas fa-star"></i><i class="fas fa-star"></i><i
															class="fas fa-star"></i>
													</div>
													<div class="best-slice__price">90,000 đ</div>
													<a class="best-slice__button" href="./cart.html"><span>Thêm
															Vào Giỏ</span><i class="fas fa-cart-plus"></i></a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="counter">
				<div class="container">
					<div class="row">
						<div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-6">
							<div class="counter__content" data-aos="fade-right"
								data-aos-delay="100">
								<div class="counter__icon">
									<img src="${base}/user/img/icon-1.png" alt="Mẫu giày" />
								</div>
								<div class="counter__number">250</div>
								<div class="counter__title">Mẫu giày</div>
							</div>
						</div>
						<div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-6">
							<div class="counter__content" data-aos="fade-right">
								<div class="counter__icon">
									<img src="${base}/user/img/icon-2.png" alt="Năm Kinh nghiệm " />
								</div>
								<div class="counter__number">9+</div>
								<div class="counter__title">Năm Kinh nghiệm</div>
							</div>
						</div>
						<div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-6">
							<div class="counter__content" data-aos="fade-left">
								<div class="counter__icon">
									<img src="${base}/user/img/icon-3.png" alt="Khách Hàng" />
								</div>
								<div class="counter__number">2000+</div>
								<div class="counter__title">Khách Hàng</div>
							</div>
						</div>
						<div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 col-6">
							<div class="counter__content" data-aos="fade-left"
								data-aos-delay="100">
								<div class="counter__icon">
									<img src="${base}/user/img/icon-4.png" alt="Giải Thưởng" />
								</div>
								<div class="counter__number">20</div>
								<div class="counter__title">Giải Thưởng</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="company">
				<div class="container">
					<div class="row">
						<div class="col">
							<div class="company__carousel">
								<div>
									<a href="#"><img src="${base}/user/img/brand-1.png" alt="" /></a>
								</div>
								<div>
									<a href="#"><img src="${base}/user/img/brand-2.png" alt="" /></a>
								</div>
								<div>
									<a href="#"><img src="${base}/user/img/brand-3.png" alt="" /></a>
								</div>
								<div>
									<a href="#"><img src="${base}/user/img/brand-4.png" alt="" /></a>
								</div>
								<div>
									<a href="#"><img src="${base}/user/img/brand-5.png" alt="" /></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</main>
	</main>
	<jsp:include page="/WEB-INF/views/user/layouts/footer.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/views/user/layouts/js.jsp"></jsp:include>
	<script type="text/javascript">
		 function addToCart(productId,quanlity) {
			    let data = {
					productId: productId,
					quanlity: quanlity	
				};
				 jQuery.ajax({
					url : "/cart/add",
					type : "post",
					contentType : "application/json",
					data : JSON.stringify(data),
					dataType : "json", // kieu du lieu tra ve tu controller la json
					success : function(jsonResult) {
						let totalItems = jsonResult.totalItems;
						jQuery("#totalCartItemId").html(totalItems);
						alert(jsonResult.message); 
						
					},
					error : function(jqXhr, textStatus, errorMessage) { // error callback 
						
					} 
				});     
		 }
	</script>
</body>
</html>