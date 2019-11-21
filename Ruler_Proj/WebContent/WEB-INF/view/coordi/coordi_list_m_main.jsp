<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML>
<html>

<head>
	<title>쇼핑 도우미 : 아임룰러</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
	<link rel="stylesheet" href="../css/seop.css" />
	<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
	<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
	<script src="https://kit.fontawesome.com/1af26a8adc.js" crossorigin="anonymous"></script>
</head>

<body>
	
	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Main -->
		<div id="main">
			<div class="inner">
				<!-- Header -->
				<header id="header">
					<h1>체형별 코디 게시판</h1>
					<ul class="icons">
						<li><a href="sign/login.html">로그인</a></li>					
						<li><a href="sign/sign-up.html">회원가입</a></li>
					</ul>
				</header>

				
				<!-- Banner  남자 -->
				<section id="banner">
					<div class="content">
						<div class="visual-wrapper">
							<div class="visual-top">
								<div class="visual-top-left">
									<a href="coordi_list_w_main.html" class="button small">여성</a>
									<a href="#" class="button special small">남성</a>
								</div>
								<div class="visual-top-right">
									<a href="coordi_newpost.html" class="button special small">글쓰기</a>
								</div>
							</div>

							<div class="visual-bottom-man">
								<div>
									<a href="#" class="button">작은 역삼각</a>
								</div>
								<div>
									<a href="coordi_list_men2.html" class="button">큰 사각</a>
								</div>
								<div>
									<a href="coordi_list_men3.html" class="button">사각</a>
								</div>								
							</div>
						</div>

						<div class="coordi-list-table-wrapper">							
							<table class="coordi-list-table">
								
								<tr class="coordi-newpost-tr-wrapper">
									<td>
										<li>
											<a href="coordi_post.html"><img src="../images/main_ico1.png" alt="coordi-img">
												<p>작은 역삼각</p>
											</a>
										</li>
										<li>
																					
										</li>
									</td>
									<td>
										<li>
											<a href="coordi_post.html"><img src="../images/main_ico1.png" alt="coordi-img">
												<p>작은 역삼각</p>
											</a>
										</li>
										<li></li>
									</td>
									<td>
										<li>
											<a href="coordi_post.html"><img src="../images/main_ico1.png" alt="coordi-img">
												<p>작은 역삼각</p>
											</a>
										</li>
										<li></li>
									</td>
									<td>
										<li>
											<a href="coordi_post.html"><img src="../images/main_ico1.png" alt="coordi-img">
												<p>작은 역삼각</p>
											</a>
										</li>
										<li></li>
									</td>
									<td>
										<li>
											<a href="coordi_post.html"><img src="../images/main_ico1.png" alt="coordi-img">
												<p>작은 역삼각</p>
											</a>
										</li>
										<li></li>
									</td>
								</tr>

								<tr class="coordi-newpost-tr-wrapper">
									<td>
										<li>
											<a href="coordi_post.html"><img src="../images/main_ico1.png" alt="coordi-img">
												<p>작은 역삼각</p>
											</a>
										</li>
										<li></li>
									</td>
									<td>
										<li>
											<a href="coordi_post.html"><img src="../images/main_ico1.png" alt="coordi-img">
												<p>작은 역삼각</p>
											</a>
										</li>
										<li></li>
									</td>
									<td>
										<li>
											<a href="coordi_post.html"><img src="../images/main_ico1.png" alt="coordi-img">
												<p>작은 역삼각</p>
											</a>
										</li>
										<li></li>
									</td>
									<td>
										<li>
											<a href="coordi_post.html"><img src="../images/main_ico1.png" alt="coordi-img">
												<p>작은 역삼각</p>
											</a>
										</li>
										<li></li>
									</td>
									<td>
										<li>
											<a href="coordi_post.html"><img src="../images/main_ico1.png" alt="coordi-img">
												<p>작은 역삼각</p>
											</a>
										</li>
										<li></li>
									</td>
								</tr>
							</table>
						</div>
						
						<ul class="coordi-list-page ">
							<li><a href="#" class="button">Prev</a></li>
							<li><a href="#" class="page active">1</a></li>
							<li><a href="#" class="page">2</a></li>
							<li><a href="#" class="page">3</a></li>
							<li><a href="#" class="page">4</a></li>
							<li><a href="#" class="page">5</a></li>
							<li><a href="#" class="button">Next</a></li>
						</ul>
					</div>
					
				</section>
			</div>
		</div>

		<!-- Sidebar -->
		<div id="sidebar">
				<div class="inner">
					<!-- Menu -->
					<nav id="menu">					
						<h1 class="logo">
							<a href="index.html"><img src="../images/logo.png" alt="아임룰러" /></a>
						</h1>
						<h2 class="hidden">메인 메뉴</h2>
						<ul>
							<li><a href="index.html">사이즈 비교</a></li>
							<li><a href="coordi/coordi_list_main.html">체형 별 코디</a></li>
							<li><a href="#.html">교환 게시판</a></li>
							<li><a href="#.html">쇼핑몰 랭킹</a></li>
						</ul>
	
						<!-- <h2 class="hidden">마이페이지 메뉴</h2>
							<ul>
								<li><a href="mypage/member-edit.html">회원정보 수정</a></li>
								<li><a href="mypage/reg.html">회원 탈퇴</a></li>
								<li><a href="mypage/#.html">내가 작성한 글</a></li>
								<li><a href="mypage/#.html">찜 목록</a></li>
							</ul> -->
					</nav>
	
					<!-- Section -->
					<section>
						<header class="major">
							<!-- <h2>Get in touch</h2> -->
						</header>
						<p>I’M RULER 는 상품에 직접 관여하지 않으며 상품 주문, 배송 및 환불의 의무와 책임은 각 판매업체에
							있습니다.</p>
						<ul class="contact">
							<!-- <li class="fa-home"><a href="#">I'M RULER</a></li> -->
							<li class="fa-phone">(02) 123-4567</li>
							<li class="fa-envelope-o">admin@imruler.com</li>
						</ul>
					</section>
	
					<!-- Footer -->
					<footer id="footer">
						<p class="copyright">&copy; imruler.com 2019-2021 All Right
							Reserved. Contact admin@imruler.com for more information.
					</footer>
	
				</div>
			</div>

	</div>

	<!-- Scripts -->
	<script src="../assets/js/jquery.min.js"></script>
	<script src="../assets/js/skel.min.js"></script>
	<script src="../assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="../assets/js/main.js"></script>

</body>

</html>