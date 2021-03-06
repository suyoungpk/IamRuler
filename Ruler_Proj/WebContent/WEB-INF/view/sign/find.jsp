<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>아이디/비밀번호 찾기</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<!--[if lte IE 8]>
      <script src="assets/js/ie/html5shiv.js"></script>
    <![endif]-->
<link rel="stylesheet" href="../css/sign.css" />
<!--[if lte IE 9]>
      <link rel="stylesheet" href="assets/css/ie9.css" />
    <![endif]-->
<!--[if lte IE 8]>
      <link rel="stylesheet" href="assets/css/ie8.css" />
    <![endif]-->
<!-- <link rel="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" /> -->
</head>
<body>
	<div id="wrapper">
		<div id="main">
			<div class="inner">
				<header id="header">
					<h1 class="아이디비밀번호찾기">아이디/비밀번호 찾기</h1>
					<h1>&nbsp;</h1>
					<jsp:include page="../inc/nav.jsp" />
				</header>
				<div id="찾기테이블">
					<span class="아이디찾기">
						<p>아이디 찾기</p> <c:if test="${param.r == 1}">
							<span class="finder finder-id">${id}<br> <br></span>
						</c:if>
						<form method="POST">
							<section class="아이디찾기">
								<label>이메일</label> <input type="text" name="email" id="이메일" />
							</section>

							<section>
								<span id="확인버튼"> <br> <input type="submit" name="찾기"
									class="button special" value="아이디찾기">
								</span>
							</section>
						</form>
					</span>
					<!-- 구분선 -->
					<span class="비밀번호찾기">
						<p>비밀번호 찾기</p> <c:if test="${param.r == 2}">
							<span class="finder finder-pwd">${pwd}<br> <br></span>
						</c:if>
						<form method="POST">
							<section class="비밀번호찾기">
								<label>아이디</label> <input type="text" name="userId" id="아이디" /><br />
								<label>핸드폰</label> <input type="text" name="phone" id="핸드폰" />
							</section>

							<section>
								<span id="확인버튼"> <br> <input type="submit" name="찾기"
									class="button special" value="비밀번호찾기">
								</span>
							</section>
						</form>
					</span>
				</div>
			</div>
		</div>


		<jsp:include page="../inc/aside.jsp" />

		<div>
			<input class="modal-state 팝업창" id="아이디-pop" type="checkbox" />
			<div class="팝업">
				<div class="contents">
					<h2 class="title">아이디 찾기</h2>
					<p class="아이디출력">아이디가 뜰곳</p>
					<br />
					<p id="회원가입성공버튼">
						<a href="find" class="button special">확인</a>
					</p>
				</div>
			</div>
			<input class="modal-state 팝업창" id="비밀번호-pop" type="checkbox" />
			<div class="팝업">
				<div class="contents">
					<h2 class="title">비밀번호 찾기</h2>
					<p class="비밀번호출력">비밀번호가 뜰곳</p>
					<br />
					<p id="회원가입성공버튼">
						<a href="find" class="button special">확인</a>
					</p>
				</div>
			</div>
		</div>
	</div>
	<!-- Scripts -->
	<script src="../assets/js/jquery.min.js"></script>
	<script src="../assets/js/skel.min.js"></script>
	<script src="../assets/js/util.js"></script>
	<script src="../../../js/sign/find.js"></script>
	<!--[if lte IE 8]>
      <script src="assets/js/ie/respond.min.js"></script>
    <![endif]-->
	<script src="../assets/js/main.js"></script>
</body>
</html>
