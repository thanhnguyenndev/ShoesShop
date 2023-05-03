<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- directive SPRING-FORM -->
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

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
<link rel="stylesheet" href="${base}/user/css/checkout.css" />
<title>| Thanh Toán</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/user/layouts/header.jsp"></jsp:include>
	<main>
		<div class="banner-common">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="banner-common__content">
							<h1 class="heading-primary heading-primary--white">Thanh
								Toán</h1>
							<div class="banner-common__box">
								<a href="${base }/index">
									<p class="banner-common__title">Trang chủ</p>
								</a>
								<div class="banner-common__icon">
									<img src="./img/arrows-banner.svg" alt="" />
								</div>
								<a href="">
									<p class="banner-common__title-2 banner-common__title-2--active">Thanh Toán</p>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		 <c:if test="${not empty thongbao }">
		<div class="alert alert-primary" role="alert" style="color: #c5837c;font-size:16px;font-weight: bold;font-family:Sans-Serif ;">
			${thongbao }
		</div>
	</c:if>
		<form class="checkout" action="${base }/pay"  method="POST" ><!-- id="pay__submit" -->
			<div class="container">
				<div class="row justify-content-between" >
					<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
						<div class="checkout__infor" data-aos="fade-right"
							data-aos-delay="100">
							<h2 class="infor__user">Thông tin người nhận:</h2>
							<div class="infor__group">
								<label for="check__name">Họ và tên*</label>
								<div class="input-wraper">
									<input class="infor__input" type="text" name="customerName"
										id="check__name" />
									<!-- <div class="error">Vui lòng nhập tên hợp lệ</div> -->
								</div>
							</div>
							<div class="infor__group">
								<label for="check__address">Địa chỉ giao hàng*</label>
								<div class="input-wraper">
									<input class="infor__input" type="text" name="customerAddress"
										id="check__address" />
									<!-- <div class="error">Vui lòng nhập địa chỉ giao hàng hợp lệ</div> -->
								</div>
							</div>
							<div class="infor__group">
								<label for="check__email">Địa chỉ Email</label>
								<div class="input-wraper">
									<input class="infor__input" type="email" id="check__email" name="customerEmail" />
									<!-- <div class="error">Vui lòng nhập Email hợp lệ</div> -->
								</div>
							</div>
							<div class="infor__group">
								<label for="check__phone">Số điện thoại*</label>
								<div class="input-wraper">
									<input class="infor__input" type="number" id="check__phone" name="customerPhone" />
								<!-- 	<div class="error">Vui lòng nhập số điện thoại hợp lệ</div> -->
								</div>
							</div>
							<div class="infor__text">
								<label for="note">Ghi chú thêm </label>
								<textarea class="infor__input infor__note" name="customerNote" id="note"
									cols="20" rows="5">         
									 </textarea>
									</div>
							</div>
						</div>
					
					
					<div class="col-xl-4 col-lg-5 col-md-6 col-sm-6">
						<div class="checkout__pay" data-aos="fade-left"
							data-aos-delay="100">
							<div class="h2 pay__heading">Đơn hàng của tôi</div>
							<div class="pay__calc pay__calc--active">
								<p class="pay__title">Thành Tiền</p>

								<c:forEach var="cartItem" items="${cart.cartItems }">
									<div class="pay__item">
										<p>
											${cartItem.productName } <span class="quantity">x ${cartItem.quanlity }</span>
										</p>
										<p><fmt:formatNumber type="number" maxFractionDigits="3"
												value="${cartItem.priceUnit }" /> đ</p>
									</div>
								</c:forEach>
								<div class="pay__total">
									<p>Tổng cộng:</p>
									<p><fmt:formatNumber type="number" maxFractionDigits="3"
												value="${totalprice }" /> đ</p>
								</div>
							</div>
							<!-- <div class="pay__method pay__method--active">
								<p class="pay__title">Phương Thức Thanh Toán</p>
								<div class="pay__radio">
									<div class="pay__group">
										<input type="radio" id="vimomo" name="get" value="vimomo" /> <label
											for="vimomo">Ví Momo</label>
									</div>
									<div class="pay__group">
										<input type="radio" id="banking" name="get" value="banking" />
										<label for="banking">Thanh toán bằng ATM</label>
									</div>
									<div class="pay__group">
										<input type="radio" id="get" name="thanhtoan1" value="nhanhang" /> <label
											for="get">Thanh toán khi nhận hàng</label>
									</div>
								</div>
								<div class="error">Vui lòng nhập phương thức thanh toán</div>
							</div> -->
							<!-- <button type="submit"  name="thanhtoan1" class="pay__paynow" >Thanh Toán</button> -->
					<!-- 		<div class="card-footer border-secondary bg-transparent"> -->
							<button type="submit"
								class="btn btn-lg btn-block btn-primary font-weight-bold my-3 py-3 btnSubmit" id="btn1" name="thanhtoan1" style="font-size: 16px" ">Place
								Order (Thanh toán khi nhận hàng)</button>
							<!-- 	<button type="submit"
								class="btn btn-lg btn-block btn-primary font-weight-bold my-3 py-3 btnSubmit" id="btn2"  name="thanh2" style="font-size: 16px" ">Place
								Order (Thanh toán bằng paypal)</button> -->

						</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</main>
	<jsp:include page="/WEB-INF/views/user/layouts/footer.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/views/user/layouts/js.jsp"></jsp:include>
<!-- 	<script type="text/javascript">
    	/* function checkSubmit(){
    		var sdt = document.getElementById("customerPhone").val();
    		alert(sdt);
    	}
    	function checkSubmit2(){
    		var sdt = document.getElementById("customerPhone").val();
    		alert(sdt);
    	} */
    	document.getElementById('btn1').onclick = function(){
    	    var x = document.getElementById('customerPhone').value;
    	    var vnf_regex = /((09|03|07|08|05)+([0-9]{8})\b)/g;
    	    if(vnf_regex.test(x) == false){
    	    	alert("Số điện thoại không thỏa mãn, mời bạn nhập lại !");
    	    	document.getElementById('customerPhone').focus();
    	    	return false;
    	    }
    	    
    	}
    </script>
    <script type="text/javascript">
    document.getElementById('btn2').onclick = function(){
	    var x = document.getElementById('customerPhone').value;
	    var vnf_regex = /((09|03|07|08|05)+([0-9]{8})\b)/g;
	    if(vnf_regex.test(x) == false){
	    	alert("Số điện thoại không thỏa mãn, mời bạn nhập lại !");
	    	document.getElementById('customerPhone').focus();
	    	return false;
	    }
	    
	}
    </script> -->
</body>
</html>