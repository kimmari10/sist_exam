<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
			
			<c:forEach items="${admin }" var="l">
				<tr>
					<td>${l.admin_name }</td>
					<td>${l.admin_id }</td>
					<td>3</td>
					<td>4</td>
					<td>5</td>
					<td>6</td>
					<td>7</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>	
	</div>
</section>
