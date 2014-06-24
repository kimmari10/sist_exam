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
		<form action="regadmin" method="post" class="form">
			<label for="admin_id">아이디 : </label>
			<input id="uid" type="text" name="admin_id" placeholder="영문,숫자 4~12자">
			<input type="button" name="checker" onclick="checkID()" value="중복검사"><br />
			<label for="admin_pw">비밀번호 : </label>
			<input id="upw" type="password" name="admin_pw" placeholder="영문, 숫자 6~12자"><br />
			<label for="admin_name">이름 : </label>
			<input id="uname" type="text" name="admin_name" placeholder="한글 2~5자"><br />
			<label for="admin_phone">연락처 : </label>
			<input id="tel" type="text" name="admin_phone" placeholder="-제외한 10~11자리 숫자"><br />
			<label for="admin_email">이메일 : </label>
			<input id="group" type="text" name="admin_email"><br />
			<label for="tgroup">그룹 : </label>
			<select>
				<option>1</option>
			</select>
			<input type="submit" value="register">
		</form>
		
	</div>
	
	<div class="list_box">
		<p>teacher list</p>
		<div class="table-responsive">
			<table class="table table-striped">
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
				
				<tbody>
				<c:forEach items="${admin }" var="l">
					<tr>
					<from action="md_admin" method="post">
						<td class="admin_id">${l.admin_id }</td>
						<td class="admin_pw">${l.admin_pw }</td>
						<td class="admin_name">${l.admin_name }</td>
						<td class="admin_phone">${l.admin_phone }</td>
						<td class="admin_email">${l.admin_email }</td>
						<td class="admin_group"></td>
						<td class="admin_md"><input name="mod" type="submit" value ="m" > / <input type="submit" name="del" value="d"></td>
					</from>
					</tr>
				</c:forEach>
				</tbody>
			</table>
		</div>	
	</div>
</section>
<script type="text/javascript">
function checkID()
{
      var id = $('#uid').val();
      if( id == '' )
      {
            alert('아이디를 입력하세요');
            return;
      }   
      
      var url ='id_check?id=' + id;
      
      window.open(url, '',  'width=300, height=350, left=0, top=0');
}

</script>
<script type="text/javascript">
//<![CDATA[
jQuery( function($) { // HTML 문서를 모두 읽으면 포함한 코드를 실행

	// 변수 이름을 're_'로 정한것은 'Reguar Expression'의 머릿글자
	var re_id = /^[a-zA-Z0-9_-]{4,12}$/; // 아이디 검사식
	var re_pw = /^[a-zA-Z0-9_-]{6,12}$/; // 비밀번호 검사식
	var re_name = /^[가-힣]{2,5}$/; //한글 2~5자
	var re_tel = /^[0-9]{10,11}$/; // 전화번호 검사식
	var re_mail = /^([\w\.-]+)@([a-z\d\.-]+)\.([a-z\.]{2,6})$/; // 이메일 검사식
	
	var 
		form = $('.form'), 
		uid = $('#uid'), 
		upw = $('#upw'), 
		name = $('#url'), 
		tel = $('#tel'),
		mail = $('#mail'); 
		
	// 선택한 form에 서밋 이벤트가 발생하면 실행한다
	// if (사용자 입력 값이 정규식 검사에 의해 참이 아니면) {포함한 코드를 실행}
	// if 조건절 안의 '정규식.test(검사할값)' 형식은 true 또는 false를 반환한다
	// if 조건절 안의 검사 결과가 '!= true' 참이 아니면 {...} 실행
	// 사용자 입력 값이 참이 아니면 alert을 띄운다
	// 사용자 입력 값이 참이 아니면 오류가 발생한 input으로 포커스를 보낸다
	// 사용자 입력 값이 참이 아니면 form 서밋을 중단한다
	form.submit( function() {
		if (re_id.test(uid.val()) != true) { // 아이디 검사
			alert('[ID 입력 오류] 유효한 ID를 입력해 주세요.');
			uid.focus();
			return false;
		} else if(re_pw.test(upw.val()) != true) { // 비밀번호 검사
			alert('[PW 입력 오류] 유효한 PW를 입력해 주세요.');
			upw.focus();
			return false;
		} else if(re_name.test(name.val()) != true) { // 이름 검사
			alert('[Name 입력 오류]  이름(한글)을 정확히 입력해 주세요.');
			name.focus();
			return false;
		} else if(re_mail.test(mail.val()) != true) { // 이메일 검사
			alert('[Email 입력 오류] 유효한 이메일 주소를 입력해 주세요.');
			mail.focus();
			return false;
		} else if(re_tel.test(tel.val()) != true) { // 전화번호 검사
			alert('[Phone 입력 오류] 유효한 전화번호를 입력해 주세요.');
			tel.focus();
			return false;
		}
	});
	
	// #uid, #upw 인풋에 입력된 값의 길이가 적당한지 알려주려고 한다
	// #uid, #upw 다음 순서에 경고 텍스트 출력을 위한 빈 strong 요소를 추가한다
	// 무턱대고 자바스크립트를 이용해서 HTML 삽입하는 것은 좋지 않은 버릇
	// 그러나 이 경우는 strong 요소가 없어도 누구나 form 핵심 기능을 이용할 수 있으니까 문제 없다
	$('#uid, #upw').after('<strong></strong>');
	
	// #uid 인풋에서 onkeyup 이벤트가 발생하면
	uid.keyup( function() {
		var s = $(this).next('strong'); // strong 요소를 변수에 할당
		if (uid.val().length == 0) { // 입력 값이 없을 때
			s.text(''); // strong 요소에 포함된 문자 지움
		} else if (uid.val().length < 4) { // 입력 값이 4보다 작을 때
			s.text('너무 짧아요.'); // strong 요소에 문자 출력
		} else if (uid.val().length > 12) { // 입력 값이 12보다 클 때
			s.text('너무 길어요.'); // strong 요소에 문자 출력
		} else { // 입력 값이 3 이상 16 이하일 때
			s.text('적당해요.'); // strong 요소에 문자 출력
		}
	});
	
	// #upw 인풋에서 onkeyup 이벤트가 발생하면
	upw.keyup( function() {
		var s = $(this).next('strong'); // strong 요소를 변수에 할당
		if (upw.val().length == 0) { // 입력 값이 없을 때
			s.text(''); // strong 요소에 포함된 문자 지움
		} else if (upw.val().length < 6) { // 입력 값이 6보다 작을 때
			s.text('너무 짧아요.'); // strong 요소에 문자 출력
		} else if (upw.val().length > 12) { // 입력 값이 12보다 클 때
			s.text('너무 길어요.'); // strong 요소에 문자 출력
		} else { // 입력 값이 6 이상 12 이하일 때
			s.text('적당해요.'); // strong 요소에 문자 출력
		}
	});
	
	// #tel 인풋에 onkeydown 이벤트가 발생하면
	// 하이픈(-) 키가 눌렸는지 확인
	// 하이픈(-) 키가 눌렸다면 입력 중단
	tel.keydown( function() {
		if(event.keyCode==109 || event.keyCode==189) {
			return false;
		}
	});
});
// ]]>
</script>