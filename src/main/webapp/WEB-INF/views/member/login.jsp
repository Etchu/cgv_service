<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="/resources/css/login.css">
	
	<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script src="/resources/js/login.js"></script>
</head>
<body>
	<%@include file="/WEB-INF/views/header/header.jsp" %>
	<div id="login_wrap">
		<div id="simple_bar">
				<a href="#">홈</a> > <a href="#"> 회원서비스</a> > <a href="#" style="text-decoration: underline; font-weight: 500;"> 로그인</a>
		</div>
		<div class="login_area">
			<span>아이디, 비밀번호를 입력하신 후 로그인 버튼을 클릭해 주세요.</span>
			<div class="id">
				<span>아이디</span>
				<input type="text" id="user_id"/>
			</div>
			<div class="pwd">
				<span>비밀번호</span>
				<input type="password" id="user_pwd"/>
			</div>
			<button id="login">로그인</button>
			<a href="/join" id="join">회원가입</a>
		</div>
	</div>
	<div style="margin-top: 50px;">
		<%@include file="/WEB-INF/views/footer/footer.jsp" %>
	</div>
</body>
</html>