<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<link type="text/css" rel="stylesheet" href="/exam/resources/admin/css/reset.css"/>
	<link type="text/css" rel="stylesheet" href="/exam/resources/admin/css/common.css"/>
	<link type="text/css" rel="stylesheet" href="/exam/resources/admin/css/visualize.jQuery.css"/>
	<script type="text/javascript" src="/exam/resources/admin/js/jq.js"></script>
	<script type="text/javascript" src="/exam/resources/admin/js/visualize.jQuery.js"></script>

</head>
<body>
<header id="header">Exam V1.0</header>
<div id="member">logout</div>
<div id="main_content" class="cf">
<aside id="menu">
	<ul>
		<li><a href="testlist">테스트 과목</a></li>
		<li><a href="grouplist">테스트 그룹</a></li>
		<li><a href="manage">관리자 관리</a></li>
	</ul>
	<ul>
		<li><a href="admin?menu=4">테스트 출제</a></li>
		<li><a href="admin?menu=5">테스트 관리</a></li>
	</ul>
	<ul>
		<li><a href="admin?menu=6">응시자 관리</a></li>
		<li><a href="admin?menu=7">불량 응시자</a></li>
	</ul>
	<ul>
		<li><a href="">회원등록</a></li>
		<li><a href="">회원관리</a></li>
	</ul>
	<ul>
		<li><a href="">공지사항</a></li>
		<li><a href="">질문게시판</a></li>
		<li><a href="">댓글관리</a></li>
	</ul>
</aside>
<section id="content">
	<div class="test_title">
		<div>
			테스트 설정
		</div>
	</div>
	<div>
		<form action="">
		<table>
			<tr>
				<td><label for="title">타이틀</label></td>
				<td><input type="text" name="title"></td>
			</tr>
			<tr>
				<td><label for="subject">과목선택</label></td>
				<td>
					<select name="subject">
						<option>1</option>
					</select>
				</td>
			</tr>
			<tr>
				<td><label>응시그룹</label></td>
				<td>
					<input type="checkbox">6강의장
					<input type="checkbox">1강의장
					<input type="checkbox">3강의장
				</td>
			</tr>
			<tr>
				<td><label for="date">시험날짜</label></td>
				<td>
					<input type="date" name="date">
				</td>
			</tr>
			<tr>
				<td><label for="time">제한시간</label></td>
				<td>
					<input type="text" name="time">분
				</td>
			</tr>
		</table>
		<input type="submit" value="문제출제하기">
		</form>	
	</div>
	
</section>
</div>
<footer id="footer">
	COPYRIGHT EXAM.SIST.COM ALL RIGHT RESERVED.
</footer>

</body>
</html>