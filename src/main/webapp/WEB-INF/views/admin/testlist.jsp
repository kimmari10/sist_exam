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
			<form action="add_subject" method="post">
				<label for="topic">과목추가 : </label>
				<input type="text" name="subject_name">
				<input type="submit" value="register">
			</form>
		</div>
		<div>
			<form action="mod_subject">
				<label>과목변경 : </label>
				<select name="curr_name">
				<c:forEach items="${subject }" var="m">
					<option>${m.subject_name }</option>
				</c:forEach>
				</select>
				<input type="text" name="new_name" >
				<input type="submit" value="modify">
			</form>
		</div>
		<div>
			<form action="del_subject">
				<label for="topic">과목삭제 : </label>
				<select name="curr_name">
				<c:forEach items="${subject }" var="m">
					<option>${m.subject_name }</option>
				</c:forEach>
				</select>
				<input type="submit" value="delete">
			</form>
		</div>
	</div>
	
	
	<div class="list_box">
		<p>과목별 주소</p>
		<div class="table-responsive">
			<table class="table table-striped">
				<thead>
					<tr>
						<th>번호</th>
						<th>테스트 과목명</th>
						<th>출제된 테스트</th>
						<th>응시한 학생수</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${subject }" var="l">
					<tr>
						<td>${l.subject_no }</td>
						<td>${l.subject_name }</td>
						<td>0개</td>
						<td>0명</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>	
	</div>
</section>
