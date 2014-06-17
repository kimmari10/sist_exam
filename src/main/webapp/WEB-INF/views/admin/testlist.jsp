<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<section id="content">
	<div class="test_title">
		<div>
			test title / footprint
		</div>
	</div>
	<div>
		<div>
			<form action="">
				<label for="topic">과목추가 : </label>
				<input type="text" name="topic">
				<input type="submit" value="register">
			</form>
		</div>
		<div>
			<form action="">
				<label for="topic">과목변경 : </label>
				<select>
					<option>1</option>
					<option>2</option>
					<option>3</option>
				</select>
				<input type="submit" value="modify">
			</form>
		</div>
		<div>
			<form action="">
				<label for="topic">과목삭제 : </label>
				<select>
					<option>1</option>
					<option>2</option>
					<option>3</option>
				</select>
				<input type="submit" value="delete">
			</form>
		</div>
	</div>
	
	<div>
		<p>과목별 주소</p>
		<table>
			<thead>
				<tr>
					<th>번호</th>
					<th>테스트 과목명</th>
					<th>출제된 테스트</th>
					<th>응시한 학생수</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td>자바</td>
					<td>0개</td>
					<td>3명</td>
				</tr>
			</tbody>
		</table>	
	</div>
</section>
