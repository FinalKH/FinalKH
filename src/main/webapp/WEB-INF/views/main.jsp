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
<!-- Top Menu (Header) @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@-->
<div class="ui inverted segment">
 <div class="ui inverted secondary  menu">
  <a class="item">의미</a>
  <a class="item">없는</a>
  <a class="item">버튼</a>
  <a class="item">들임</a>
  <a class="item" href="${path}/member/list.do">회원관리</a>
  <div class="right menu">
    <div class="item">
      <div class="ui icon input">
        <input type="text" placeholder="Search...">
        <i class="search link icon"></i>
      </div>
    </div>
    <c:choose>
    	<c:when test="${sessionScope.userid == null}">
    		<button class="ui secondary button" onclick="javascript:loginForm()">로그인</button>
    	</c:when>
    	<c:otherwise>
    		<a class="item" href="#">${sessionScope.userid }님!</a>
    		<a class="item" href="${path}/member/logout_test.do">로그아웃</a>
    	</c:otherwise>
    </c:choose>
    
    
  </div>
 </div>
</div>
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
