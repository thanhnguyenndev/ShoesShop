<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
	<!-- directive SPRING-FORM -->
	<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

		<!-- directive cua JSTL -->
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
			<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
				<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
						<link href="https://fonts.googleapis.com/css2?family=Pattaya&amp;display=swap"
							rel="stylesheet" />
						<link rel="stylesheet" href="${base}/user/css/style.css" />
						<link rel="stylesheet" href="${base}/user/css/footer.css" />
						<link href="${base}/user/img/logo.svg" type="image/x-icon" rel="icon" />
						<link rel="stylesheet" href="${base}/user/css/product.css" />
						<link rel="stylesheet" href="${base}/user/css/productcart.css" />

						<title>| Sản Phẩm</title>
						<style>
							.font-size16 {
								font-size: 16px !important;
							}

							.btn-sm {
								font-size: 16px !important;
							}

							.h6,
							h6 {
								font-size: 1.6rem;
							}

							.fa-eye:before {
								color: red;
								content: "\f06e";
							}

							.fa-shopping-cart:before {
								color: red;
								content: "\f07a";
							}

							.page-size {
								width: 65px;
								height: 65px;
							}
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
												<h1 class="heading-primary heading-primary--white">Sản Phẩm</h1>
												<div class="banner-common__box">
													<!-- <a href="./index.html">
									<p class="banner-common__title">Trang chủ</p>
								</a> -->
													<div class="banner-common__icon">
														<img src="./img/arrows-banner.svg" alt="" />
													</div>
													<!-- <a href="">
									<p
										class="banner-common__title-2 banner-common__title-2--active">Sản
										Phẩm</p>
								</a> -->
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<main class="product">
								<div class="container">
									<div class="row">
										<div class="col-xl-3 col-lg-3">
											<div id="product__filter-icon">
												<i class="fas fa-filter"></i>
											</div>
											<div class="product__background"></div>

											<div class="product__section">
												<div class="product__section-header">
													<h4 class="product__section__title">LOẠI GIÀY</h4>
													<span></span><i class="fas fa-chevron-right"></i>
												</div>
												<div id="category_select" class="product__wraper">
													<c:forEach var="category" items="${categories}">
														<div class="product__checkbox-group">
															<input type="checkbox" name="loaiGiay" id="${category.id}"
																value="${category.id}" /> <label
																for="${category.id}">${category.name}</label>
														</div>
													</c:forEach>
													<!-- <div class="product__checkbox-group">
										<input type="checkbox" name="loaiGiay" id="giayNike"
											value="giayNike" /> <label for="giayNike">Giày Nike</label>
									</div>
									<div class="product__checkbox-group">
										<input type="checkbox" name="loaiGiay" id="giayAdidas"
											value="giayAdidas" /> <label for="giayAdidas">Giày Adidas</label>
									</div>
									<div class="product__checkbox-group">
										<input type="checkbox" name="loaiGiay" id="giayPuma"
											value="giayPuma" /> <label for="giayPuma"> Giày Puma</label>
									</div>
									<div class="product__checkbox-group">
										<input type="checkbox" name="loaiGiay" id="giayUA"
											value="giayUA" /> <label for="giayUA"> Giày Under Armour</label>
									</div> -->
												</div>
											</div>
											<div class="product__section">
												<div class="product__section-header">
													<h4 class="product__section__title">KHOẢNG GIÁ</h4>
													<span></span><i class="fas fa-chevron-right"></i>
												</div>
												<div class="product__wraper">
													<div class="product__checkbox-group">
														<input type="radio" name="khoangGia" id="duoi1m"
															value="duoi1m" /> <label for="duoi1m">Dưới 1,000,000</label>
													</div>
													<div class="product__checkbox-group">
														<input type="radio" name="khoangGia" id="tu1mden3m"
															value="tu1mden3m" /> <label for="tu1mden3m">Từ
															1,000,000 đến 3,000,000</label>
													</div>
													<div class="product__checkbox-group">
														<input type="radio" name="khoangGia" id="tu1mden5m"
															value="tu1mden5m" /> <label for="tu1mden5m"> Từ
															3,000,000 đến 5,000,000</label>
													</div>
													<div class="product__checkbox-group">
														<input type="radio" name="khoangGia" id="tren5m"
															value="tren5m" /> <label for="tren5m"> Trên
															5,000,000</label>
													</div>
												</div>
											</div>
											<!-- <div class="product__section">
								<div class="product__section-header">
									<h4 class="product__section__title">NÂNG CAO</h4>
									<span></span><i class="fas fa-chevron-right"></i>
								</div>
								<div class="product__wraper">
									<div class="product__checkbox-group">
										<input type="checkbox" name="nangCao" id="maGiamGia"
											value="maGiamGia" /> <label for="maGiamGia">Mã giảm
											giá</label>
									</div>
									<div class="product__checkbox-group">
											value="khuyenmai" /> <label for="khuyenmai">Khuyến
											Mại</label>
									</div>
									<div class="product__checkbox-group">
										<input type="checkbox" name="nangCao" id="bannhieunhat"
											value="bannhieunhat" /> <label for="bannhieunhat">
											Bán Nhiều Nhất</label>
									</div>
									<div class="product__checkbox-group">
										<input type="checkbox" name="nangCao" id="sanphanmoi"
											value="sanphanmoi" /> <label for="sanphanmoi"> Sản
											phẩm mới</label>
									</div>
								</div>
							</div> -->
											<div class="product__border"></div>
											<div class="product__action">
												<button onclick="onclickProduct()" class="product__btn">Áp dụng</button>
												<button class="product__btn product__btn--white">Bỏ lọc</button>
											</div>
											<div id="product__close">
												<p>Đóng</p>
											</div>

										</div>
										<div class="col-xl-8 col-lg-9 col-md-12">
											<div class="product__sort" data-aos="fade-up">
												<form action="${base}/shop" method="GET" style="padding-right: 350px">
													<div class="input-group float-left">
														<input type="text" name="keywork" class="form-control"
															placeholder="Search by name" style="font-size: 15px">
														<div class="input-group-append">
															<button type="submit"
																class="input-group-text bg-transparent text-primary"
																style="font-size: 15px; color: red !important;">
																<i class="fa fa-search"></i>
															</button>
														</div>
													</div>
												</form>
												<form action="${base}/shop" method="GET">
													<p class="product__sort-title">Sắp xếp theo:</p>
													<select onclick="selectedSort()" class="product-sort" name="product-sort"
														id="product__select">
														<option value="default">Mặc định</option>
														<option value="az">A đến Z</option>
														<option value="za">Z đến A</option>
														<option value="lowHigh">Giá từ thấp đến cao</option>
														<option value="highLow">Giá từ cao đến thấp</option>
													</select><i class="fas fa-chevron-right product__sort-icon"></i>
												</form>

											</div>

											<div class="product__list">
												<div id="content" class="row">
													<c:choose>
														<c:when test="${productPages.size()>0 }">
															<c:forEach var="listpr" items="${productShop.content}">
																<div class="col-xl-4 col-lg-4 col-md-4 col-sm-6 col-12">
																	<div class="best-slice__card" data-aos="fade-up"
																		data-aos-delay="0">
																		<div class="best-slice__photo">
																			<a href="${base }/detail/${listpr.id}"><img
																					src="${base}/upload/${listpr.avatar}"
																					alt=""
																					title="${listpr.title}" /></a>
																		</div>
																		<div class="best-slice__content">
																			<a href="${base }/detail/${listpr.id}">
																				<h3 class="best-slice__heading">
																					${listpr.title}</h3>
																			</a>
																			<div class="best-slice__rate">
																				<i class="fas fa-star"></i><i
																					class="fas fa-star"></i><i
																					class="fas fa-star"></i><i
																					class="fas fa-star"></i><i
																					class="fas fa-star"></i>
																			</div>
																			<div class="best-slice__price">
																				<fmt:formatNumber type="number"
																					maxFractionDigits="3"
																					value="${listpr.price}" />
																				đ
																			</div>
																			<button class="btn btn--red btn--transtion"
																				onclick="add1ToCart(${listpr.id},1)">
																				<span>Thêm Vào Giỏ</span><i
																					class="fas fa-cart-plus"></i>
																			</button>
																		</div>
																	</div>
																</div>
															</c:forEach>
														</c:when>
														<c:otherwise>
															<tr>
																<td colspan="8" align="center"
																	class="pagination justify-content-center mb-3">No
																	Product Available</td>
															</tr>
														</c:otherwise>
													</c:choose>


													<div class="product__pages" style="width: 100%">
														<div class="col-12 pb-1">
															<nav aria-label="Page navigation example">
																<%-- <ul class="float-left">
																	<c:if test="${productPages.size()>0}">
																		<div
																			class="pagination justify-content-center mb-3">
																			Showing ${number+1 } to ${size } of
																			${totalElements}
																			Products</div>
																	</c:if>
																	</ul> --%>
																	<ul class="pagination  float-right">
																		<c:if test="${number > 0 }">
																			<li class="page-item " style="width: 90px;">
																				<a class="page-link"
																					href="${base }/shop?page=0"
																					style="border-radius: 100px">First</a>
																			</li>
																			<li class="page-item "
																				style="width: 120px;"><a
																					class="page-link"
																					href="${base}/shop?page=${productShop.number - 1}"
																					style="border-radius: 100px">Previous</a>
																			</li>
																		</c:if>
																		<c:forEach var="i" items="${pageNumbers}">
																			<c:if test="${productShop.totalPages > 1 }">
																				<li class="page-item page-size">
																					<a href="${base }/shop?page=${i-1}"
																						class="page-link ${i-1==productShop.number?"
																						active":""}"
																						style="border-radius: 100px">
																						<th>${i}</th>
																					</a>
																				</li>
																			</c:if>
																		</c:forEach>

																		<c:if
																			test="${number < productShop.totalPages }">
																			<li class="page-item " style="width: 90px;">
																				<a class="page-link"
																					href="${base }/shop?page=${productShop.number + 1}"
																					style="border-radius: 100px">Next</a>
																			</li>
																			<li class="page-item " style="width: 70px;">
																				<a class="page-link"
																					href="${base }/shop?page=${productShop.totalPages - 1}"
																					style="border-radius: 100px;">Last</a>
																			</li>
																		</c:if>
																	</ul>
															</nav>
														</div>


													</div>
												</div>
											</div>
											<!-- end -->
										</div>
									</div>
								</div>
							</main>
						</main>
						<jsp:include page="/WEB-INF/views/user/layouts/footer.jsp"></jsp:include>
						<jsp:include page="/WEB-INF/views/user/layouts/js.jsp"></jsp:include>
						<script type="text/javascript">
							function add1ToCart(productId, quanlity) {
								let data = {
									productId: productId,
									quanlity: quanlity
								};
								jQuery.ajax({
									url: "/cart/add",
									type: "post",
									contentType: "application/json",
									data: JSON.stringify(data),
									dataType: "json", // kieu du lieu tra ve tu controller la json
									success: function (jsonResult) {
										let totalItems = jsonResult.totalItems;
										jQuery("#totalCartItemId").html(totalItems);
										alert(jsonResult.message);

									},
									error: function (jqXhr, textStatus, errorMessage) { // error callback 
									}
								});
							}

							function searchByName(param) {
								var txtSearch = param.value;
								$.ajax({
									url: "searchByAjax",
									type: "get",
									data: {
										txt: txtSearch
									},

									success: function (data) {
										var row = document.getElementById("content");
										row.innerHTML = data;
									},
									error: function (xhr) {
										//Do Something
									}

								});
							}

							function findByCategory(listId) {
								console.log(listId);
								$.ajax({
									url: "http://localhost:8080/findByCategory",
									type: "POST",
									dataType: "json",
									data: JSON.stringify(listId),
									headers: {
										'Content-Type': 'application/json;charset=UTF-8',
									},
									success: function (data) {
										console.log(data);
									}

								});
							}

							function onclickProduct() {
								console.log("abc");
								var selected = [];
								$('#category_select input:checked').each(function () {
									selected.push(Number($(this).attr('value')));
								});
								findByCategory(selected);
								console.log(selected)

							}
							function findBySortType(sortType){
								console.log(sortType);
								$.ajax({
									url: "http://localhost:8080/findByCategory",
									type: "POST",
									dataType: "json",
									data: JSON.stringify(listId),
									headers: {
										'Content-Type': 'application/json;charset=UTF-8',
									},
									success: function (data) {
										console.log(data);
									}

								});
							}
							function selectedSort() {
								$("select.product-sort").change(function () {
										var selectedValue = $(this).children("option:selected").val();
										console.log(selectedValue);
									});

									
							}
						</script>
					</body>

					</html>