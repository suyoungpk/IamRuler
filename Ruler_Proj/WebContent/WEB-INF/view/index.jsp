<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<title>쇼핑 도우미 : 아임룰러</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
<link rel="stylesheet" href="css/mainpage.css" />
<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->

<script src="https://kit.fontawesome.com/1af26a8adc.js"
	crossorigin="anonymous"></script>
<script src='index.js'></script>

</head>
<body>
	<!-- Wrapper -->
	<div id="wrapper">
		<!-- Main -->
		<div id="main">
			<div class="inner">
				<!-- Header -->
				<header id="header">
					<jsp:include page="inc/nav.jsp"></jsp:include>

				</header>
				<!-- Banner -->
				<%-- ${result} --%>
				<section id="banner">
					<div class="content">
						<header>
							<h1>
								더 이상 반품은 노!<br /> 사이즈를 알기 쉽게
							</h1>
							<p>
								아임룰러는 키 몸무게와 세분화된 체형정보 입력을 통해 신체<br /> 데이터를 옷의 실측사이즈와 비교하여 사이즈를
								추천드립니다.
							</p>
						</header>

						<ul class="actions">
							<li><a href="#infor" class="button big">사이즈 비교 →</a></li>
						</ul>
					</div>

					<div class="main-img">
						<img src="images/main_visualPc.gif" alt="" id="mainPc" /> <img
							src="images/main_visualMo.gif" alt="" id="mainMo" /> <img
							src="images/main_visualM.png" alt="" id="mainCom" />

					</div>

				</section>
				<form action="/index" method="post">
					<input type="hidden" name="type"> 
				<!-- Section -->
				<section id="infor">
					<header class="major">
						<h2>내 정보 입력</h2>
					</header>
					<div class="posts">

						<article>
							<!-- 체형 이미지 -->
							<div class="image object-stage">
								<img src="images/main_simulator1.png">
							</div>
						</article>

						<article>
							<!-- 내 정보 입력 -->
						<!-- 	<form method="post" action="/index" name="bodyfrm"> -->
								<table class="alt">
									<tr class="inforform">
										<th>성별</th>
										<td id="inforline">
											<div class="maingender">
												<input type="radio" id="demo-priority-low" name="gender"
													value="woman" checked> <label
													for="demo-priority-low">여성</label>
											</div>

											<div class="maingender">
												<input type="radio" id="demo-priority-normal" name="gender"
													value="man"> <label for="demo-priority-normal">남성</label>
											</div>

										</td>
									</tr>
									<tr class="inforform">
										<th>연령대</th>
										<td id="inforline">
											<div class="select-wrapper" id="agecheck">
												<select name="area">
													<option value="">선택</option>
													<option value="20">20대</option>
													<option value="30">30대</option>
													<option value="40">40대+</option>
												</select>
											</div>
										</td>
									</tr>

									<tr class="inforform">
										<th>체형</th>
										<td id="inforline">
											<div class="select-wrapper">
												<select name="bodyshape" id="bodyshape">
													<option value="nomal">선택</option>
													<option value="smallInverseTriangle">작은 역삼각</option>
													<option value="triangle">삼각</option>
													<option value="inverseTriangle">역삼각</option>
													<option value="square">사각</option>
												</select>
											</div>
										</td>
									</tr>

									<tr class="inforform">
										<th>키</th>
										<td id="inforline"><input type="text" name="x" value=""
											placeholder="키 입력" class="maintextbox" /><span>cm</span></td>
									</tr>

									<tr class="inforform">
										<th>몸무게</th>
										<td id="inforline"><input type="text" name="y" value=""
											placeholder="몸무게 입력" class="maintextbox" /><span>kg</span></td>
									</tr>
								</table>
								<ul class="actions" id="main-nextbutton">
									<li><a href="#clothcheck" class="button big">다음 입력 →</a></li>
								</ul>

							<!-- </form> -->
						</article>

					</div>
				</section>

				<!-- Section -->
				<section id="clothcheck">
					<header class="major">
						<h2>의류 선택</h2>
					</header>
					<!-- 여성 선택 -->
					<div class="features" id="genderW">
						<article id="checkTop" class="clothcheck-box">
							<div class="iconBox">
								<a href="#detailsize" class="spin" onclick="typeChange('T')"> <span class="icon"></span>
									<img src="images/main_ic1.png" alt="#" />
								</a>
							</div>
							<div class="description">
								<h3>
									<a href="#detailsize" onclick="typeChange('T')">상의</a>
								</h3>
							</div>
						</article>

						<article id="checkOuter" class="clothcheck-box">
							<div class="iconBox">
								<a href="#detailsize" class="spin" onclick="typeChange('O')"> <span class="icon"></span>
									<img src="images/main_ic3.png" alt="#" />
								</a>
							</div>
							<div class="description">
								<h3>
									<a href="#detailsize" onclick="typeChange('O')">아우터</a>
								</h3>
							</div>
						</article>

						<article id="checkPants" class="clothcheck-box">
							<div class="iconBox">
								<a href="#detailsize" class="spin" onclick="typeChange('P')"> <span class="icon"></span>
									<img src="images/main_ic2.png" alt="#" />
								</a>
							</div>
							<div class="description">
								<h3>
									<a href="#detailsize" onclick="typeChange('P')">바지</a>
								</h3>
							</div>
						</article>

						<article id="checkSkirt" class="clothcheck-box">
							<div class="iconBox">
								<a href="#detailsize" class="spin" onclick="typeChange('Sk')"> <span class="icon"></span>
									<img src="images/main_ic4.png" alt="#" />
								</a>
							</div>
							<div class="description">
								<h3>
									<a href="#detailsize" onclick="typeChange('Sk')">치마</a>
								</h3>
							</div>
						</article>

						<article id="checkOnepiece" class="clothcheck-box">
							<div class="iconBox">
								<a href="#detailsize" class="spin" onclick="typeChange('Op')"> <span class="icon"></span>
									<img src="images/main_ic5.png" alt="#" />
								</a>
							</div>
							<div class="description">
								<h3>
									<a href="#detailsize" onclick="typeChange('Op')">원피스</a>
								</h3>
							</div>
						</article>
					</div>

					<!-- 남성 선택 -->
					<div class="features" id="genderM">
						<article id="checkTop" class="clothcheck-box">
							<div class="iconBox">
								<a href="#detailsize" class="spin"> <span class="icon"></span>
									<img src="images/main_ic1.png" alt="#" />
								</a>
							</div>
							<div class="description">
								<h3>
									<a href="#detailsize">상의</a>
								</h3>
							</div>
						</article>

						<article id="checkOuter" class="clothcheck-box">
							<div class="iconBox">
								<a href="#detailsize" class="spin"> <span class="icon"></span>
									<img src="images/main_ic3.png" alt="#" />
								</a>
							</div>
							<div class="description">
								<h3>
									<a href="#detailsize">아우터</a>
								</h3>
							</div>
						</article>

						<article id="checkPants" class="clothcheck-box">
							<div class="iconBox">
								<a href="#detailsize" class="spin"> <span class="icon"></span>
									<img src="images/main_ic2.png" alt="#" />
								</a>
							</div>
							<div class="description">
								<h3>
									<a href="#detailsize">바지</a>
								</h3>
							</div>
						</article>
					</div>
				</section>

				<section id="detailsize">
					<header class="major">
						<h2>상세 사이즈 입력</h2>
					</header>

					<!-- 상의 -->
					<div class="posts" id="top">
						<article>
							<span class="image object"> <img
								src="images/main_size1.png" />
							</span>
						</article>
						<article>
						<!-- 	<form method="post" action="/index"> -->
								<!-- <input type="hidden" name="type" value="T"> -->
								<table class="alt">
									<tr class="inforform">
										<th>어깨 너비</th>
										<td id="inforline"><input type="text"
											name="tshoulderWidth" value="" placeholder="입력"
											class="maintextbox" /><span>cm</span></td>
									</tr>

									<tr class="inforform">
										<th>가슴 단면</th>
										<td id="inforline"><input type="text" name="tchestBreadth"
											value="" placeholder="입력" class="maintextbox" /><span>cm</span></td>
									</tr>

									<tr class="inforform">
										<th>소매 길이</th>
										<td id="inforline"><input type="text" name="tsleeveLength"
											value="" placeholder="입력" class="maintextbox" /><span>cm</span></td>
									</tr>

									<tr class="inforform">
										<th>총 장</th>
										<td id="inforline"><input type="text"
											name="ttopTotalLength" value="" placeholder="입력"
											class="maintextbox" /><span>cm</span></td>
									</tr>
								</table>
								<!-- <div>
									<ul class="actions" id="main-compbutton">
										<li><input type="submit" value="비교하기 →" class="button big" id="compsize" onclick="sendFrm()"></li>
									</ul>
								</div> -->
							<!-- </form> -->
						</article>
					</div>

					<!-- 바지 -->
					<div class="posts" id="pants">
						<article>
							<span class="image object"> <img
								src="images/main_size2.png" />
							</span>
						</article>
						<article>
							<!-- <form method="post" action="/index"> -->
								<!-- <input type="hidden" name="type" value="P"> -->
								<table class="alt">
									<tr class="inforform">
										<th>허리 단면</th>
										<td id="inforline"><input type="text" name="pwaistWidth"
											value="" placeholder="입력" class="maintextbox" /><span>cm</span></td>
									</tr>

									<tr class="inforform">
										<th>허벅지 단면</th>
										<td id="inforline"><input type="text" name="thighWidth"
											value="" placeholder="입력" class="maintextbox" /><span>cm</span></td>
									</tr>

									<tr class="inforform">
										<th>밑위 길이</th>
										<td id="inforline"><input type="text" name="crotchWidth"
											value="" placeholder="입력" class="maintextbox" /><span>cm</span></td>
									</tr>

									<tr class="inforform">
										<th>밑단 단면</th>
										<td id="inforline"><input type="text" name="hemWidth"
											value="" placeholder="입력" class="maintextbox" /><span>cm</span></td>
									</tr>

									<tr class="inforform">
										<th>총 장</th>
										<td id="inforline"><input type="text"
											name="pantsTotalLength" value="" placeholder="입력"
											class="maintextbox" /><span>cm</span></td>
									</tr>
								</table>
							<!-- 	<div>
									<ul class="actions" id="main-compbutton">
										<li><input type="submit" value="비교하기 →" class="button big" id="compsize" onclick="sendFrm()"></li>
									</ul>
								</div> -->
							<!-- </form> -->
						</article>
					</div>

					<!-- 아우터 -->
					<div class="posts" id="outer">
						<article>
							<span class="image object"> <img
								src="images/main_size4.png" />
							</span>
						</article>
						<article>
							<!-- <form method="post" action="/index"> -->
								<!-- <input type="hidden" name="type" value="O"> -->
								<table class="alt">
									<tr class="inforform">
										<th>어깨 너비</th>
										<td id="inforline"><input type="text"
											name="oshoulderWidth" value="" placeholder="입력"
											class="maintextbox" /><span>cm</span></td>
									</tr>

									<tr class="inforform">
										<th>가슴 단면</th>
										<td id="inforline"><input type="text" name="ochestBreadth"
											value="" placeholder="입력" class="maintextbox" /><span>cm</span></td>
									</tr>

									<tr class="inforform">
										<th>소매 길이</th>
										<td id="inforline"><input type="text" name="osleeveLength"
											value="" placeholder="입력" class="maintextbox" /><span>cm</span></td>
									</tr>

									<tr class="inforform">
										<th>총 장</th>
										<td id="inforline"><input type="text"
											name="otopTotalLength" value="" placeholder="입력"
											class="maintextbox" /><span>cm</span></td>
									</tr>
								</table>
						<!-- 		<div>
									<ul class="actions" id="main-compbutton">
										<li><input type="submit" value="비교하기 →" class="button big" id="compsize" onclick="sendFrm()"></li>
									</ul>
								</div> -->
							<!-- </form> -->
						</article>
					</div>

					<!-- 치마 -->
					<div class="posts" id="skirt">
						<article>
							<span class="image object"> <img
								src="images/main_size3.png" />
							</span>
						</article>
						<article>
							<!-- <form method="post" action="/index"> -->
								<!-- <input type="hidden" name="type" value="Sk"> -->
								<table class="alt">
									<tr class="inforform">
										<th>허리 단면</th>
										<td id="inforline"><input type="text" name="skwaistWidth"
											value="" placeholder="입력" class="maintextbox" /><span>cm</span></td>
									</tr>

									<tr class="inforform">
										<th>밑단 단면</th>
										<td id="inforline"><input type="text"
											name="skirtHemWidth" value="" placeholder="입력"
											class="maintextbox" /><span>cm</span></td>
									</tr>

									<tr class="inforform">
										<th>총 장</th>
										<td id="inforline"><input type="text"
											name="skirtTotalLength" value="" placeholder="입력"
											class="maintextbox" /><span>cm</span></td>
									</tr>
								</table>
		<!-- 						<div>
									<ul class="actions" id="main-compbutton">
										<li><input type="submit" value="비교하기 →" class="button big" id="compsize" onclick="sendFrm()"></li>
									</ul>
								</div> -->
						<!-- 	</form> -->
						</article>
					</div>

					<!-- 원피스 -->
					<div class="posts" id="onepiece">
						<article>
							<span class="image object"> <img
								src="images/main_size5.png" />
							</span>
						</article>
						<article>
							<!-- <form method="post" action="/index"> -->
								<!-- <input type="hidden" name="type" value="Op"> -->
								<table class="alt">
									<tr class="inforform">
										<th>어깨 너비</th>
										<td id="inforline"><input type="text"
											name="opshoulderWidth" value="" placeholder="입력"
											class="maintextbox" /><span>cm</span></td>
									</tr>

									<tr class="inforform">
										<th>가슴 단면</th>
										<td id="inforline"><input type="text" name="opchestBreadth"
											value="" placeholder="입력" class="maintextbox" /><span>cm</span></td>
									</tr>

									<tr class="inforform">
										<th>소매 길이</th>
										<td id="inforline"><input type="text" name="opsleeveLength"
											value="" placeholder="입력" class="maintextbox" /><span>cm</span></td>
									</tr>

									<tr class="inforform">
										<th>총 장</th>
										<td id="inforline"><input type="text"
											name="onePieceTotalLength" value="" placeholder="입력"
											class="maintextbox" /><span>cm</span></td>
									</tr>
								</table>
								<!-- <div>
									<ul class="actions" id="main-compbutton">
										<li><input type="submit" value="비교하기 →" class="button big" id="compsize" onclick="sendFrm()"></li>
									</ul>
								</div> -->
						<!-- 	</form> -->
						</article>
					</div>

					 <div>
						<ul class="actions" id="main-compbutton">
							<li><!-- <a href="#main">
									<button id="compsize" class="button big">비교하기 →</button>
							</a> -->
							<input type="submit" value="비교하기 →" class="button big" id="compsize">
							</li>
						</ul>
					</div> 

				</section>
				</form>
			</div>
		</div>



		<jsp:include page="inc/aside.jsp"></jsp:include>

	</div>
	<div id="popup">
		<div class="contents popup" id="con-small">
			<p class="title">
				<i class="far fa-grin-beam-sweat"></i><br>사이즈가 작아요!
			</p>
			<p class="overlayment">좀 더 큰 사이즈로 주문하시는걸 추천드려요!</p>
			<div class="btn" id="overlayClose">
				<a href="#" class="button close">닫기</a>
			</div>
		</div>

		<div class="contents popup" id="con-middle">
			<p class="title">
				<i class="far fa-grin-hearts fa-5x"></i><br>사이즈가 딱 맞네요!
			</p>
			<p class="overlayment">이걸로 당장 구매하세요</p>
			<div class="btn" id="overlayClose">
				<a href="#" class="button close">닫기</a>
			</div>
		</div>

		<div class="contents popup" id="con-big">
			<p class="title">
				<i class="far fa-laugh-wink"></i><br>사이즈가 크네요!
			</p>
			<p class="overlayment">좀 더 작은 사이즈로 입어도 괜찮을듯b</p>
			<div class="btn" id="overlayClose">
				<a href="#" class="button close">닫기</a>
			</div>
		</div>
	</div>
	<div class="mask"></div>
	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="assets/js/main.js"></script>
	<script>
		function openpop(id){
			$(".mask, #"+id).fadeIn();
			
		}	
		function typeChange(txt){
			document.getElementsByName("type")[0].value=txt;
			//alert(document.getElementsByName("type")[0].value);
		}
		
	      $(function(){
	         var wrapBoxheg = resizeHeg();
	         //alert(wrapBoxheg);
	         $(".infoBtn").click(function(e){
	            e.preventDefault();
	            $(".wrapBox")
	               .css({"overflow-y":"auto"})
	               .animate({scrollTop:wrapBoxheg},400)
	               .css({"overflow-y":"hidden"});
	         });
	         
	         $(".moveBtn").click(function(e){
	            e.preventDefault();
	            var target = $(this).attr("href");
	            var currentp = $(".innerWrapBox").scrollTop();
	            var targetp = $(target).position().top;
	            $(".innerWrapBox").animate({scrollTop : currentp+targetp},400);         
	         });
	         $(".topBtn").click(function(){
	            $(".innerWrapBox").animate({scrollTop:0}, 400 );
	         });
	         $(window).resize(function(){wrapBoxheg = resizeHeg();});
	      });
	      function resizeHeg(){
	         var heg = $(window).height();
	         var headheg = $("#header").height();         
	         var wrapBoxheg = heg-headheg;
	         //alert(wrapBoxheg);
	         $(".wrapBox").css({"height":wrapBoxheg});
	         $(".innerWrapBox").css({"height":wrapBoxheg});
	         $(".wrapBox section").css({"height":wrapBoxheg});
	         return wrapBoxheg;
	      }
	  
	</script>
	<c:if test="${result eq 3}">
		<script>
			openpop("con-small");
		</script>
	</c:if>
	<c:if test="${result eq 2}">
		<script>
			openpop("con-middle");
		</script>
	</c:if>
	<c:if test="${result eq 1}">
		<script>
			openpop("con-big");
		</script>
	</c:if>

</body>
</html>
