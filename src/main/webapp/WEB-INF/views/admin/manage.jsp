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
		<li><a href="setexam">테스트 출제</a></li>
		<li><a href="manage">테스트 관리</a></li>
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
			test title / footprint
		</div>
	</div>
	<div>
		<div>
			<form action="">
				<label for="aid">아이디 : </label>
				<input type="text" name="aid">
				<label for="apwd">비밀번호 : </label>
				<input type="text" name="apwd">
				<label for="aname">이름 : </label>
				<input type="text" name="aname">
				<label for="aphone">연락처 : </label>
				<input type="text" name="aphone">
				<label for="amail">이메일 : </label>
				<input type="text" name="amail">
				<label for="tgroup">그룹 : </label>
				<select>
					<option>1</option>
				</select>
				<input type="submit" value="register">
			</form>
			
		</div>
	</div>
	
	<div>
		<p>teacher list</p>
		<table>
			<thead>
				<tr>
					<th>아이디</th>
					<th>비밀번호</th>
					<th>이름</th>
					<th>연락처</th>
					<th>이메일</th>
					<th>그룹</th>
					<th>M/D</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td>2</td>
					<td>3</td>
					<td>4</td>
					<td>5</td>
					<td>6</td>
					<td>7</td>
				</tr>
			</tbody>
		</table>	
	</div>
</section>
</div>
<footer id="footer">
	COPYRIGHT EXAM.SIST.COM ALL RIGHT RESERVED.
</footer>

</body>
</html>