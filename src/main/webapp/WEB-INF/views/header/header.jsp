<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
	response.setHeader("Cache-Control", "no-cache, no-store, must_revalidate");
	response.setHeader("Pragma", "no-cache");
	response.setHeader("Expires", "0");
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="/resources/css/reset.css">
	<link rel="stylesheet" href="/resources/css/header.css">
</head>
<body>
	<header>
		<div id="ad_wrap">
			<a href="#" class="underline">
				<img src="/resources/images/ad_image.jpg" />
			</a>
		</div>
		<div id="header_wrap">
			<!-- 광고 배너 -->
			<div id="main_wrap">
				<!-- 로고 -->
				<div class="logo">
					<h1>
						<a href="/" class="underline">
							<img src="https://img.cgv.co.kr/R2014/images/title/h1_cgv.png">
						</a>
					</h1>
				</div>
		
				<!-- 서비스 메뉴 -->
				<div class="service_menu">
					<ul class="gnb">
						<li>
							<c:if test="${memberInfo == null}">
								<a href="/login" class="underline">
									<span>로그인</span>
								</a>
							</c:if>
							<c:if test="${memberInfo != null}">
								<a href="/logout" class="underline">
									<span>로그아웃</span>
								</a>
							</c:if>
						</li>
						<li>
							<a href="/join" class="underline">
								<span>회원가입</span>
							</a>
						</li>
						<li>
							<a href="#" class="underline">
								<span>My CGV</span>
							</a>
						</li>
						<li>
							<a href="#" class="underline">
								<span>VIP LOUNGE</span>
							</a>
						</li>
						<li>
							<a href="#" class="underline">
								<span>Club서비스</span>
							</a>
						</li>
						<li>
							<a href="#" class="underline">
								<span>고객센터</span>
							</a>
						</li>
						<li>
							<a href="#" class="underline">
								<span>ENGLISH TICKETING</span>
							</a>
						</li>
					</ul>
				</div>
		
				<!-- 주 메뉴 -->
				<div class="main_menu">
					<!-- 메뉴에 따라 바뀜 -->
					<h2>
						<c:if test="${menuNum == 0}"><img src="https://img.cgv.co.kr/R2014/images/title/h2_cultureplex.png" /></c:if>
						<c:if test="${menuNum == 1}"><img src="https://img.cgv.co.kr/R2014/images/title/h2_movie.png" /></c:if>
					</h2>
					<div class="lnb1">
						<ul id="gnb_list">
							<li class="movie">
								<a href="/movie_list" class="underline">영화</a>
								<div id="sub_gnb_list">
									<ul>
										<li>
											<a href="/movie_list" class="underline">무비차트</a>
										</li>
									</ul>
								</div>
							</li>
							<li class="booking">
								<a href="#" class="underline">예매</a>
								<div id="sub_gnb_list">
									<ul>
										<li>
											<a href="#" class="underline">빠른예매</a>
										</li>
										<li>
											<a href="#" class="underline">상영시간표</a>
										</li>
									</ul>
								</div>
							</li>
							<li class="theaters">
								<a href="#" class="underline">극장</a>
								<div id="sub_gnb_list">
									<ul>
										<li>
											<a href="#" class="underline">CGV 극장</a>
										</li>
										<li>
											<a href="#" class="underline">특별관</a>
										</li>
									</ul>
								</div>
							</li>
							<li class="culture">
								<a href="#" class="underline">이벤트&컬처</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="search">
					<input type="text" class="search_area"/>
					<button>검색</button>
				</div>
			</div>
		</div>
		<div class="bar">
		</div>
	</header>
</body>
</html>