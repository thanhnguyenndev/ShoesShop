<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!-- directive cua JSTL -->
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
<link rel="stylesheet" href="${base}/user/css/contact.css" />
<jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
<title>| Liên Hệ</title>

</head>
<body>
	<jsp:include page="/WEB-INF/views/user/layouts/header.jsp"></jsp:include>
	<main>
		<div class="banner-common">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="banner-common__content">
							<h1 class="heading-primary heading-primary--white">Liên Hệ</h1>
							<div class="banner-common__box">
								<a href="${base }/index">
									<p class="banner-common__title">Trang chủ</p>
								</a>
								<div class="banner-common__icon">
									<img src="./img/arrows-bannser.svg" alt="" />
								</div>
								<a href="">
									<p class="banner-common_title-2 banner-common_title-2--active">Liên
										Hệ</p>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<h1 class="heading-primary heading-primary--white">Liên Hệ</h1>
		<a href="">
			<p class="banner-common__title-2 banner-common__title-2--active">Liên
				Hệ</p>
		</a>
		<div class="contact">
			<div class="container">
				<div class="row justify-content-between">
					<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6">
						<c:if test="${not empty message }">
							<div class="alert alert-primary" role="alert">${message }</div>
						</c:if>
						<%--    <form class="contact__sent" action="${base }/contact"
							method="POST" id="form-data">
							<h2 class="sent__heading">Gửi tin nhắn cho chúng tôi</h2>
							<div class="sent__group-input">
								<label for="fullname">Họ và tên*</label> <input type="text"
									id="fullname" name="fullname" />
								<p class="error">Vui lòng nhập họ và tên hợp lệ</p>
							</div>
							<div class="sent__group-input">
								<label for="email">Địa chỉ Email*</label> <input type="email"
									id="email" name="email" />
								<p class="error">Vui lòng nhập Email hợp lệ</p>
							</div>
							<div class="sent__group-input">
								<label for="numberphone">Số điện thoại*</label> <input
									type="number" id="numberphone" name="numberphone" />
								<p class="error">Vui lòng nhập số điện thoại hợp lệ</p>
							</div>
							<div class="sent__group-input">
								<label for="note">Nhập nội dung*</label>
								<textarea name="note" cols="30" rows="5" id="contacnote"></textarea>
								<p class="error">Vui lòng nhập nội dung hợp lệ</p>
							</div>
							<button type="submit" class="btn__sent" >Gửi tin</button>
							<button id="save" type="button" class="btn__sent" >Gửi tin(Ajax Normal Form)</button>
							<p class="success">${message }</p>
						</form>   --%>

						<sf:form class="contact__sent" action="${base }/contact"
							method="POST" modelAttribute="contact"
							enctype="multipart/form-data" id="form-data">
							<h2 class="sent__heading">Gửi tin nhắn cho chúng tôi</h2>

							<div class="sent__group-input">
								<label for="fullname">Họ và tên*</label>
								<sf:input path="txtName" type="text" id="fullname"
									name="txtName" />
								<p style="color: red" id="demo-name"></p>
							</div>
							<div class="sent__group-input">
								<label for="email">Địa chỉ Email*</label>
								<sf:input path="txtEmail" type="email" id="email"
									name="txtEmail" />
								<p style="color: red" id="demo-email"></p>
							</div>
							<div class="sent__group-input">
								<label for="numberphone">Số điện thoại*</label>
								<sf:input path="txtPhoneNumber" type="number" id="numberphone"
									name="txtPhoneNumber" />
								<p style="color: red" id="demo-phone"></p>
							</div>
							<div class="sent__group-input">
								<label for="note">Nhập nội dung*</label>
								<sf:textarea path="txtNote" name="txtNote" cols="30" rows="5"
									id="contacnote"></sf:textarea>
								<p style="color: red" id="demo-note"></p>
							</div>


							<button type="button" class="btn__sent"
								onclick="checkName(),checkEmRegister(),checkSDT(),checkMessage(),send(),saveContact()">Gửi
								tin</button>

							<!-- <button id="save" type="button" class="btn__sent" onclick="saveContact()">Gửi
								tin(Ajax2)</button> -->
							<%-- <p class="success">${message }</p> --%>
						</sf:form>
					</div>
					<div class="col-xl-5 col-lg-5 col-md-5 col-sm-5">
						<div class="contact__infor">
							<div class="infor__group">
								<img src="./img/contact-icon-1.svg" alt="" />
								<div class="infor__group__content">
									<p class="infor__title">Địa chỉ liên hệ</p>
									<p class="infor__text">Nguyên Xá, Bắc Từ Liêm, Hà Nội</p>
								</div>
							</div>
							<div class="infor__group">
								<img src="./img/contact-icon-2.svg" alt="" />
								<div class="infor__group__content">
									<p class="infor__title">Số điện thoại</p>
									<p class="infor__number">086 656 8489</p>
								</div>
							</div>
							<div class="infor__group">
								<img src="./img/contact-icon-3.svg" alt="" />
								<div class="infor__group__content">
									<p class="infor__title">Số điện thoại</p>
									<p class="infor__number">086 656 8489</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="map">
			<div class="container">
				<div class="row">
					<div class="col">
						<h2 class="map__heading">Bản đồ</h2>
						<div class="map__photo">
							<div style="width: 100%">
								<!-- <iframe width="100%" height="600" frameborder="0" scrolling="no"
									marginheight="0" marginwidth="0"
									src="https://maps.google.com/maps?width=100%25&amp;height=600&amp;hl=en&amp;q=s%E1%BB%91%204,%20%C4%91%C6%B0%E1%BB%9Dng%20nguy%E1%BB%85n%20ch%C3%AD%20thanh,%20%C4%91%E1%BB%91ng%20%C4%91a%20+(My%20Business%20Name)&amp;t=&amp;z=14&amp;ie=UTF8&amp;iwloc=B&amp;output=embed"></iframe> -->
								<iframe
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1861.7591492148856!2d105.73729233967289!3d21.051951653673303!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313454f79f7e1b81%3A0x6a28dd404657a687!2zUC4gTmd1ecOqbiBYw6EsIE5ndXnDqm4gWMOhLCBNaW5oIEtoYWksIELhuq9jIFThu6sgTGnDqm0sIEjDoCBO4buZaSwgVmlldG5hbQ!5e0!3m2!1sen!2s!4v1681362355276!5m2!1sen!2s"
									width="100%" height="600" style="border: 0;" allowfullscreen=""
									loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
	<jsp:include page="/WEB-INF/views/user/layouts/footer.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/views/user/layouts/js.jsp"></jsp:include>

	<!-- 	<script type="text/javascript">
		let contactName = $(".contact__sent #fullname");
		let contactEmail = $(".contact__sent #email");
		let contactPhone = $(".contact__sent #numberphone");
		let contactNote = $(".contact__sent #contacnote");
		let contacSubmit = $(".contact__sent");
		/* let success = $(".success");*/

		let errcontactName = $(".contact__sent #fullname ~ .error");
		let errcontactEmail = $(".contact__sent #email ~ .error");
		let errcontactPhone = $(".contact__sent #numberphone ~ .error");
		let errcontactNote = $(".contact__sent #contacnote ~ .error");

		errcontactName.hide();
		errcontactEmail.hide();
		errcontactPhone.hide();
		errcontactNote.hide();
		/*  success.hide();*/

		let errcontactNameBool = true;
		let errcontactEmailBool = true;
		let errcontactPhoneBool = true;
		let errcontactNoteBool = true;
		function checkName() {
			contactName.focusout(function() {
				let str = $(this).val().trim();
				if (str.length < 2) {
					errcontactName.show();
					return (errcontactNameBool = true);
				}

				errcontactName.hide();
				errcontactNameBool = false;
			});
		}
		function checkEmail() {
			contactEmail.focusout(function() {
				let str = $(this).val().trim();
				if (str.length < 1) {
					errcontactEmail.show();
					return (errcontactEmailBool = true);
				}

				errcontactEmail.hide();
				errcontactEmailBool = false;
			});
		}
		function checkPhone() {
			contactPhone.focusout(function() {
				let str = $(this).val().trim();
				if (str.length < 1) {
					errcontactPhone.show();
					return (errcontactPhoneBool = true);
				}

				errcontactPhone.hide();
				errcontactPhoneBool = false;
			});
		}
		function checkNote() {
			contactNote.focusout(function() {
				let str = $(this).val().trim();
				if (str.length < 1) {
					errcontactNote.show();
					return (errcontactNoteBool = true);
				}

				errcontactNote.hide();
				errcontactNoteBool = false;
			});
		}
		function send1() {
			if (errcontactNameBool) {
				errcontactName.show();
			}
			if (errcontactEmailBool) {
				errcontactEmail.show();
			}
			if (errcontactPhoneBool) {
				errcontactPhone.show();
			}
			if (errcontactNoteBool) {
				errcontactNote.show();
			}
			if (!errcontactNameBool &&
				      !errcontactEmailBool &&
				      !errcontactPhoneBool &&
				      !errcontactNoteBool) {
				return true;
			} else {
				//alert("Bạn nhập sai định dạng . Vui lòng nhập lại !");
				return false;
			}
		}

		function saveContact() {
			if (send1() == true) {
				let data = {
					txtName : $("#fullname").val(),
					txtEmail : $("#email").val(),
					txtNote : $("#contacnote").val(),
					txtPhoneNumber : $("#numberphone").val(),

				};
				$.ajax({
					url : "/contact-ajax",
					type : "post",
					contentType : "application/json",
					data : JSON.stringify(data),

					dataType : "json", //kiểu dữ liệu trả về là json
					success : function(jsonResult) {
						alert("Cảm ơn bạn " + jsonResult.message.txtName
								+ " đã gửi liên hệ!");
					},
					error : function(jqXhr, textStatus, errorMessage) { //error callback

					}
				});
			} else {
				alert("Bạn đã nhập sai định dạng!");
			}
		}
	</script> -->
	<script>
		$(document).ready(function() {
			$("#resetform").click(function() {
				$("#form-data")[0].reset();
			});
		});
	</script>

	<script>
		function checkEmRegister() {
			/* //var y3 = /([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})$/;//chuẩn của me*/
			var y3 = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;//chuẩn w3source
			var g = document.getElementById("email").value;
			if (y3.test(g)) {
				document.getElementById("demo-email").innerHTML = "";
				document.getElementById("email").style.border = "1px solid gray";
				return true;
			} else {
				document.getElementById("email").style.border = "1px solid red";
				document.getElementById("demo-email").innerHTML = "Note: Lưu ý định dạng email (abc@gmail.com).";
				return false;
			}
		}
		function checkName() {

			var g = document.getElementById("fullname").value;

			if (g == null || g == "") {
				document.getElementById("fullname").style.border = "1px solid red";
				document.getElementById("demo-name").innerHTML = "Note: Không được để trống trường này";
				return false;

			} else {
				document.getElementById("demo-name").innerHTML = "";
				document.getElementById("fullname").style.border = "1px solid gray";
				return true;
			}
		}
		function checkSDT() {

			var g = document.getElementById("numberphone").value;
			var vnf_regex = /((09|03|07|08|05)+([0-9]{8})\b)/g;
			if (g == null || g == "") {
				document.getElementById("numberphone").style.border = "1px solid red";
				document.getElementById("demo-phone").innerHTML = "Note: Không được để trống trường này";
				return false;

			}

			if (g != null && g != "") {
				if (vnf_regex.test(g)) {
					document.getElementById("demo-phone").innerHTML = "";
					document.getElementById("numberphone").style.border = "1px solid gray";
					return true;
				} else {
					document.getElementById("numberphone").style.border = "1px solid red";
					document.getElementById("demo-phone").innerHTML = "Note: Số điện thoại không hợp lệ";
					return false;
				}
			}
		}
		function checkMessage() {

			var g = document.getElementById("contacnote").value;

			if (g == null || g == "") {
				document.getElementById("contacnote").style.border = "1px solid red";
				document.getElementById("demo-note").innerHTML = "Note: Không được để trống trường này";
				return false;

			} else {
				document.getElementById("demo-note").innerHTML = "";
				document.getElementById("contacnote").style.border = "1px solid gray";
				return true;
			}
		}
		function send() {

			if (checkEmRegister() == true && checkName() == true
					&& checkSDT() == true && checkMessage() == true) {
				return true;

			} else {
				//alert("Bạn nhập sai định dạng . Vui lòng nhập lại !");
				return false;
			}
		}
		function saveContact() {
			if (send() == true) {
				// javascript object.
				// data la du lieu ma day len action cua controller
				let data = {
					full_name : $("#fullname").val(),
					email : $("#email").val(),
					message : $("#contacnote").val(),
					phone_number : $("#numberphone").val(),

				};
				$
						.ajax({
							url : "/contact-ajax",
							type : "post",
							contentType : "application/json;charset=utf-8",
							data : JSON.stringify(data),

							dataType : "json", //kiểu dữ liệu trả về là json
							success : function(jsonResult) {

								alert("Lưu liên hệ của "
										+ document.getElementById("fullname").value
										+ " thành công");
								document.getElementById("al").innerHTML = "Đã lưu liên hệ của "
										+ document.getElementById("fullname").value
										+ " bạn thành công";
								document.getElementById("al").style.display = "block";

							},
							error : function(jqXhr, textStatus, errorMessage) { //error callback

							}
						});
			} else {
				alert("Bạn đã nhập sai định dạng!");
			}
		}
	</script>

</body>
</html>