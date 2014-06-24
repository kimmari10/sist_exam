<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<section id="content">
	<div class="">
		<div>
			문제 창고
		</div>
	</div>
	<div>
		<form action="">
			<fieldset>
				<legend>문제검색부분</legend>
				<select>
					<option>과목</option>
					<option>문제</option>
					<option>배점</option>
				</select>
				<input type="text" />
				<input type="submit" value="search" />
				
			</fieldset>
		</form>
	</div>
	<div>
		<table>
			<thead>
			<tr>
				<th>문제번호</th><th>유형</th><th>문제</th><th>답</th><th>배점</th>
			</tr>
			</thead>
			<tbody>
				<div>
					<tr>
						<td>1</td><td>객관식</td><td>자바의 성격으로 맞는것은?</td><td>4번</td><td>5점</td>
					</tr>
				</div>
				<div>답 해설 부분</div>
			</tbody>
		</table>
	
	</div>
</section>
