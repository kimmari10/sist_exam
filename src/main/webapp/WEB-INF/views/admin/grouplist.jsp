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
		<div>
			<form action="add_group">
				<label for="group_name">그룹추가 : </label>
				<input type="text" name="group_name"><br />
				<label for="begin">수강시작일 : </label>
				<input type="date" name="group_begin" ><br />
				<label for="due">수강종료일 : </label>
				<input type="date" name="group_due">
				<input type="submit" value="register">
			</form>
		</div>
		<div>
			<form action="mod_group">
				<label for="curr_name">그룹변경 : </label>
				<select name="curr_name">
				<c:forEach items="${group }" var="l">
					<option>${l.group_name }</option>
				</c:forEach>
				</select>
				<input type="text" name="new_name" >
				<input type="submit" value="modify">
			</form>
		</div>
		<div>
			<form action="del_group">
				<label for="topic">그룹삭제 : </label>
				<select name="curr_name">
				<c:forEach items="${group }" var="l">
					<option>${l.group_name }</option>
				</c:forEach>
				</select>
				<input type="submit" value="delete">
			</form>
		</div>
	</div>
	
	
	<div class="list_box">
		<p>그룹별 주소</p>
		<div class="table-responsive">
			<table class="table table-striped">
			<thead>
				<tr>
					<th>번호</th>
					<th>수강기간</th>
					<th>그룹명</th>
					<th>테스트</th>
					<th>응시자</th>
					<th>소속회원</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${group }" var="l">
					<tr>
						<td>${l.group_no }</td>
						<td>${l.group_begin } ~ ${l.group_due }</td>
						<td>${l.group_name }</td>
						<td>0개</td>
						<td>0명</td>
						<td>0명</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>	
		</div>
	</div>
</section>
