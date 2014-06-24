<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<section id="content">
	<div class="test_title">
		<div>
			문제 출제
		</div>
	</div>
	<div>
		<form action="">
		<table>
			<tr>
				<td><label for="subject">과목선택</label></td>
				<td>
					<select name="subject">
						<option>자바</option>
					</select>
				</td>
			</tr>
			<tr>
				<td><label>유형선택</label></td>
				<td><input type="radio">주관식</input><input type="radio" >객관식</input></td>
			</tr>
			<tr>
				<td><label for="time">문제배점</label></td>
				<td>
					<input type="text" name="time" >점
				</td>
			</tr>
			<tr>
				<td><label>난이도</label></td>
				<td>
					<select>
						<option>상</option>
						<option>중</option>	
						<option>하</option>
					</select>
				</td>
			</tr>
			<tr>
				<td><label for="quest">문제</label></td>
				<td><textarea></textarea></td>
			</tr>
			
			<div class="joo">
				<tr>
					<td>보기1</td><td><input type="text" name="ans1" ></td>
				</tr>
				<tr>
					<td>보기2</td><td><input type="text" name="ans2" ></td>
				</tr>
				<tr>
					<td>보기3</td><td><input type="text" name="ans3" ></td>
				</tr>
				<tr>
					<td>보기4</td><td><input type="text" name="ans4" ></td>
				</tr>
			</div>
			<div class="kaek">
				<tr>
					<td><label>주관식답</label></td><td><input type="text" ></td>
				</tr>
				<tr>
					<td><label>풀이</label></td><td><textarea></textarea></td>
				</tr>
			</div>
		</table>
		<input type="submit" value="문제추가하기">
		<input type="reset" value="다시작성">
		</form>	
	</div>
	
</section>
