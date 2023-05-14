<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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
<link rel="stylesheet" href="${base}/user/css/blog.css" />
<title>| Tin Tức</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/user/layouts/header.jsp"></jsp:include>
	<main>
		<div class="banner-common">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="banner-common__content">
							<h1 class="heading-primary heading-primary--white">Tin Tức</h1>
							<div class="banner-common__box">
								<a href="${base }/index">
									<p class="banner-common__title">Trang chủ</p>
								</a>
								<div class="banner-common__icon">
									<img src="${base}/user/img/arrows-banner.svg" alt="" />
								</div>
								<a href="">
									<p class="banner-common__title-2 banner-common__title-2--active">Tin
										Tức</p>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="article">
			<div class="container">
				<div class="row">
					<div class="col">
						<h2 class="article__heading">Bài viết</h2>
						<div class="article__content">
							<div class="row">
								<div class="col-xl-4 col-lg-4 col-md-6 col-sm-6">
									<a class="article__box"
										href="https://vnexpress.net/thu-mon-chelsea-bi-che-thieu-dang-cap-4592787.html">
										<div class="article__photo">
											<img src="${base}/user/img/tintuc1.jpg" alt="tintuc1"
												title="Thủ môn Chelsea bị chê 'thiếu đẳng cấp'" />
										</div>
										<div class="article__info">
											<h3 class="aricle__heading-tertiary">Thủ môn Chelsea bị
												chê 'thiếu đẳng cấp'</h3>
											<div class="article__time">
												<p>
													<i class="far fa-user"></i>
												</p>
												<p>|</p>
												<p>
													<i class="far fa-clock"></i>
												</p>
												<p>13/4/2023</p>
												<p>|</p>
												<p>
													<i class="far fa-eye"></i>
												</p>
												<p>2.200</p>
											</div>
											<p class="article__text">Theo chuyên gia Anh, thủ môn
												Kepa Arrizabalaga mắc lỗi ở bàn thua thứ hai...</p>
										</div>
									</a>
								</div>
								<div class="col-xl-4 col-lg-4 col-md-6 col-sm-6">
									<a class="article__box"
										href="https://vnexpress.net/hlv-ancelotti-trach-real-khong-thang-dam-chelsea-4592803.html">
										<div class="article__photo">
											<img src="${base}/user/img/tintuc2.jpg"
												alt="HLV Ancelotti trách
												Real không thắng đậm Chelsea"
												title="HLV Ancelotti trách
												Real không thắng đậm Chelsea" />
										</div>
										<div class="article__info">
											<h3 class="aricle__heading-tertiary">HLV Ancelotti trách
												Real không thắng đậm Chelsea</h3>
											<div class="article__time">
												<p>
													<i class="far fa-user"></i>
												</p>
												<p>|</p>
												<p>
													<i class="far fa-clock"></i>
												</p>
												<p>13/4/2023</p>
												<p>|</p>
												<p>
													<i class="far fa-eye"></i>
												</p>
												<p>2.472</p>
											</div>
											<p class="article__text">"Real gặp khó những phút đầu,
												nhưng mục tiêu đặt ra là ghi bàn trước và đó là...</p>
										</div>
									</a>
								</div>
								<div class="col-xl-4 col-lg-4 col-md-6 col-sm-6">
									<a class="article__box"
										href="https://vnexpress.net/lampard-tu-hao-ve-chelsea-du-thua-real-4592779.html">
										<div class="article__photo">
											<img src="${base}/user/img/tintuc3.jpg"
												alt="Lampard tự hào về Chelsea dù thua Real"
												title="Lampard tự hào về Chelsea dù thua Real" />
										</div>
										<div class="article__info">
											<h3 class="aricle__heading-tertiary">Lampard tự hào về
												Chelsea dù thua Real</h3>
											<div class="article__time">
												<p>
													<i class="far fa-user"></i>
												</p>
												<p>|</p>
												<p>
													<i class="far fa-clock"></i>
												</p>
												<p>13/4/2023</p>
												<p>|</p>
												<p>
													<i class="far fa-eye"></i>
												</p>
												<p>2.434</p>
											</div>
											<p class="article__text">HLV Frank Lampard đề cao tinh
												thần thi đấu của Chelsea khi chơi với...</p>
										</div>
									</a>
								</div>
								<div class="col-xl-4 col-lg-4 col-md-6 col-sm-6">
									<a class="article__box"
										href="https://vnexpress.net/chu-tich-chelsea-bi-do-loi-cho-tran-thua-real-4592778.html">
										<div class="article__photo">
											<img src="${base}/user/img/tintuc4.jpg"
												alt="“Chủ tịch Chelsea bị đổ lỗi cho trận thua Real"
												title="Chủ tịch Chelsea bị đổ lỗi cho trận thua Real" />
										</div>
										<div class="article__info">
											<h3 class="aricle__heading-tertiary">Chủ tịch Chelsea bị
												đổ lỗi cho trận thua Real</h3>
											<div class="article__time">
												<p>
													<i class="far fa-user"></i>
												</p>
												<p>|</p>
												<p>
													<i class="far fa-clock"></i>
												</p>
												<p>13/4/2023</p>
												<p>|</p>
												<p>
													<i class="far fa-eye"></i>
												</p>
												<p>2.552</p>
											</div>
											<p class="article__text">Chủ tịch Todd Boehly bị CĐV chỉ
												trích vì dự đoán Chelsea thắng Real 3-0...</p>
										</div>
									</a>
								</div>
								<div class="col-xl-4 col-lg-4 col-md-6 col-sm-6">
									<a class="article__box"
										href="https://vnexpress.net/mane-dam-vao-mat-sane-4592766.html">
										<div class="article__photo">
											<img src="${base}/user/img/tintuc5.jpg"
												alt="Mane đấm vào mặt Sane" title="Mane đấm vào mặt Sane" />
										</div>
										<div class="article__info">
											<h3 class="aricle__heading-tertiary">Mane đấm vào mặt
												Sane</h3>
											<div class="article__time">
												<p>
													<i class="far fa-user"></i>
												</p>
												<p>|</p>
												<p>
													<i class="far fa-clock"></i>
												</p>
												<p>13/4/2023</p>
												<p>|</p>
												<p>
													<i class="far fa-eye"></i>
												</p>
												<p>2.535</p>
											</div>
											<p class="article__text">Tiền đạo Sadio Mane tấn công và
												đấm vào mặt đồng đội Leroy Sane...</p>
										</div>
									</a>
								</div>
								<div class="col-xl-4 col-lg-4 col-md-6 col-sm-6">
									<a class="article__box"
										href="https://vnexpress.net/hlv-milan-canh-giac-du-thang-napoli-4592786.html">
										<div class="article__photo">
											<img src="${base}/user/img/tintuc6.jpg"
												alt="HLV Milan cảnh giác dù thắng Napoli"
												title="HLV Milan cảnh giác dù thắng Napoli" />
										</div>
										<div class="article__info">
											<h3 class="aricle__heading-tertiary">HLV Milan cảnh giác
												dù thắng Napoli</h3>
											<div class="article__time">
												<p>
													<i class="far fa-user"></i>
												</p>
												<p>|</p>
												<p>
													<i class="far fa-clock"></i>
												</p>
												<p>13/4/2023</p>
												<p>|</p>
												<p>
													<i class="far fa-eye"></i>
												</p>
												<p>2.535</p>
											</div>
											<p class="article__text">Theo HLV Stefano Pioli, thắng
												Napoli 1-0 ở lượt đi không đảm bảo lợi thế cho Milan...</p>
										</div>
									</a>
								</div>
								<div class="col-xl-4 col-lg-4 col-md-6 col-sm-6">
									<a class="article__box"
										href="https://vnexpress.net/real-ha-chelsea-o-luot-di-tu-ket-champions-league-4592774.html">
										<div class="article__photo">
											<img src="${base}/user/img/tintuc7.jpg"
												alt="Real hạ Chelsea ở lượt đi tứ kết Champions League"
												title="Real hạ Chelsea ở lượt đi tứ kết Champions League" />
										</div>
										<div class="article__info">
											<h3 class="aricle__heading-tertiary">Real hạ Chelsea ở
												lượt đi tứ kết Champions League</h3>
											<div class="article__time">
												<p>
													<i class="far fa-user"></i>
												</p>
												<p>|</p>
												<p>
													<i class="far fa-clock"></i>
												</p>
												<p>13/4/2023</p>
												<p>|</p>
												<p>
													<i class="far fa-eye"></i>
												</p>
												<p>2.535</p>
											</div>
											<p class="article__text">Chơi hơn người, chủ nhà Real
												Madrid thắng dễ Chelsea 2-0...</p>
										</div>
									</a>
								</div>
								<div class="col-xl-4 col-lg-4 col-md-6 col-sm-6">
									<a class="article__box"
										href="https://vnexpress.net/milan-chiem-uu-the-truoc-napoli-o-champions-league-4592772.html">
										<div class="article__photo">
											<img src="${base}/user/img/tintuc8.jpg"
												alt="Milan chiếm ưu thế trước Napoli ở Champions League"
												title="Milan chiếm ưu thế trước Napoli ở Champions League" />
										</div>
										<div class="article__info">
											<h3 class="aricle__heading-tertiary">Milan chiếm ưu thế
												trước Napoli ở Champions League</h3>
											<div class="article__time">
												<p>
													<i class="far fa-user"></i>
												</p>
												<p>|</p>
												<p>
													<i class="far fa-clock"></i>
												</p>
												<p>13/4/2023</p>
												<p>|</p>
												<p>
													<i class="far fa-eye"></i>
												</p>
												<p>2.544</p>
											</div>
											<p class="article__text">Bàn của Ismael Bennacer giúp
												Milan thắng Napoli 1-0 trong thế hơn người ở tứ kết lượt...</p>
										</div>
									</a>
								</div>
								<div class="col-xl-4 col-lg-4 col-md-6 col-sm-6">
									<a class="article__box"
										href="https://vnexpress.net/real-madrid-vo-dich-champions-league-bao-nhieu-lan-4592708.html">
										<div class="article__photo">
											<img src="${base}/user/img/tintuc9.jpg"
												alt="Real Madrid vô địch Champions League bao nhiêu lần?"
												title="Real Madrid vô địch Champions League bao nhiêu lần?" />
										</div>
										<div class="article__info">
											<h3 class="aricle__heading-tertiary">Real Madrid vô địch
												Champions League bao nhiêu lần?</h3>
											<div class="article__time">
												<p>
													<i class="far fa-user"></i>
												</p>
												<p>|</p>
												<p>
													<i class="far fa-clock"></i>
												</p>
												<p>12/4/2023</p>
												<p>|</p>
												<p>
													<i class="far fa-eye"></i>
												</p>
												<p>2.535</p>
											</div>
											<p class="article__text">Số danh hiệu Champions League và
												Cup C1 của Real Madrid bằng thành tích của tất cả CLB Anh
												gộp lại...</p>
										</div>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
	<jsp:include page="/WEB-INF/views/user/layouts/footer.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/views/user/layouts/js.jsp"></jsp:include>
</body>
</html>