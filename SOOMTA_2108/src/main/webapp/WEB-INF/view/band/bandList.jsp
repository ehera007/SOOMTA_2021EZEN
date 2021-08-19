<!-- 클래스/밴드 리스트  -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
/*전체 글씨꼴 설정*/
body {
	font-family: '맑은 고딕', 'Malgun Gothic', 'sans-serif';
}

/*a태그 라인 삭제*/
a:link {
	text-decoration: none;
}

a:visited {
	text-decoration: none;
}

a:hover {
	text-decoration: underline;
}

/*상단 고정 a 태그 색상 변경*/
.nav-item a:visited {
	color: #0F4C81;
}

.nav-item a:link {
	color: #0F4C81;
}

.nav-item a:hover {
	color: #0F4C81;
}

/*하단 고정 a 태그 색상 등 변경*/
.footer-menu a:linnk {
	color: black;
}

.footer-menu a:visited {
	color: black;
	font-weight: bold;
}

.footer-menu a:hover {
	color: black;
	font-weight: bold;
}

.footer-bottom a:link {
	color: #BEBEBE;
	font-weight: bold;
}

.footer-bottom a:visited {
	color: #BEBEBE;
}

.footer-bottom a:hover {
	color: #BEBEBE;
}

.footer-submenu a {
	margin-right: 10px;
}

/*상단 구역 분할, 색상 변경*/
.header {
	color: #0F4C81;
	height: 70px;
	display: flex;
	align-items: center;
	font-weight: bold;
}

.search {
	border: 1px solid black;
	height: 40px;
	width: 600px;
	margin: 0 auto;
	position: relative; /*본인 위치에서 175px만큼 왼쪽이동*/
	left: 175px;
	border-radius: 2em;
}

.nav {
	color: #0F4C81;
	display: flex;
	margin-left: auto;
}

.nav-item {
	margin: 15px;
	font-size: 12px;
}

/*전체카테고리 보기*/
.allCtgr {
	position: relative;
	display: inline;
	z-index: 1;
}

.mainmenu {
	
	padding: 8px;
	font-size: 15px;
	border: none;
	width: 130px;
}

.submenu {
	
	display: none;
	position: absolute;
	width: 130px;
	font-size: 15px;
	text-align: center;
	background-color:white;
}

.ctgr {
	border: 3px solid #0F4C81;
	margin-bottom:5px;
	list-style:none;
}

.allCtgr:hover .submenu {
	display: block;
}
/*
.allCtgr:hover .mainmenu {
	background-color: yellow;
}*/

.titlemainmenu{
	font-size:20px;
	color:#0F4C81;
}

/*------------*/

.ctgr>li {
    position: relative;
}
.ctgr>li:hover .titleSubmenu {
    left: 100%;
}
.ctgr>li a, .titleSubmenu>li a {
    border-radius: 10px;
    margin: 10px;
    color:#0F4C81;
}
.titleSubmenu {
    position: absolute;
    top: -3px;
    background: #6BD089;
    width: 80%;
    left: -9999px;
    list-style:none;
    text-align: center;
    margin: 0 auto;
    /*left: 100%;*/
    /*display: none;*/
}

.titleSubmenu>li a:hover {
    background: #085820;
    color: #fff;
}
/*------------*/


/*중앙 구역 분할 */
.main {
	width: 800px;
	margin: 0 auto;
	z-index: 2;
}

.DetailTag {
	position: relative;
	left: 40px;
}
/*하단 구역 분할*/
.footer {
	width: 800px;
	height: 70px;
	margin: 0 auto;
}

.footer-top {
	display: flex;
	align-items: center;
}

.footer-bottom {
	font-size: 12px;
	color: #BEBEBE;
}

.footer-bottommenu {
	display: flex;
	align-items: center;
	margin: 5px;
}

.footer-app {
	display: flex;
	margin-left: auto;
}

.footer-leftmenu {
	width: 800px;
	display: flex;
	align-items: center;
	display: flex;
}

.footer-rightmenu {
	width: 400px;
	display: flex;
	margin-left: auto;
}

.footer-menu {
	margin-left: 40px;
}
/* 하단고정 글자 색상, 사이즈 등 */
.footer-callNum p {
	color: #0F4C81;
	font-size: 20px;
	font-weight: 900;
}

.footer-callTime ul {
	list-style: none;
	padding-left: 0px;
	font-size: 14px;
	font-weight: bold;
}

.footer-rightmenu ul {
	list-style: none;
	padding-left: 0px;
	font-size: 14px;
	font-weight: bold;
}

.footer-callTime li {
	margin-bottom: 3px;
}

.footer-rightmenu li {
	margin-bottom: 5px;
}

.footer-menu p {
	color: #0F4C81;
	font-size: 16px;
	font-weight: 900;
}

a:link {
	color: #0F4C81;
	text-decoration: none;
}

a:visited {
	color: #0F4C81;
	text-decoration: none;
}

a:active {
	color: #0F4C81;
	text-decoration: none;
}

a:hover {
	color: #0F4C81;
	text-decoration: none;
}
</style>
<meta charset="UTF-8">
<title>SOOMTA</title>

</head>
<body>
	<!-- 상단 고정 : 로고 / 로그인,회원가입 -->
	<div class="header">
		<img class="logo" src="../../images/soomta_logo.png" alt="SOOMTA"
			onclick="location.href='/SOOMTA_2108/main'" />
		<div class="search">검색바</div>
		<!-- 로그인 안된 경우 -->
		<div class="nav">
			<div class="nav-item">
				<a href="<c:url value='/soomta/login'/>">로그인</a>
			</div>
			<div class="nav-item">
				<a href="<c:url value='/soomta/tutorJoin'/>">튜터등록</a>
			</div>
			<div class="nav-item">
				<a href="<c:url value='/soomta/memJoin'/>">무료회원가입</a>
			</div>
		</div>
	</div>
	<!---------------------------------------------------------- 중앙 : 검색바, 선택----------------------------------------------------- -->

	<div class="allCtgr">
		<button class="mainmenu">전체카테고리</button>
		<div class="submenu">
		<b class="titlemainmenu">CLASS</b>
			<div class="ctgr">
				<li><a href="#">학업</a>
					<ul class="titleSubmenu">
						<li><a href="../education/child">유아</a></li>
						<li><a href="../education/elementary">초딩</a></li>
						<li><a href="../education/medium">중등</a></li>
						<li><a href="../education/employeement">입시^편입</a></li>
						<li><a href="../education/ect">기타</a></li>
					</ul>
				</li>
			</div>
			<div class="ctgr">
				<li><a href="#">자격증/시험</a>
					<ul class="titleSubmenu">
						<li><a href="../ctificate/publicOfficer">공무원</a></li>
						<li><a href="../ctificate/NCS">NCS</a></li>
						<li><a href="../ctificate/taxation">세무^회계^변리</a></li>
						<li><a href="../ctificate/foreign">외국어</a></li>
						<li><a href="../ctificate/design">디자인</a></li>
						<li><a href="../ctificate/ect">기타</a></li>
					</ul>
				</li>
			</div>
			<div class="ctgr">
				<li><a href="#">예체능</a>
					<ul class="titleSubmenu">
						<li><a href="../art/art">미술</a></li>
						<li><a href="../art/sports">스포츠</a></li>
						<li><a href="../art/cook">요리</a></li>
						<li><a href="../art/music">음악</a></li>
						<li><a href="../art/ect">기타</a></li>
					</ul>
				</li>
			</div>
			<div class="ctgr">
				<li><a href="#">재태크</a>
					<ul class="titleSubmenu">
						<li><a href="../retack/estate">부동산</a></li>
						<li><a href="../retack/stock">주식</a></li>
						<li><a href="../retack/fund">펀드</a></li>
						<li><a href="../retack/ect">기타</a></li>
					</ul>
				</li>
			</div>
			<div class="ctgr">
				<li><a href="#">취업</a>
					<ul class="titleSubmenu">
						<li><a href="../employement/intertview">이력서/자소서</a></li>
						<li><a href="../employement/resume">면접</a></li>
						<li><a href="../employement/personality">인적성</a></li>
						<li><a href="../employement/ect">기타</a></li>
					</ul>
				</li>
			</div>
			<div class="ctgr">
				<a href="#">기타</a>
			</div>
			<b class="titlemainmenu">BAND</b>
			<div class="ctgr">
				<li><a href="#">학업</a>
					<ul class="titleSubmenu">
						<li><a href="../education/child">유아</a></li>
						<li><a href="../education/elementary">초딩</a></li>
						<li><a href="../education/medium">중등</a></li>
						<li><a href="../education/employeement">입시^편입</a></li>
						<li><a href="../education/ect">기타</a></li>
					</ul>
				</li>
			</div>
			<div class="ctgr">
				<li><a href="#">자격증/시험</a>
					<ul class="titleSubmenu">
						<li><a href="../ctificate/publicOfficer">공무원</a></li>
						<li><a href="../ctificate/NCS">NCS</a></li>
						<li><a href="../ctificate/taxation">세무^회계^변리</a></li>
						<li><a href="../ctificate/foreign">외국어</a></li>
						<li><a href="../ctificate/design">디자인</a></li>
					</ul>
				</li>
			</div>
			<div class="ctgr">
				<li><a href="#">예체능</a>
					<ul class="titleSubmenu">
						<li><a href="../art/art">미술</a></li>
						<li><a href="../art/sports">스포츠</a></li>
						<li><a href="../art/cook">요리</a></li>
						<li><a href="../art/music">음악</a></li>
						<li><a href="../art/ect">기타</a></li>
					</ul>
				</li>
			</div>
			<div class="ctgr">
				<li><a href="#">재태크</a>
					<ul class="titleSubmenu">
						<li><a href="../retack/estate">부동산</a></li>
						<li><a href="../retack/stock">주식</a></li>
						<li><a href="../retack/fund">펀드</a></li>
						<li><a href="../retack/ect">기타</a></li>
					</ul>
				</li>
			</div>
			<div class="ctgr">
				<li><a href="#">취업</a>
					<ul class="titleSubmenu">
						<li><a href="#">이력서^자소서</a></li>
						<li><a href="#">면접</a></li>
						<li><a href="#">인적성</a></li>
						<li><a href="#">기타</a></li>
					</ul>
				</li>
			</div>
			<div class="ctgr">
				<a href="#">기타</a>
			</div>
		</div>
	</div>
<!-- -------------------------------------------------------------------------------------------------------------------- -->

	<div class="main">
		<table>
			<tr style="color: #0F4C81;">
				<td><a href="./../../band/mainCtgr">Band </a>></td>
				<td><a href="./../../../SOOMTA_2108/band/education">메인카테고리
				</a>></td>
				<td>세부카테고리</td>
			</tr>
		</table>
		<br />

		<div style="border: 3px solid #0F4C81; border-radius: 2em;">
			<table class="DetailTag" width="700px">
				<tr>
					<td width="100px">관심 분야</td>
					<td><input type="checkbox" name="interest_ck"
						value="economy_ck" />경제</td>
					<td><input type="checkbox" name="interest_ck"
						value="Science_ck" />과학</td>
				</tr>
				<tr>
					<td>강사 성별</td>
					<td><input type="checkbox" name="interest_ck"
						value="economy_ck" />남자</td>
					<td><input type="checkbox" name="interest_ck"
						value="Science_ck" />여</td>
				</tr>
				<tr>
					<td>지역</td>
					<td><input type="checkbox" name="interest_ck"
						value="economy_ck" />서울</td>
					<td><input type="checkbox" name="interest_ck"
						value="Science_ck" />경기도</td>
				</tr>
				<tr>
					<td colspan="3"
						style="color: #BEBEBE; font-size: 10px; text-align: right;">더보기</td>
				</tr>
			</table>
		</div>
		<br />
		<form style="direction: rtl;">
			<select name="ranking">
				<option value="one">별점</option>
				<option value="two">조회수</option>
				<option value="three">즐찾</option>
			</select>
		</form>
		<table style="margin: auto; text-align: center;">
			<tr>
				<td width="150" height="150"><a href="../bandDetail"> <img width="150"
						height="150" src="#"/></a><br /> 자바동아리 </td>
			</tr>
			<!-- 쇼핑물 페이지처럼 c:if문 돌려서 4개 가져오시면 될거 같습니다 -->
		</table>
		<p style="text-align: center;">여기에 페이징 넣어주시면 됩니다 !!</p>
		<!----------------------------------------------------- 하단 고정------------------------------------------------- -->
		<hr style="color: #BEBEBE;">
		<div class="footer">
			<div class="footer-top">
				<div class="footer-leftmenu">
					<div class="footer-call">
						<div class="footer-callNum">
							<p>고객센터 1544-7979</p>
						</div>
						<div class="footer-callTime">
							<ul>
								<li>평일 10:30~18:00</li>
								<li>점심 13:00~14:00</li>
								<li>주말, 공휴일 제외</li>
							</ul>
						</div>
					</div>

					<div class="footer-rightmenu">
						<div class="footer-menu">
							<p>숨타</p>
							<ul>
								<li><a href="">회사소개</a></li>
								<li><a href="">서비스소개</a></li>
								<li><a href="">인재채용</a></li>
							</ul>
						</div>
						<div class="footer-menu">
							<p>튜터안내</p>
							<ul>
								<li><a href="">공지사항</a></li>
								<li><a href="">이용안내</a></li>
								<li><a href="">자주 묻는 질문</a></li>
							</ul>
						</div>
						<div class="footer-menu">
							<p>고객센터</p>
							<ul>
								<li><a href="">공지사항</a></li>
								<li><a href="">이용안내</a></li>
								<li><a href="">자주 묻는 질문</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="footer-bottom">
				<div class="footer-bottommenu">
					<div class="footer-submenu">
						<a href="#">이용약관 </a> <a href="#">개인정보처리방침 </a> <a href="#">환불정책
						</a> <a href="#">사업자정보확인 </a>
					</div>
					<div class="footer-app">
						<a href="#">APP 다운 </a>
					</div>
				</div>

				<div class="footer-address">
					<address>(주) 숨타 | 대표 이지연 | 서울특별시 서초구 서초대로77길 55 에이프로스퀘어
						3층 | soomta@gongbu.com | 사업자등록번호 : 123-21-01234 | 통신판매업신고 :
						2021-서울숨타-1004 주식회사 숨타는 전자상거래 등에서의 소비자보호에 관한 법률에 따른 통신판매업과
						통신판매중개업을 영위하고 있습니다. 주식회사 숨타는 통신판매중개자로서 중 개하는 통신판매에 관하여서는 통신판매의
						당사자가 아니므로 어떠한 책임도 부담하지 아니합니다.왜냐하면 MBTI가 큐티인 사람의 프로젝트거든요.</address>
				</div>
			</div>
		</div>
</body>
</html>