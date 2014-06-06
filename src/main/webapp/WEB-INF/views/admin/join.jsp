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
	<form action="joinProc">
		<table>
			<tr>
				<td><label for="id">아이디</label></td>
				<td><input type="text" id="id" placeholder="4~8자" /></td>
			</tr>
			<tr>
				<td><label for="pwd">비밀번호</label></td>
				<td><input type="password" id="pwd" placeholder="영문+숫자 6~10자" /></td>

			</tr>
			<tr>
				<td><label for="name">이름</label></td>
				<td><input type="text" id="name" placeholder="한글성명" /></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="가입" />
					<input type="reset" value="다시작성" />
				</td>
			</tr>
		</table>
	</form>
</body>
</html>