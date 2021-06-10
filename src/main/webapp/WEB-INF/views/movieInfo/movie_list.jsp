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
	<title>무비 차트</title>
	<link rel="stylesheet" href="/resources/css/movie_list.css">
	
	<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>
<body>
	<%@include file="/WEB-INF/views/header/header.jsp" %>
	<div id="wrap">
		<div id="movieList_content">
			<div id="simple_bar">
				<a href="#">홈</a> > <a href="#"> 영화</a> > <a href="#" style="text-decoration: underline; font-weight: 500;"> 무비차트</a>
			</div>
			<h1>무비차트</h1>
			<div class="contentList">
				<c:forEach items="${list}" var="list" varStatus="status">
					<div class="item_area">
						<div class="image_area">
							<c:if test="${list.image_uri == null }">
								<a href="/movie_detail?no=${list.cmi_seq}">
									<img src="/resources/images/noimage.jpg" style="width: 185px; height: 260px; border:6px solid black;"/>
								</a>
							</c:if>
							<c:if test="${list.image_uri != null }">
								<a href="/movie_detail?no=${list.cmi_seq}">
									<img src="${list.image_uri}" style="width: 185px; height: 260px; border: 6px solid black;"/>
								</a>
							</c:if>
						</div>
						<div class="title_area">${list.cmi_name}</div>
						<div class="open_area"><fmt:formatDate value="${list.cmi_open_date}" pattern="yyyy.MM.dd"/> 개봉</div>
						<div class="book_btn"><button id="book">예매하기</button></div>
					</div>
					<c:if test="${status.count % 4 == 0 || status.last}">
						<p class="line_area"></p>
					</c:if>
				</c:forEach>
			</div>
		</div>
		<div style="margin-top: 50px;">
			<%@include file="/WEB-INF/views/footer/footer.jsp" %>
		</div>
	</div>
</body>
</html>