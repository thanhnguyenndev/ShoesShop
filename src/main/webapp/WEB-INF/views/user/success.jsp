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
    <link rel="stylesheet" href="${base}/user/css/success.css"/>

    <title>| Success</title>
  </head>
  <body>
     <jsp:include page="/WEB-INF/views/user/layouts/header.jsp"></jsp:include>
    <main>
      <div class="success">
        <div class="container">
          <div class="row">
            <div class="col">
              <div class="success__photo" data-aos="fade-up" data-aos-delay="100"><img src="./img/success-1.svg" alt="Thành công"/></div>
              <h1 class="success__heading" data-aos="fade-up" data-aos-delay="200">Bạn thanh toán thành công!</h1>
              <p class="success__text" data-aos="fade-up" data-aos-delay="300">
                Cảm ơn bạn đã thanh toán. Đơn hàng của bạn chuẩn bị gửi<br/>vui lòng kiểm tra email đăng kí.</p>
              <form class="success__form" data-aos="fade-up" data-aos-delay="400">
                <div class="group-input">
                  <input type="text" placeholder="Tìm kiếm..."/>
                  <button><i class="fas fa-search"></i></button>
                </div>
              </form>
              <div class="success__home" data-aos="fade-up" data-aos-delay="500"><img src="./img/success-2.svg" alt="back"/><a href="./index.html">Quay lại Trang chủ</a></div>
            </div>
          </div>
        </div>
      </div>
    </main>
  <jsp:include page="/WEB-INF/views/user/layouts/footer.jsp"></jsp:include>
    <jsp:include page="/WEB-INF/views/user/layouts/js.jsp"></jsp:include>
  </body>
</html>