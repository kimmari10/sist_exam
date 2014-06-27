<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<header id="header">

	<a href="admin">Exam V1.0</a>

	<c:if test="${empty sessionScope.uid }">
		<div class="login"><a href="login">LOGIN</a></div>
	</c:if>
	<c:if test="${not empty sessionScope.uid }">
		<div class="logout"><a href="logoutProc">LOGOUT</a></div>
	</c:if>	
	<div class="join"><a href="join">JOIN</a></div>
	

</header>

