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
				<select name="field">
					<option value="subject">과목</option>
					<option value="question">문제</option>
					<option value="score">배점</option>
				</select>
				<input type="text" name="query" />
				<input type="submit" value="search" />
				
			</fieldset>
		</form>
	</div>
	<div class="table-responsive">
		<table class="table table-striped">
			<thead>
			<tr>
				<th>문제번호</th><th>과목</th><th>유형</th><th>문제</th><th>답</th><th>배점</th>
			</tr>
			</thead>
			<tbody>
				<c:forEach items="${exams }" var="e">
					<tr class="quest">
						<td>${e.exam_no}</td>
						<!-- 과목번호 어케 한글로 파싱할것인가... -->
						<td>${e.subject_no }</td>
						<td>
							<c:if test="${e.type == 0}">
								객관식
							</c:if>
							<c:if test="${e.type == 1}">
								주관식
							</c:if>
						</td>
						<td>${e.question }</td><td>${e.answer }</td><td>${e.score }</td>
					</tr>
					<tr class="hidden">
						<td>답 해설</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	
	</div>
</section>
<script type="text/javascript">
	$('.quest').click(function(){
		$(this).next().toggleClass("hidden");
	})

</script>
