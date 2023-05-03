<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!-- directive cua JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>ListProduct - SB Admin</title>

<!-- VARIABLES -->
<jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>

<!-- CSS -->
<jsp:include page="/WEB-INF/views/manager/layout/css.jsp"></jsp:include>
</head>
<body class="sb-nav-fixed">
	<!-- HEADER -->
	<jsp:include page="/WEB-INF/views/manager/layout/header.jsp"></jsp:include>
	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<!-- MENU -->
			<jsp:include page="/WEB-INF/views/manager/layout/menu.jsp"></jsp:include>
		</div>
		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid">
					<h1 class="mt-4">PRODUCT</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="${base}/admin/index">Dashboard</a></li>
						<li class="breadcrumb-item active">Product / List-Product</li>
					</ol>

					<h3 align="center">Danh sách product</h3>
					<form action="${base }/admin/list-product" method="get">
						<label>Tìm kiếm sản phẩm: </label> <input type="text"
							name="keywork" />
						<!-- Keyword lấy theo parameter  -->
						<button type="submit" class="btn btn-info">Search</button>
						<a href="${base }/admin/add-product" class="btn btn-primary">Add
							New Product</a>
						<c:if test="${!productPage.hasContent()}">
							<div>
								<div class="alert alert-danger" role="alert">
									<strong>No Product Found</strong>
								</div>
							</div>
						</c:if>
						<p>

							</br>
							<!-- Để dùng đc jstl thì phải include nó vào -->
						<table class="table table-striped table-dark"">
							<c:if test="${productPage.hasContent() }">
								<thead>
									<tr>
										<th scope="col">ID</th>
										<th scope="col">Title</th>
										<th scope="col">Price</th>
										<th scope="col">Price-Sale</th>
										<th scope="col">ShortDescription</th>
										<th scope="col">Amount</th>
										<th scope="col">Avatar</th>
										<th scope="col">CategoryId</th>
										<th scope="col">Action</th>
									</tr>
								</thead>
							</c:if>
							<c:forEach var="product" items="${productPage.content }">
								<!-- items ở đây là biến mà ta đẩy từ thằng controller -->
								<%-- <p>${category.name }</p>
                        		<p>${category.description }</p> --%>

								<tbody>
									<tr>
										<th scope="row">${product.id }</th>
										<td>${product.title }</td>
										<td>${product.price }</td>
										<td>${product.priceSale }</td>
										<td>${product.shortDescription }</td>
										<td>${product.soLuongTon }</td>
										<td><img alt="" width="50px"
											src="${base }/upload/${product.avatar}" /></td>
										<td>${product.categories.name }</td>
										<td><a data-id="${product.id }"
											data-name="${product.title }"
											onclick="showConfirmModelDialog(this.getAttribute('data-id'),this.getAttribute('data-name'))"
											class="btn btn-danger">Delete</a><a
											href="${base }/admin/edit-product/${product.id }"
											class="btn btn-success">Edit</a></td>

									</tr>

								</tbody>
							</c:forEach>
						</table>
						<form>
							<script>
								function showConfirmModelDialog(id, name) {
									$('#productName').text(name);
									$('#yesOption').attr('href',
											'/admin/delete/' + id);
									$('#confirmationId').modal('show');
								}
							</script>

							<!-- The Modal -->
							<div class="modal" id="confirmationId">
								<div class="modal-dialog">
									<div class="modal-content">

										<!-- Modal Header -->
										<div class="modal-header">
											<h4 class="modal-title">Confirmation</h4>
											<button type="button" class="close" data-dismiss="modal">&times;</button>
										</div>

										<!-- Modal body -->
										<div class="modal-body">
											Bạn có muốn xóa sản phẩm "<span id="productName"></span>"?
										</div>

										<!-- Modal footer -->
										<div class="modal-footer">
											<a id="yesOption" type="button" class="btn btn-danger">Yes</a>
											<button type="button" class="btn btn-secondary"
												data-dismiss="modal">No</button>
										</div>

									</div>
								</div>
							</div>
							<div class="form-inline float-left">
								<label for="size">Size: </label> <select name="size" id="size"
									class="form-control" onchange="this.form.submit()">
									<option selected="${productPage.size ==5}" value="5">5</option>
									<option selected="${productPage.size ==10}" value="10">10</option>
									<option selected="${productPage.size ==15}" value="15">15</option>
									<option selected="${productPage.size ==20}" value="20">20</option>
									<option selected="${productPage.size ==5}" value="5">--</option>
								</select>
							</div>
						</form>

						<nav aria-label="Page navigation example">
							<ul class="pagination  float-right">
								<c:if test="${number > 0 }">
									<li class="page-item"><a class="page-link"
										href="${base }/admin/list-product?page=0">First</a></li>
									<li class="page-item"><a class="page-link"
										href="${base }/admin/list-product?page=${productPage.number - 1}">Previous</a></li>
								</c:if>
								<c:forEach var="i" items="${pageNumbers }">
									<c:if test="${productPage.totalPages > 1 }">
										<li class="page-item"><a
											href="${base }/admin/list-product?page=${i-1}"
											class="page-link">
												<th>${i }</th>
										</a></li>
									</c:if>
								</c:forEach>
								<c:if test="${number < productPage.totalPages }">
									<li class="page-item"><a class="page-link"
										href="${base }/admin/list-product?page=${productPage.number + 1}">Next</a></li>
									<li class="page-item"><a class="page-link"
										href="${base }/admin/list-product?page=${productPage.totalPages - 1}">Last</a></li>
								</c:if>
							</ul>
						</nav>

						</p>
					</form>
				</div>
			</main>
			<!-- Footer -->
			<jsp:include page="/WEB-INF/views/manager/layout/footer.jsp"></jsp:include>
		</div>
	</div>
	<!-- JAVASCRIPT -->
	<jsp:include page="/WEB-INF/views/manager/layout/js.jsp"></jsp:include>
	
</body>
</html>
