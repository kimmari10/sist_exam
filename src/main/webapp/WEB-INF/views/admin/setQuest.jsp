<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<section id="content">
	<div class="test_title">
		<div>
			문제 출제
		</div>
	</div>
	<div>
		<form action="setQuestProc">
		<table>
			<tr>
				<td><label for="subject">과목선택</label></td>
				<td>
					<select name="subject_no">
						<c:forEach items="${subject }" var="s">
						<option value="${s.subject_no }">${s.subject_name }</option>
						
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<td><label>유형선택</label></td>
				<td>
					<select name="type">
						<option value="0">객관식</option>
						<option value="1">주관식</option>
					</select>
				</td>
			</tr>
			<tr>
				<td><label for="time">문제배점</label></td>
				<td>
					<input type="text" name="score" >점
				</td>
			</tr>
			<tr>
				<td><label>난이도</label></td>
				<td>
					<select name="level">
						<option>상</option>
						<option>중</option>	
						<option>하</option>
					</select>
				</td>
			</tr>
			<tr>
				<td><label for="quest">문제</label></td>
				<td><textarea name="question"></textarea></td>
			</tr>
			
				<tr>
					<td><label>보기1</label></td><td><input type="text" name="ex1" ></td>
				</tr>
				<tr>
					<td><label>보기2</label></td><td><input type="text" name="ex2" ></td>
				</tr>
				<tr>
					<td><label>보기3</label></td><td><input type="text" name="ex3" ></td>
				</tr>
				<tr>
					<td><label>보기4</label></td><td><input type="text" name="ex4" ></td>
				</tr>
				<tr>
					<td><label>객관식답</label></td><td><input type="text" name="answer"/></td>
				</tr>
				<tr>
					<td><label>주관식답</label></td><td><input type="text" name="answer_ju"/></td>
				</tr>
				<tr>
					<td><label>풀이</label></td><td><textarea name="explain"></textarea></td>
				</tr>
		</table>
		<input type="submit" value="문제추가하기">
		<input type="reset" value="다시작성">
		</form>	
	</div>
	
</section>
