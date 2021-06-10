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
	<link rel="stylesheet" href="/resources/css/movie_detail.css">
	
	<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>
<body>
 	<%@include file="/WEB-INF/views/header/header.jsp" %>
	<div id="wrap">
		<div class="content_wrap">
			<div id="simple_bar">
				<a href="#">홈</a> > <a href="#"> 영화</a> > <a href="#" style="text-decoration: underline; font-weight: 500;"> 영화상세</a>
			</div>
			<h1>영화상세</h1>
			<div class="image_area">
				<c:if test="${list.image_uri == null }">
					<img src="/resources/images/noimage.jpg" style="width: 185px; height: 260px;"/>
				</c:if>
				<c:if test="${list.image_uri != null }">
					<img src="${list.image_uri}" style="width: 185px; height: 260px;"/>
				</c:if>
			</div>
			
			<div class="title_area">
				<div id="movie_title">${list.cmi_name}</div>
			</div>
			
			<div class="sub_title_area">
				<div id="movie_sub_title">${list.cmi_sub_name}</div>
			</div>
			
			<div class="first_line">
				<div class="director_area">
					<span>감독 : </span>
					<div class="selected_director">
						<c:forEach items="${directorList}" var="directorList" varStatus="director">
							<c:if test="${director.last}">
								<span>${directorList.cmd_name} / </span>
							</c:if>
							<c:if test="${!director.last}">
								<span>${directorList.cmd_name}, </span>
							</c:if>
						</c:forEach>
					</div>
				</div>
			
				<div class="actor_area">
					<span>배우 : </span>
					<div class="selected_actor">
						<c:forEach items="${actorList}" var="actorList" varStatus="actor">
							<c:if test="${actor.last}">
								<span>${actorList.cma_name}</span>
							</c:if>
							<c:if test="${!actor.last}">
								<span>${actorList.cma_name}, </span>
							</c:if>
						</c:forEach>
					</div>
				</div>
			</div>		
			
			<div class="second_line">	
				<div class="genre_area">
					<span>장르 : </span>
					<div class="selected_genre">
						<c:forEach items="${genreList}" var="genreList" varStatus="genre">
							<c:if test="${genre.last}">
								<span>${genreList.cmg_name} / </span>
							</c:if>
							<c:if test="${!genre.last}">
								<span>${genreList.cmg_name}, </span>
							</c:if>
						</c:forEach>
					</div>
				</div>
			
				<div class="sel_movie_grade">
					<span>기본 : </span>
					<c:if test="${list.cmi_grade == 0}">
						<span id="grade_all_text">전체 관람가, </span>
					</c:if>
					
					<c:if test="${list.cmi_grade == 1}">
						<span id="grade_twelve_text">12세 관람가, </span>
					</c:if>
					
					<c:if test="${list.cmi_grade == 2}">
						<span id="grade_fifteen_text">15세 관람가, </span>
					</c:if>
				
					<c:if test="${list.cmi_grade == 3}">
						<span id="grade_limit_text">청소년 관람불가, </span>	
					</c:if>
				
					<c:if test="${list.cmi_grade == 4}">
						<span id="grade_undefined_text">미정, </span>
					</c:if>
				</div>
			
				<div class="time_area">
					<div id="movie_running">${list.cmi_runningtime}, </div>
				</div>
			
				<div class="country_area">
					<div id="make_country"> ${list.cmi_country}</div>
				</div>
				
			</div>
			
			<div class="third_line">
			<div class="open_date">
				<span>개봉일 : </span>
				<div id="open_expire_date">
					<fmt:formatDate value="${list.cmi_open_date}" pattern="yyyy.MM.dd"/>
				</div>
			</div>
			</div>
			
			<div class="sel_movie_type">
				<c:if test="${list.cmi_type == 0}">
					<p id="show_movie_text">현재상영중</p>
				</c:if>
				
				<c:if test="${list.cmi_type == 1}">
					<p id="notShow_movie_text">상영예정작</p>
				</c:if>
			</div>
			
			<%-- <div class="sel_movie_screen">
				<span>스크린 종류 : </span>
				<c:if test="${list.cmi_screen == 0}">
					<p id="screen_twoD_text">2D</p>
				</c:if>
				
				<c:if test="${list.cmi_screen == 1}">
					<p id="screen_threeD_text">3D</p>
				</c:if>
				
				<c:if test="${list.cmi_screen == 2}">
					<p id="screen_fourD_text">4D</p>
				</c:if>
			</div> --%>
			
			<div class="content_area">
				<div id="movie_content">${list.cmi_content}</div>
			</div>
			
			<div class="btn_area">
            	<button id="movie_cancel" onclick="history.back()">목록</button>
        	</div>	
		</div>
        
        <div class="comment_area">
        	<div class="grade_btn">
        		<p>관람일 포함 7일 이내 관람평을 남기시면 <strong style="color: #BF2C1C; font-weight: 500;">CJ ONE 20P</strong>가 적립됩니다.</p>
        		<p><em>21,043</em>명의 실관람객이 평가해주셨습니다.</p>
        		<div class="grade_btn_area">
        			<button id="movie_grade">평점작성</button>
        			<button id="my_grade">내평점</button>
        		</div>
        	</div>
        	<div class="user_comment">
        	<div class="some_comment">
        		<div class="user_img">
        			<img src="http://img.cgv.co.kr/R2014/images/common/default_profile.gif">
        		</div>
        		<span>user1</span>
        		<span>&nbsp</span>
        		<span>최고의 영화!</span>
        		<span>2021.05.27</span>
        		<span><img src="http://img.cgv.co.kr/R2014/images/point/ico_point_default.png">&nbsp0</span>
        	</div>
        	<div class="some_comment">
        		<div class="user_img">
        			<img src="http://img.cgv.co.kr/R2014/images/common/default_profile.gif">
        		</div>
        		<span>user2</span>
        		<span>&nbsp</span>
        		<span>결말이 황당함;;</span>
        		<span>2021.05.27</span>
        		<span><img src="http://img.cgv.co.kr/R2014/images/point/ico_point_default.png">&nbsp0</span>
        	</div>
        	<div class="some_comment">
        		<div class="user_img">
        			<img src="http://img.cgv.co.kr/R2014/images/common/default_profile.gif">
        		</div>
        		<span>user3</span>
        		<span>&nbsp</span>
        		<span>역시 믿고보는 영화!</span>
        		<span>2021.05.27</span>
        		<span><img src="http://img.cgv.co.kr/R2014/images/point/ico_point_default.png">&nbsp0</span>
        	</div>
        	<div class="some_comment">
        		<div class="user_img">
        			<img src="http://img.cgv.co.kr/R2014/images/common/default_profile.gif">
        		</div>
        		<span>user4</span>
        		<span>&nbsp</span>
        		<span>재밌게 잘 봤습니다.</span>
        		<span>2021.05.27</span>
        		<span><img src="http://img.cgv.co.kr/R2014/images/point/ico_point_default.png">&nbsp0</span>
        	</div>
        	<div class="some_comment">
        		<div class="user_img">
        			<img src="http://img.cgv.co.kr/R2014/images/common/default_profile.gif">
        		</div>
        		<span>user5</span>
        		<span>&nbsp</span>
        		<span>비현실 적이지만 재미있음.</span>
        		<span>2021.05.27</span>
        		<span><img src="http://img.cgv.co.kr/R2014/images/point/ico_point_default.png">&nbsp0</span>
        	</div>
        	<div class="some_comment">
        		<div class="user_img">
        			<img src="http://img.cgv.co.kr/R2014/images/common/default_profile.gif">
        		</div>
        		<span>user6</span>
        		<span>&nbsp</span>
        		<span>명불허전</span>
        		<span>2021.05.27</span>
        		<span>
        			<img src="http://img.cgv.co.kr/R2014/images/point/ico_point_default.png">
        			&nbsp0
        		</span>
        	</div>
        	</div>
        </div>
	</div>
	<div style="margin-top: 50px;">
		<%@include file="/WEB-INF/views/footer/footer.jsp" %>
	</div>
</body>
</html>