<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<link type="text/css" rel="stylesheet" href="/exam/resources/admin/css/visualize.jQuery.css"/>
	<script type="text/javascript" src="/exam/resources/admin/js/jq.js"></script>
	<script type="text/javascript" src="/exam/resources/admin/js/visualize.jQuery.js"></script>

	<script type="text/javascript" >
		$(function(){
			$('table').visualize({type: 'line'});
		});
	</script>

</head>
<body>
	<header>
		ADMIN
	</header>
	<nav>
		<ul>
			<li><a href="">과목관리</a></li>
			<li><a href="">시험문제관리</a></li>
			<li><a href="">시험출제관리</a></li>
			<li><a href="">학생성적</a></li>
			<li><a href="">공지사항</a></li>
		</ul>
	</nav>
<br />
	<section>
			<table>
				<caption>EXAM RESULT</caption>
				<thead>
					<tr>
						<td></td>
						<th scope="col">ORACLE</th>
						<th scope="col">JAVA</th>
						<th scope="col">DB</th>
						<th scope="col">QUERY</th>
						<th scope="col">asdasd</th>
						<th scope="col">ETC</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">Class 6</th>
						<td>190</td>
						<td>160</td>
						<td>40</td>
						<td>120</td>
						<td>30</td>
						<td>70</td>
					</tr>
					<tr>
						<th scope="row">Class 3</th>
						<td>3</td>
						<td>40</td>
						<td>30</td>
						<td>45</td>
						<td>35</td>
						<td>49</td>
					</tr>
				</tbody>
			</table>
	</section>



</body>
</html>