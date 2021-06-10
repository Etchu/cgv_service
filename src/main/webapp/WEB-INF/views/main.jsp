<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>영화 그 이상의 감동, CGV</title>
	<link rel="stylesheet" href="/resources/css/main.css">
	<link rel="stylesheet" href="/resources/assets/slick/slick.css" />
	<link rel="stylesheet" href="/resources/assets/slick/slick-theme.css" />
	
	<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script src="/resources/assets/slick/slick.min.js"></script>
	<script src="/resources/js/main.js"></script>
</head>
<body>
	<%@include file="/WEB-INF/views/header/header.jsp" %>
	<div id="wrap">
		<div id="background" class="bg-bricks">
			<div id="main_contents">
				<section class="item_slider">
					<div class="img_slider">
						<div class="image_items">
							<a href="#">
								<img src="https://img.cgv.co.kr/banner/main/mainbig_new_2.jpg" style="width: 100%; height: 100%;"/>
							</a>
						</div>
						<div class="image_items">
							<a href="#">
								<img src="https://img.cgv.co.kr/Front/Main/2021/0326/16167338554980.jpg" style="width: 100%; height: 100%;"/>
							</a>
						</div>
						<div class="image_items">
							<a href="#">
								<img src="https://img.cgv.co.kr/Front/Main/2021/0408/16178517810300.jpg" style="width: 100%; height: 100%;"/>
							</a>
						</div>
						<div class="image_items">
							<a href="#">
								<img src="https://img.cgv.co.kr/Front/Main/2021/0409/16179293516920.jpg" style="width: 100%; height: 100%;"/>
							</a>
						</div>
						<div class="image_items">
							<a href="#">
								<img src="https://img.cgv.co.kr/Front/Main/2021/0315/16157760412200.jpg" style="width: 100%; height: 100%;"/>
							</a>
						</div>
						<div class="image_items">
							<a href="#">	
								<img src="https://img.cgv.co.kr/Front/Main/2021/0324/16165535199780.jpg" style="width: 100%; height: 100%;"/>
							</a>
						</div>
						<div class="image_items">
							<a href="#">	
								<img src="https://img.cgv.co.kr/Front/Main/2021/0401/16172400187700.jpg" style="width: 100%; height: 100%;"/>
							</a>
						</div>
						<div class="btn_area">
							<button type="button" id="prev">
								<img src="/resources/images/DM_20210324195651_072.PNG"/>
							</button>
							<button type="button" id="next">
								<img src="/resources/images/DM_20210324195651_073.PNG"/>
							</button>
						</div>
					</div>
				</section>
				<section class="item_list">
					<h3>
						<img src="https://img.cgv.co.kr/R2014/images/title/h3_movie_selection.gif" />
					</h3>
					<div id="movie_area">
						<div id="selection_L">
	        				<iframe src="./resources/images/중간영상.PNG" width="733" height="388" title="" frameborder="0" scrolling="no" marginwidth="0" marginheight="0" name="Movie_Selection_L" id="Movie_Selection_L" allowfullscreen="allowfullscreen" mozallowfullscreen="mozallowfullscreen" msallowfullscreen="msallowfullscreen" oallowfullscreen="oallowfullscreen" webkitallowfullscreen="webkitallowfullscreen"></iframe>
						</div>
						<div id="section_R">
							<iframe src="./resources/images/중간이미지.jpg" width="240" height="388" title="" frameborder="0" scrolling="no" marginwidth="0" marginheight="0" name="Movie_Selection_R" id="Movie_Selection_R"></iframe>
						</div>
					</div>
				</section>
				
				<section class="item_list">
					<h3>
						<img src="https://img.cgv.co.kr/R2014/images/title/h3_event.gif"/>
					</h3>
					<ul class="tab-menu">
						<li>
							<a href="#">CGV스페셜</a>
						</li>
						<li>
							<a href="#">영화/예매</a>
						</li>
						<li>
							<a href="#">CGV아트하우스</a>
						</li>
						<li>
							<a href="#">제휴/할인</a>
						</li>
						<li class="last">
							<a href="#">멤버십</a>
						</li>
					</ul>
					<div class="sect-event">
						<ul>
							<li>
								<a href="#">
									<img src="https://img.cgv.co.kr/Front/Main/2021/0330/16170705205160.jpg" alt="시그니처 K">
								</a>
							</li>
							<li>
								<a href="#">
									<img src="https://img.cgv.co.kr/Front/Main/2021/0330/16170705205320.jpg" alt="매점 딜리버리 서비스 런칭">
								</a>
							</li>
							<li>
								<a href="#">
									<img src="https://img.cgv.co.kr/Front/Main/2020/1222/16086237963730.jpg" alt="IMAX Island">
								</a>
							</li>
							<li>
								<a href="#">
									<img src="https://img.cgv.co.kr/Front/Main/2021/0106/16099033996280.jpg" alt="별관">
								</a>
							</li>
						</ul>
					</div>
					<div class="cols-banner">
						<div class="col-ad">
							<div class="box-com">
								<div class="box-inner">
									<a href="#">
										<img src="https://img.cgv.co.kr/Front/Main/2020/1130/16067181584930.jpg" alt="기프트카드">
									</a>
								</div>
							</div>
						</div>
						<div class="col-hd">
							<a href="#">
								<img src="https://img.cgv.co.kr/R2014/images/main/main_moviecollage.jpg" alt="CGV ARTHOUSE, A Good Movie, A Better Life">
							</a>
						</div>
						<div class="col-collage">
							<div class="box-com">
								<div id="Branding_R" class="box-inner">
									<iframe src="./resources/images/광고이미지.png" width="226" height="259" title="기업광고-CGV 기프트 카드" frameborder="0" scrolling="no" marginwidth="0" marginheight="0" name="Branding" id="Branding"></iframe>
								</div>
							</div>
						</div>
					</div>
					<div id="ctl00_PlaceHolderContent_wrap_notice" class="sect-notice-info cf">
						<h3>공지사항</h3>
    					<div class="sect-notice-list cf">
     	   					<div class="inner" style="overflow: hidden; position: relative; height: 35px;">
        					</div>
    					</div>
					</div>
				</section>
			</div>
			<div style="margin-top: 50px;">
				<%@include file="/WEB-INF/views/footer/footer.jsp" %>
			</div>
		</div>
	</div>
</body>
</html>