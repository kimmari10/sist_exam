<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<link type="text/css" rel="stylesheet" href="/exam/resources/admin/css/reset.css"/>
	<link type="text/css" rel="stylesheet" href="/exam/resources/admin/css/common.css"/>
	<link type="text/css" rel="stylesheet" href="/exam/resources/admin/css/visualize.jQuery.css"/>
	<script type="text/javascript" src="/exam/resources/admin/js/jq.js"></script>
	<script type="text/javascript" src="/exam/resources/admin/js/visualize.jQuery.js"></script>

</head>
<body>

<!-- header -->
<tiles:insertAttribute name="header"/>

<!-- aisde -->
<div id="main_content" class="cf">
	<tiles:insertAttribute name="aside" />
<!-- content -->
<tiles:insertAttribute name="content" />
</div>

<!-- footer -->
<tiles:insertAttribute name="footer" />


</body>
</html>