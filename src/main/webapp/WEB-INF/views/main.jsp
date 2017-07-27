<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
	<title>프로젝트 메인 페이지</title>
<%@ include file="include/headerTravel.jsp" %>
<%@ include file="../views/include/header.jsp" %>
</head>
<body>
<%@ include file="include/menuTravel.jsp" %>

<i class="hourglass end icon"></i>프로젝트의 메인 페이지 입니다!
<h2>아무말 대잔치</h2>
	<c:if test="${msg == 'success'}">
    <h2>${sessionScope.userid}(${sessionScope.email})님 환영합니다.</h2>
    </c:if>
<!-- DIMMER 처리된 회원가입 페이지  -->
<div class="ui container">
	<div class="ui smaill basic loginForm modal">
		<div class="content">
			<%@ include file="../views/include/include-loginForm.jsp"%>
		</div>
	</div>
</div>
<script>
function loginForm() {
	$('.ui.loginForm.modal').modal('show');
}
</script>
<c:if test="${msg =='failure' }">
	<script>$('.ui.loginForm.modal').modal('show');
	alert("It is wrong about your E-mail or Password");
	</script>
	
</c:if>
</body>
</html>
