<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="page-content">
					<!-- ***** Featured Games Start ***** -->
				<div class="container" style="padding: 20px;">	
					<div class="row" style="display: flex; align-items: flex-start;">
						<div class="col-lg-8" style="flex: 1; margin-right: 20px;">
							<div class="featured-games header-text" style="display: flex;">
								<div class="cover" style="position: relative; overflow: hidden;">
									<img src="${vo.cover }" alt="${vo.btitle }" style="width: 300px; height: 400px; border-radius: 23px;">
								</div>
								<div class="book-info" style=" margin-left: 50px">
									<span style="font-size: 28px; font-weight: bold;">${vo.btitle }</span>
									<p>
										${vo.writer }${vo.writer != null ? ' 저 | ' : ''}${vo.publisher }&nbsp;|&nbsp;${vo.dbday }
									</p>
									<span class="price" style="font-size: 20px; color: #000000; margin: 10px 0;">${vo.price }원</span>
									<span class="price" style="font-size: 20px; color: #E53935; margin: 10px 0;">${vo.sale_price }원</span>
									<div class="buttons" style="margin-top: 20px;">
										<a href="#" style="text-decoration: none; padding: 10px 20px; margin-right: 10px; color: #fff; background-color: #4CAF50; border-radius: 5px;">Add to Cart</a>
                        <a href="#" style="text-decoration: none; padding: 10px 20px; color: #fff; background-color: #E53935; border-radius: 5px;">Buy Now</a>
									</div>
								</div>
							</div>
						</div>
					</div>	
						<div class="col-lg-4">
							<div class="top-streamers">
								<div class="heading-section">
									<h4>
										<em>Top</em> Streamers
									</h4>
								</div>
								<ul>
									<li><span>01</span> <img src="assets/images/avatar-01.jpg"
										alt=""
										style="max-width: 46px; border-radius: 50%; margin-right: 15px;">
										<h6>
											<i class="fa fa-check"></i> LahutaM
										</h6>
										<div class="main-button">
											<a href="#">Follow</a>
										</div></li>
									<li><span>02</span> <img src="assets/images/avatar-02.jpg"
										alt=""
										style="max-width: 46px; border-radius: 50%; margin-right: 15px;">
										<h6>
											<i class="fa fa-check"></i> Kengan
										</h6>
										<div class="main-button">
											<a href="#">Follow</a>
										</div></li>
									<li><span>03</span> <img src="assets/images/avatar-03.jpg"
										alt=""
										style="max-width: 46px; border-radius: 50%; margin-right: 15px;">
										<h6>
											<i class="fa fa-check"></i> Areluwa
										</h6>
										<div class="main-button">
											<a href="#">Follow</a>
										</div></li>
									<li><span>04</span> <img src="assets/images/avatar-04.jpg"
										alt=""
										style="max-width: 46px; border-radius: 50%; margin-right: 15px;">
										<h6>
											<i class="fa fa-check"></i> Omeg
										</h6>
										<div class="main-button">
											<a href="#">Follow</a>
										</div></li>
									<li><span>05</span> <img src="assets/images/avatar-01.jpg"
										alt=""
										style="max-width: 46px; border-radius: 50%; margin-right: 15px;">
										<h6>
											<i class="fa fa-check"></i> GangTeam
										</h6>
										<div class="main-button">
											<a href="#">Follow</a>
										</div></li>
								</ul>
							</div>
						</div>
					</div>
					<!-- ***** Featured Games End ***** -->

					<!-- ***** Live Stream Start ***** -->
					<div class="live-stream">
						<div class="col-lg-12">
							<div class="heading-section">
								<h4>
									<em>Most Popular</em> Live Stream
								</h4>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-3 col-sm-6">
								<div class="item">
									<div class="thumb">
										<img src="assets/images/stream-05.jpg" alt="">
										<div class="hover-effect">
											<div class="content">
												<div class="live">
													<a href="#">Live</a>
												</div>
												<ul>
													<li><a href="#"><i class="fa fa-eye"></i> 1.2K</a></li>
													<li><a href="#"><i class="fa fa-gamepad"></i>
															CS-GO</a></li>
												</ul>
											</div>
										</div>
									</div>
									<div class="down-content">
										<div class="avatar">
											<img src="assets/images/avatar-01.jpg" alt=""
												style="max-width: 46px; border-radius: 50%; float: left;">
										</div>
										<span><i class="fa fa-check"></i> Kengan Omeg</span>
										<h4>Just Talking With Fans</h4>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-sm-6">
								<div class="item">
									<div class="thumb">
										<img src="assets/images/stream-06.jpg" alt="">
										<div class="hover-effect">
											<div class="content">
												<div class="live">
													<a href="#">Live</a>
												</div>
												<ul>
													<li><a href="#"><i class="fa fa-eye"></i> 1.2K</a></li>
													<li><a href="#"><i class="fa fa-gamepad"></i>
															CS-GO</a></li>
												</ul>
											</div>
										</div>
									</div>
									<div class="down-content">
										<div class="avatar">
											<img src="assets/images/avatar-02.jpg" alt=""
												style="max-width: 46px; border-radius: 50%; float: left;">
										</div>
										<span><i class="fa fa-check"></i> LahutaMalc</span>
										<h4>CS-GO 36 Hours Live Stream</h4>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-sm-6">
								<div class="item">
									<div class="thumb">
										<img src="assets/images/stream-07.jpg" alt="">
										<div class="hover-effect">
											<div class="content">
												<div class="live">
													<a href="#">Live</a>
												</div>
												<ul>
													<li><a href="#"><i class="fa fa-eye"></i> 1.2K</a></li>
													<li><a href="#"><i class="fa fa-gamepad"></i>
															CS-GO</a></li>
												</ul>
											</div>
										</div>
									</div>
									<div class="down-content">
										<div class="avatar">
											<img src="assets/images/avatar-03.jpg" alt=""
												style="max-width: 46px; border-radius: 50%; float: left;">
										</div>
										<span><i class="fa fa-check"></i> Areluwa</span>
										<h4>Maybe Nathej Allnight Chillin'</h4>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-sm-6">
								<div class="item">
									<div class="thumb">
										<img src="assets/images/stream-08.jpg" alt="">
										<div class="hover-effect">
											<div class="content">
												<div class="live">
													<a href="#">Live</a>
												</div>
												<ul>
													<li><a href="#"><i class="fa fa-eye"></i> 1.2K</a></li>
													<li><a href="#"><i class="fa fa-gamepad"></i>
															CS-GO</a></li>
												</ul>
											</div>
										</div>
									</div>
									<div class="down-content">
										<div class="avatar">
											<img src="assets/images/avatar-04.jpg" alt=""
												style="max-width: 46px; border-radius: 50%; float: left;">
										</div>
										<span><i class="fa fa-check"></i> NewGangTeam</span>
										<h4>Live Streaming Till Morning</h4>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-sm-6">
								<div class="item">
									<div class="thumb">
										<img src="assets/images/stream-07.jpg" alt="">
										<div class="hover-effect">
											<div class="content">
												<div class="live">
													<a href="#">Live</a>
												</div>
												<ul>
													<li><a href="#"><i class="fa fa-eye"></i> 1.2K</a></li>
													<li><a href="#"><i class="fa fa-gamepad"></i>
															CS-GO</a></li>
												</ul>
											</div>
										</div>
									</div>
									<div class="down-content">
										<div class="avatar">
											<img src="assets/images/avatar-01.jpg" alt=""
												style="max-width: 46px; border-radius: 50%; float: left;">
										</div>
										<span><i class="fa fa-check"></i> Kengan Omeg</span>
										<h4>Just Talking With Fans</h4>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-sm-6">
								<div class="item">
									<div class="thumb">
										<img src="assets/images/stream-08.jpg" alt="">
										<div class="hover-effect">
											<div class="content">
												<div class="live">
													<a href="#">Live</a>
												</div>
												<ul>
													<li><a href="#"><i class="fa fa-eye"></i> 1.2K</a></li>
													<li><a href="#"><i class="fa fa-gamepad"></i>
															CS-GO</a></li>
												</ul>
											</div>
										</div>
									</div>
									<div class="down-content">
										<div class="avatar">
											<img src="assets/images/avatar-02.jpg" alt=""
												style="max-width: 46px; border-radius: 50%; float: left;">
										</div>
										<span><i class="fa fa-check"></i> LahutaMalc</span>
										<h4>CS-GO 36 Hours Live Stream</h4>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-sm-6">
								<div class="item">
									<div class="thumb">
										<img src="assets/images/stream-05.jpg" alt="">
										<div class="hover-effect">
											<div class="content">
												<div class="live">
													<a href="#">Live</a>
												</div>
												<ul>
													<li><a href="#"><i class="fa fa-eye"></i> 1.2K</a></li>
													<li><a href="#"><i class="fa fa-gamepad"></i>
															CS-GO</a></li>
												</ul>
											</div>
										</div>
									</div>
									<div class="down-content">
										<div class="avatar">
											<img src="assets/images/avatar-03.jpg" alt=""
												style="max-width: 46px; border-radius: 50%; float: left;">
										</div>
										<span><i class="fa fa-check"></i> Areluwa</span>
										<h4>Maybe Nathej Allnight Chillin'</h4>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-sm-6">
								<div class="item">
									<div class="thumb">
										<img src="assets/images/stream-06.jpg" alt="">
										<div class="hover-effect">
											<div class="content">
												<div class="live">
													<a href="#">Live</a>
												</div>
												<ul>
													<li><a href="#"><i class="fa fa-eye"></i> 1.2K</a></li>
													<li><a href="#"><i class="fa fa-gamepad"></i>
															CS-GO</a></li>
												</ul>
											</div>
										</div>
									</div>
									<div class="down-content">
										<div class="avatar">
											<img src="assets/images/avatar-04.jpg" alt=""
												style="max-width: 46px; border-radius: 50%; float: left;">
										</div>
										<span><i class="fa fa-check"></i> NewGangTeam</span>
										<h4>Live Streaming Till Morning</h4>
									</div>
								</div>
							</div>
							<div class="col-lg-12">
								<div class="main-button">
									<a href="streams.html">Load More Streams</a>
								</div>
							</div>
						</div>
					</div>
					<!-- ***** Live Stream End ***** -->
				</div>
			</div>
		</div>
	</div>


</body>
</html>