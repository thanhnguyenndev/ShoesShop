<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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
<link rel="stylesheet" href="${base}/user/css/slick/slick.css" />
<link rel="stylesheet" href="${base}/user/css/slick/slick-theme.css" />
<link rel="stylesheet" href="${base}/user/css/cart.css" />

<title>| Giỏ Hàng</title>
<style>
</style>
</head>
<body>
	<jsp:include page="/WEB-INF/views/user/layouts/header.jsp"></jsp:include>
	<main>
		<div class="banner-common">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="banner-common__content">
							<h1 class="heading-primary heading-primary--white">Giỏ Hàng</h1>
							<div class="banner-common__box">
								<a href="${base }/index">
									<p class="banner-common__title">Trang chủ</p>
								</a>
								<div class="banner-common__icon">
									<img src="./img/arrows-banner.svg" alt="" />
								</div>
								<a href="">
									<p class="banner-common__title-2 banner-common__title-2--active">Giỏ
										Hàng</p>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<main class="cart">
			<div class="container">
				<div class="row">
					<div class="col">

						<div class="cart__list" data-aos="fade-up" data-aos-delay="100">
							<table>
								<tr>
									<th class="cart__delete">Xóa</th>
									<th></th>
									<th>Tên Sản Phẩm</th>
									<th>Giá</th>
									<th>Số Lượng</th>
									<th>Tổng Giá</th>
								</tr>
								<c:forEach var="cartItem" items="${cart.cartItems }">
									<tr class="cart__row">

										<td><button title="cancel" class="icon btn-delete"
												onclick="deleteProduct(${cartItem.productId})">
												<i class="far fa-trash-alt"></i>
											</button></td>
										<td>
											<div class="cart__photo">
												<img src="${base }/upload/${cartItem.productImage}" alt="" />
											</div>
										</td>
										<td>${cartItem.productName }</td>
										<td><fmt:formatNumber type="number" maxFractionDigits="3"
												value="${cartItem.priceUnit }" /> đ
											</div></td>
										<td>
											<div class="cart__select">
												<span id="span1" class="MINUS${cartItem.productId}">
													<i class="fas fa-minus"></i> 												
												</span>
													<span
														class="details__number-basket">${cartItem.quanlity}
													</span> 
												<span id="span2" class="PLUS${cartItem.productId}">
													<i class="fas fa-plus"></i>
												</span>
											</div>
										</td>
										<td><fmt:formatNumber type="number" maxFractionDigits="3"
												value="${cartItem.totalPricePerProduct}" /> đ</td>
									</tr>
								</c:forEach>
							</table>
						</div>
						<div class="cart__money">
							<div class="row justify-content-end">
								<div class="col-xl-4 col-lg-5 col-md-6 col-sm-9 col-12">
									<div class="money__content">
										<p class="money__title">Thành Tiền</p>
										<c:forEach var="cartItem" items="${cart.cartItems }">
											<div class="money__price">
												<p>
													${cartItem.productName } <span class="quantity">x
														${cartItem.quanlity }</span>
												</p>
												<p>
													<fmt:formatNumber type="number" maxFractionDigits="3"
														value="${cartItem.priceUnit }" />
													đ
												</p>
											</div>
										</c:forEach>
										<p class="money__car">
											<span>Phí vận chuyển</span><span>Miễn phí</span>
										</p>
										<div class="money__total">
											<p>Tổng cộng:</p>
											<p>
												<fmt:formatNumber type="number" maxFractionDigits="3"
													value="${totalprice}" />
												đ
											</p>
										</div>
										<a class="money__pay" href="${base }/cart/checkout">Tiến
											Hành Thanh Toán</a>
									</div>
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
	function deleteProduct(productId) {
		// javascript object.
		// data la du lieu ma day len action cua controller
		//alert(1);
		let data = {
			/* txtYourName: $("#exampleInputName").val(), // lay theo id
			txtEmail: $("#exampleInputEmail1").val(), // lay theo id
			txtTitle: $("#exampleInputTitle").val(),
			txtComments: $("#exampleInputComments").val(), */
			productId: productId
		};
		
		// $ === jQuery
		// json == javascript object
		$.ajax({
			url : "/cart-delete",
			type : "post",
			contentType : "application/json",
			data : JSON.stringify(data),//biến trong (stringify) là phần trên khai báo let data;

			dataType : "json", // kieu du lieu tra ve tu controller la json
			success : function(jsonResult) {
			//	alert("Chuc mung! da luu thanh cong dia chi email " + jsonResult.message.txtTitle);
				//message: ở bên contact controller có chỗ phần json.put
				$("#totalCartItemId").html(jsonResult.totalItems);
				alert('Successfully removed !');
				location.reload();
			},
			error : function(jqXhr, textStatus, errorMessage) { // error callback 
				
			}
		});}
	</script>
</body>
</html>