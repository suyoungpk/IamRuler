<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>
<title>쇼핑 도우미 : 아임룰러</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<!--[if lte IE 8
      ]><script src="assets/js/ie/html5shiv.js"></script
    ><![endif]-->
<link rel="stylesheet" href="../css/seop.css" />
<!--[if lte IE 9
      ]><link rel="stylesheet" href="assets/css/ie9.css"
    /><![endif]-->
<!--[if lte IE 8
      ]><link rel="stylesheet" href="assets/css/ie8.css"
    /><![endif]-->
<script src="https://kit.fontawesome.com/1af26a8adc.js"
	crossorigin="anonymous"></script>
<script> 
                function openPopUp() {
                document.getElementsByClassName("newpost-popup")[0].style.display = "block";
                document.getElementsByClassName("newpost-mask")[0].style.display = "block";
                
            }
    
            function closePopUp() {
                document.getElementsByClassName("newpost-popup")[0].style.display = "none";
                document.getElementsByClassName("newpost-mask")[0].style.display = "none";
              
            }
            
    </script>
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

				<!-- Banner  -->
				<section id="banner">
					<div class="content">
						<div class="visual-wrapper">
							<div class="visual-top-coordi-post">
								<div class="visual-top-right">
									<a href="#" class="button small" style="box-shadow: none; font-size: 100%; padding: 0 1em;"	onclick="openPopUp()">찜하기</a> 
									<a href="post?cb_id=${param.cb_id }&opt=1" class="button small" style="box-shadow: none; font-size: 100%; padding: 0 1em;">수정</a>
									<a href="post?cb_id=${param.cb_id }&opt=2" class="button small" style="box-shadow: none; font-size: 100%; padding: 0 1em;">삭제</a>
								</div>
							</div>

							<div class="visual-bottom"></div>
						</div>

						<div class="coordi-post-table-wrapper">
							<table class="coordi-post-table" style="color: black">
								<tr>
									<td colspan="4">게시글</td>
								</tr>

								<tr>
									<td>제목</td>
									<td colspan="4"><input readonly type="text"
										name="coordi-post-table-title" id="demo-name" value="${pdetail.cct_title }"
										placeholder="제목" /></td>
								</tr>

								<tr>
									<td>작성자</td>
									<td><input readonly type="text"
										name="coordi-post-table-title" id="demo-name" value="${pdetail.m_userName }"
										placeholder="작성자" /></td>
									<td>게시 날짜</td>
									<td><input readonly type="text"
										name="coordi-post-table-title" id="demo-name" value="${pdetail.cb_regdate }"
										placeholder="게시 날짜" /></td>
								</tr>

								<tr>
									<td>체형</td>
									<td colspan="4"><input readonly type="text"
										name="coordi-post-table-title" id="demo-name" value="${pdetail.co_bodyshape }"
										placeholder="체형" /></td>
								</tr>

								<tr>
									<td>내용</td>
									<td colspan="4">
										<div class="coordi-post-content">
											<textarea readonly name="demo-message" id="demo-message"
												placeholder="내용" rows="6" style="overflow: scroll;">${pdetail.cct_content }</textarea>
											<img src="../images/main_ic1.png">
										</div>
									</td>

								</tr>
							</table>
						</div>

						<div class="coordi-post-icons-bottom">
							<c:if test="${pdetail.co_gender eq '남성' }">
								<a href="list_m?p=1&g=${pdetail.co_gender }&b=${pdetail.co_bodyshape}" class="button">목록</a> 
							</c:if>
							<c:if test="${pdetail.co_gender eq '여성' }">
								<a href="list_w?p=1&g=${pdetail.co_gender }&b=${pdetail.co_bodyshape}" class="button">목록</a> 
							</c:if>
							<a href="comment?cb_id=${pdetail.cb_id }" class="button">댓글</a>
						</div>
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
						<c:if test="${pdetail.co_gender eq '남성' }">
						<li><a href="/coordi/list_m">체형 별 코디</a></li>
						</c:if>
						<c:if test="${pdetail.co_gender eq '여성' || empty pdetail.co_gender }">
						<li><a href="/coordi/list_m">체형 별 코디</a></li>
						</c:if>
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

		<div class="newpost-popup" style="display: none">
			<div class="contents popup-contents">
				<p class="title">이 게시글을 찜 하였습니다.</p>
				<p></p>
				<div class="btn">
					<a href="#" class="button close" onclick="closePopUp()">닫기</a>
				</div>
			</div>
		</div>
		<div class="newpost-mask" style="display: none"></div>



	</div>

	<!-- Scripts -->
	<script src="../assets/js/jquery.min.js"></script>
	<script src="../assets/js/skel.min.js"></script>
	<script src="../assets/js/util.js"></script>
	<!--[if lte IE 8
      ]><script src="assets/js/ie/respond.min.js"></script
    ><![endif]-->
	<script src="../assets/js/main.js"></script>
</body>

</html>
