<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!-- directive cua JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>SaleOrder - SB Admin</title>
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
                        <h1 class="mt-4">List-Order</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="${base}/admin/index">Dashboard</a></li>
                            <li class="breadcrumb-item active">SaleOrder / List-Order</li>
                        </ol>
                        
                        <h3 align="center">Danh sách hóa đơn</h3>
                        <form action="${base }/admin/list-order" method="get">
                      	<label>Tìm kiếm thông tin: </label>
                        <input type="text" name="keyword" /> <!-- Keyword lấy theo parameter  -->
                        <button type="submit" class="btn btn-info">Search</button>
                           <c:if test="${!saleorder.hasContent()}">
                        <div>
                        	<div class="alert alert-danger" role="alert">
                        		<strong>No SaleOrder Found</strong>
                        	</div>
                        </div>
                        </c:if> 
                        <%-- <a href="${base }/admin/add-category" class="btn btn-primary">Add New Category</a> --%>
                        <p>
                        	<!-- Để dùng đc jstl thì phải include nó vào -->
                        	<table class="table table-striped table-dark">
                        	<c:if test="${saleorder.hasContent() }">
								  <thead>
								    <tr>
								      <th scope="col">ID</th>
								      <th scope="col">Customer Name</th>
								      <th scope="col">Customer Address</th>
								      <th scope="col">Customer Phone</th>
								      <th scope="col">Customer Email</th>
								      <th scope="col">Status</th>
								      <th scope="col">Action</th>
								    </tr>
								  </thead>
								  </c:if>
								  <c:forEach var="s" items="${saleorder.content }" varStatus="loop">
                        			<!-- items ở đây là biến mà ta đẩy từ thằng controller -->
                        		<%-- <p>${category.name }</p>
                        		<p>${category.description }</p> --%>
                        	
								  <tbody>
								    <tr>
								      <th scope="row">${s.id }</th>
								      <td>${s.customerName }</td>
								      <td>${s.customerAddress }</td>
								      <td>${s.customerPhone }</td>
								      <td>${s.customerEmail }</td>
								      <td>${s.tinhTrang }</td>
								      <td>
								      	<%-- <a href="${base }/admin/del-category/${category.id}" class="btn btn-danger">Delete</a>
								      	<a href="${base }/admin/edit-category/${category.id}" class="btn btn-success">Edit</a> --%>
								      	
								      	<a href="${base }/admin/detail-order/${s.id}" class="btn btn-primary">View Detail<i class="fas fa-eye" style="margin-left: 5px"></i></a>
								      	<a href="${base }/admin/del-order/${s.id}" class="btn btn-danger">Delete</a>
								      	<a href="${base }/admin/edit-order/${s.id}" class="btn btn-success">Edit</a>
								      	
								      </td>
								    </tr>
								    
								  </tbody>
								  </c:forEach>
								</table>
								<div class="form-inline float-left">
								<label for="size">Size: </label> <select name="size" id="size"
									class="form-control" onchange="this.form.submit()">
									<option selected="${saleorder.size ==5}" value="5">5</option>
									<option selected="${saleorder.size ==10}" value="10">10</option>
									<option selected="${saleorder.size ==15}" value="15">15</option>
									<option selected="${saleorder.size ==20}" value="20">20</option>
									<option selected="${saleorder.size ==5}" value="5">--</option>
								</select>
							</div>
                        		 <nav aria-label="Page navigation example">
								  <ul class="pagination float-right">
								    <li class="page-item"><a class="page-link" href="${base }/admin/list-order?page=0">First</a></li>
								    <li class="page-item"><a class="page-link" href="${base }/admin/list-order?page=${saleorder.number - 1}">Previous</a></li>
								    	<c:forEach var="i" items="${pageNumbers }">
									<c:if test="${saleorder.totalPages > 1 }">
										<li class="page-item"><a
											href="${base }/admin/list-order?page=${i-1}"
											class="page-link">
												<th>${i }</th>
										</a></li>
									</c:if>
								</c:forEach>
								    <li class="page-item"><a class="page-link" href="${base }/admin/list-order?page=${saleorder.number + 1}">Next</a></li>
								    <li class="page-item"><a class="page-link" href="${base }/admin/list-order?page=${saleorder.totalPages - 1}">Last</a></li>
								  </ul>
								</nav>
								<!-- Button trigger modal -->
<%-- <a href="${base }/admin/detail-contact/${c.id}" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" >
  												Launch demo modal
</a>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        ...
        <p>${contactEntity.firstName }</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        
      </div>
    </div>
  </div>
</div> --%>
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
	