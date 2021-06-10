<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title></title>
	<link rel="stylesheet" href="/resources/css/reset.css" />
	<link rel="stylesheet" href="/resources/css/join.css" />
	
	<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script src="/resources/js/join.js"></script>
</head>
<body>
	<%@include file="/WEB-INF/views/header/header.jsp" %>
	<div class="join_form_wrap">
		<div id="simple_bar">
				<a href="#">홈</a> > <a href="#"> 회원서비스</a> > <a href="#" style="text-decoration: underline; font-weight: 500;"> 회원가입</a>
		</div>
		<div class="form_header">
			<!-- <h1>회원가입</h1> -->
			<p>필수입력사항</p>
		</div>
		<table>
			<tbody>
				<tr>
					<td>아이디<span class="necessary"></span></td>
					<td><input type="text" id="user_id" placeholder="6자 이상 영문 혹은 영문과 숫자를 조합"/></td>
					<td><button id="dup_check">중복확인</button></td>
				</tr>
				<tr>
					<td>비밀번호<span class="necessary"></span></td>
					<td><input type="text" id="user_pwd" placeholder="비밀번호를 입력해주세요"/></td>
				</tr>
				<tr>
					<td>비밀번호 확인<span class="necessary"></span></td>
					<td><input type="text" id="user_pwd_confirm" placeholder="비밀번호 확인"/></td>
				</tr>
				<tr>
					<td>이름<span class="necessary"></span></td>
					<td><input type="text" id="user_name" placeholder="이름을 입력해주세요"/></td>
				</tr>
				<tr>
					<td>휴대폰<span class="necessary"></span></td>
					<td><input type="text" id="user_phone" placeholder="-없이 휴대폰 번호를 입력해주세요"/></td>
				</tr>
				<tr>
					<td>이메일<span class="necessary"></span></td>
					<td><input type="text" id="user_email" placeholder="이메일을 입력해주세요"/></td>
					<td><button id="email_dup_check">중복확인</button></td>
				</tr>
				<tr>
					<td>주소<span class="necessary"></span></td>
					<td>
						<button id="address_search"><i class="far fa-search"/></i>주소 검색</button>
					</td>
				</tr>
				<tr>
					<td>성별</td>
					<td>
						<div class="user_gender">
							<input type="radio" name="user_gender" id="gender_male" class="user_gender" value="0"/>
							<label for="gender_male" id="gender_male_icon"><i class="far fa-circle"></i></label>
							<label for="gender_male" id="gender_male_text">남자</label>
					
							<input type="radio" name="user_gender" id="gender_female" class="user_gender" value="1"/>
							<label for="gender_female" id="gender_male_icon"><i class="far fa-circle"></i></label>
							<label for="gender_female" id="gender_male_text">여자</label>
					
							<input type="radio" name="user_gender" id="gender_deselect" class="user_gender" value="2" checked/>
							<label for="gender_deselect" id="gender_male_icon"><i class="far fa-circle"></i></label>
							<label for="gender_deselect" id="gender_male_text">선택안함</label>
						</div>
					</td>
				</tr>
				<tr>
					<td>생년월일</td>
					<td>
						<div class="user_birth">
							<input type="number"  id="user_birth_year" placeholder="YYYY" />
							<span>/</span>
							<input type="number"  id="user_birth_month" placeholder="MM" />
							<span>/</span>
							<input type="number"  id="user_birth_date" placeholder="DD" />
						</div>
					</td>
				</tr>		
				<tr class="agreements">
					<td>이용약관동의<span class="necessary">*</span></td>
					<td colspan="2">
						<div class="agreements_row">
							<div>
								<input type="checkbox" id="agree_terms" />
								<label for="agree_terms" class="checkbox_icon"></label>
							</div>
							<div>
								<label for="agree_terms">개인정보 수집·이용 동의<span class="necessary">(필수)</span></label>
								<a href="#">약관보기<i class="far fa-chevron-right"></i></a>
							</div>
						</div>
						<div class="agreements_row">
							<div>
								<input type="checkbox" id="more_than_14" />
								<label for="more_than_14" class="checkbox_icon"></label>
							</div>
							<div>
								<label for="more_than_14">본인은 만 14세 이상입니다.<span class="necessary">(필수)</span></label>
							</div>
						</div>
					</td>
				</tr>
			</tbody>
		</table>
		<div class="btn_area">
			<button id="join_btn">가입하기</button>
			<button id="join_cancel" onclick="history.back()">취소</button>
		</div>
	</div>
	<div style="margin-top: 50px;">
		<%@include file="/WEB-INF/views/footer/footer.jsp" %>
	</div>
</body>
</html>