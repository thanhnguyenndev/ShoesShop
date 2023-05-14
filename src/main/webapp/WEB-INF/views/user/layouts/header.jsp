<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!-- directive SPRING-FORM -->
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!-- directive cua JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<link href="${base}/user/img/logo.svg" type="image/x-icon" rel="icon" />

<header>
	<div class="container header">
		<div class="header-left">
			<div class="logo">
				<a class="logo__link" href="${base }/index"><img
					src="${base}/user/img/logo.svg" alt="Logo" /></a>
			</div>
			<div class="header-left__search desktop">
				<div class="header-left__search-box">
					<form class="header-left__form" action="${base}/shop" method="GET">
						<input class="header-left__input" type="text" name="keyword"
							placeholder="Tìm kiếm..." />
						<button class="header-left__link" style="border: none; background: transparent;" type="submit">
							<i class="fas fa-search header-left__icon"></i>
							</button>
					</form>
				</div>
			</div>
		</div>
		<div class="header-right">
			<nav class="header-right__main-menu desktop">
				<ul class="header-right__list">
					<li class="header-right__item"><a
						class="header-right__link home--active" href="${base }/index">Trang
							chủ</a></li>
							
					<li class="header-right__item"><a
						class="header-right__link product--active" href="${base }/shop">Sản
							Phẩm</a></li>
					<li class="header-right__item"><a
						class="header-right__link blog--active" href="${base }/blog">Tin
							Tức</a></li>
					<li class="header-right__item"><a
						class="header-right__link contact--active" href="${base }/contact">Liên
							Hệ</a></li>
				</ul>
			</nav>
			<div class="header-right__avatar">		
				<c:choose>
						<c:when test="${isLogined}">
							<a class="nav-item nav-link" style="color:#666666">Welcome ${userLogined.username }</a>
							<a href="${base }/logout" class="nav-item nav-link style1" style="color:#666666"><i class="fas fa-user"> Logout</i></a>
						</c:when>
						<c:otherwise>
							<div class="navbar-nav ml-auto py-0">
								<a href="${base }/login" class="nav-item nav-link style1" style="color:#666666"><i class="fas fa-user"> Login</i></a>
							</div>
						</c:otherwise>
					</c:choose>
			</div>
			<div class="header-right__search">
				<i class="fas fa-search header-right__icon mobile"> </i>
			</div>
			<div class="header-right__cart">
				<a class="header-right__link cart--active" href="${base }/cart/view"><i
					class="fas fa-cart-arrow-down header-right__icon"><span id="totalCartItemId" class="badge">${totalItems }</span></i></a>
			</div>
			<div class="header-right__open-draw">
				<i class="fas fa-bars mobile"></i>
			</div>
		</div>
		<div class="mobile" id="clone-menu">
			<nav class="header-right__main-menu">
				<ul class="header-right__list">
					<li class="header-right__item"><a
						class="header-right__link home--active" href="./index.html">Trang
							chủ</a></li>
					<li class="header-right__item"><a
						class="header-right__link product--active" href="./product.html">Sản
							Phẩm</a></li>
					<li class="header-right__item"><a
						class="header-right__link blog--active" href="./blog.html">Tin
							Tức</a></li>
					<li class="header-right__item"><a
						class="header-right__link contact--active" href="./contact.html">Liên
							Hệ</a></li>
				</ul>
			</nav>
		</div>
		<div class="clone-menu__box"></div>
		<div class="scroll">
			<i class="fas fa-arrow-up"></i>
		</div>
		<div id="header__user">
			<div class="user__box">
				<p class="user--active user__action">Đăng nhập</p>
				<p class="user__action">Đăng kí</p>
			</div>
			<form class="user__form" action="./index.html" data-number="0"
				id="user__signin">
				<div class="group-input">
					<input type="text" placeholder="Email" id="form__email" />
					<p class="error">Vui lòng nhập email hợp lệ</p>
				</div>
				<div class="group-input group-last">
					<input type="password" placeholder="Password" id="form__password" />
					<p class="error">Vui lòng nhập Password hợp lệ</p>
				</div>
				<a class="user__form__box" href="#"><i
					class="far fa-question-circle"></i>
					<p>Quên mật khẩu</p></a>
				<button class="user__btn">ĐĂNG NHẬP</button>
				<div class="user__socail">
					<p>Hoặc đăng nhập với</p>
					<div class="user__socail__list">
						<a class="user__socail__box" href="#"><img
							src="${base}/user/img/user-1.svg" alt="facebook" /></a><a
							class="user__socail__box" href="#"><img
							src="${base}/user/img/user-2.svg" alt="google" /></a><a
							class="user__socail__box" href="#"><img
							src="${base}/user/img/user-3.svg" alt="twiter" /></a>
					</div>
				</div>
			</form>
			<form class="user__form" action="./index.html" data-number="1"
				id="user__signup">
				<div class="group-input">
					<input type="text" placeholder="Họ và Tên" id="signup__fullname" />
					<p class="error">Vui lòng nhập họ và tên hợp lệ</p>
				</div>
				<div class="group-input">
					<input type="number" placeholder="Số điện thoại" id="signup__phone" />
					<p class="error">Vui lòng nhập số điện thoại hợp lệ</p>
				</div>
				<div class="group-input">
					<input type="text" placeholder="Email" id="signup__email" />
					<p class="error">Vui lòng nhập Email hợp lệ</p>
				</div>
				<div class="group-input">
					<input type="text" placeholder="Mật khẩu" id="signup__password" />
					<p class="error">Vui lòng nhập nhập mật khẩu hợp lệ</p>
				</div>
				<div class="group-input">
					<input type="text" placeholder="Nhập lại mật khẩu"
						id="signup__match" />
					<p class="error">Vui lòng nhập lại mật khẩu hợp lệ</p>
				</div>
				<button class="user__btn user__signin">Đăng kí</button>
			</form>
		</div>
	</div>
</header>