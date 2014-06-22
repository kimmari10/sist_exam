<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<section id="content">
	<div class="test_title">
		<div>
			test title / footprint
		</div>
	</div>
	<div class="form_box">
		<div>
			<form action="">
				<label for="group">그룹추가 : </label>
				<input type="text" name="group"><br />
				<label for="sday">수강시작일 : </label>
				<input type="text" name="sday"><br />
				<label for="eday">수강종료일 : </label>
				<input type="text" name="eday">
				<input type="submit" value="register">
			</form>
		</div>
		<div>
			<form action="">
				<label for="topic">그룹변경 : </label>
				<select>
					<option>1</option>
					<option>2</option>
					<option>3</option>
				</select>
				<input type="text" name="newname" >
				<input type="submit" value="modify">
			</form>
		</div>
		<div>
			<form action="">
				<label for="topic">그룹삭제 : </label>
				<select>
					<option>1</option>
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
				<tr>
					<td>1</td>
					<td>14.1.4~14.7.2</td>
					<td>6강의장</td>
					<td>2개</td>
					<td>2명</td>
					<td>21명</td>
				</tr>
			</tbody>
		</table>	
		</div>
	</div>
</section>
