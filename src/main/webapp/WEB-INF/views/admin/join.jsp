<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>admin</title>
<link rel="stylesheet" type="text/css"
	href="resources/admin/css/bootstrap.css">
</head>
<body>
	<div class="form_box">
		<form action="regadmin" method="post" class="form">
			<label for="admin_id">아이디 : </label>
			<input id="uid" type="text" name="admin_id" placeholder="영문,숫자 4~12자"><br />
			<label for="admin_pw">비밀번호 : </label>
			<input id="upw" type="text" name="admin_pw" placeholder="영문, 숫자 6~12자"><br />
			<label for="admin_name">이름 : </label>
			<input id="uname" type="text" name="admin_name" placeholder="한글 2~5자"><br />
			<label for="admin_phone">연락처 : </label>
			<input id="tel" type="text" name="admin_phone" placeholder="-제외한 10~11자리 숫자"><br />
			<label for="admin_email">이메일 : </label>
			<input id="group" type="text" name="admin_email"><br />
			<label for="tgroup">그룹 : </label>
			<select>
				<option>1</option>
			</select>
			<input type="submit" value="register">
		</form>
		
	</div>
</body>
</html>