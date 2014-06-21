<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<section id="content">
	<div class="test_title">
		<div>
			test title / footprint
		</div>
	</div>
	
	<div class="form_box">
		<form action="">
			<label for="aid">아이디 : </label>
			<input type="text" name="aid"><br />
			<label for="apwd">비밀번호 : </label>
			<input type="text" name="apwd"><br />
			<label for="aname">이름 : </label>
			<input type="text" name="aname"><br />
			<label for="aphone">연락처 : </label>
			<input type="text" name="aphone"><br />
			<label for="amail">이메일 : </label>
			<input type="text" name="amail"><br />
			<label for="tgroup">그룹 : </label>
			<select>
				<option>1</option>
			</select>
			<input type="submit" value="register">
		</form>
		
	</div>
	
	<div class="list_box">
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
			
			<tbody class="admin_list">
			<c:forEach items="${admin }" var="l">
				<tr>
					<td class="admin_id">${l.admin_id }</td>
					<td class="admin_pw">${l.admin_pw }</td>
					<td class="admin_name">${l.admin_name }</td>
					<td class="admin_phone">${l.admin_phone }</td>
					<td class="admin_email">${l.admin_email }</td>
					<td class="admin_group"></td>
					<td class="admin_md">M/D</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>	
	</div>
</section>
