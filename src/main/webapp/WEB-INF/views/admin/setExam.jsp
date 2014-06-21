<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
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
