<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="${base}/user/font/fontawesome/css/all.css"/>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&amp;display=swap" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css2?family=Pattaya&amp;display=swap" rel="stylesheet"/>
    <link rel="stylesheet" href="${base}/user/css/style.css"/>
    <link rel="stylesheet" href="${base}/user/css/footer.css"/>
    <link href="./img/favicon.svg" type="image/x-icon" rel="icon"/>
    <link rel="stylesheet" href="${base}/user/css/error.css"/>
    <title>| Error</title>
  </head>
  <body>
     <jsp:include page="/WEB-INF/views/user/layouts/header.jsp"></jsp:include>
    <main>
      <div class="success">
        <div class="container">
          <div class="row">
            <div class="col">
              <div class="success__photo"><img src="./img/success-3.png" alt="Không tìm thấy trang"/></div>
              <h1 class="success__heading">Trang này không khả dụng </h1>
              <p class="success__text">Liên kết bạn truy cập có thể bị hỏng hoặc trang có thể đã bị gỡ.</p>
              <form class="success__form">
                <div class="group-input">
                  <input type="text" placeholder="Tìm kiếm..."/>
                  <button><i class="fas fa-search"></i></button>
                </div>
              </form>
              <div class="success__home"><img src="./img/success-2.svg" alt="back"/><a href="./index.html">Quay lại Trang chủ</a></div>
            </div>
          </div>
        </div>
      </div>
    </main>
   <jsp:include page="/WEB-INF/views/user/layouts/footer.jsp"></jsp:include>
    <jsp:include page="/WEB-INF/views/user/layouts/js.jsp"></jsp:include>
  </body>
</html>