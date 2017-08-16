<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- Semantic Ui  -->
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.2.11/semantic.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.2.11/semantic.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<header>
	<div class="ui fluid container">
		<div class="ui purple segment">
			<p><%@ include file="../include/headerMain.jsp"%></p>
		</div>
	</div>
</header>
<section>
	<div class="container">
    <div class="row marketing">
      <div class="col-lg-12">
        <div class="panel panel-default">
	<c:choose>
		<c:when test="${dto.show == 'y'}">
		<!-- show가 y면 -->	
			<!-- 게시물 상세보기 영역 -->
		
          <div class="panel-heading">
            <h3 class="panel-title">${dto.subject}
            </h3>
            <span class="pull-right text-right"><fmt:formatDate value="${dto.regdate}" pattern="yyyy-MM-dd a HH:mm:ss"/> </span>
          </div>
          <div class="panel-body">${dto.content}</div>
        </div>
      
				<div style="width:650px; text-align: center;">
					<!-- 게시물번호를 hidden으로 처리 -->
					<input type="hidden" name="bno" value="${dto.bno}">
				
					<!-- 상세보기 화면에서 게시글 목록화면으로 이동 -->
					<button type="button" id="btnList">목록</button>
				</div>
			
			<!-- 게시물 상세보기 영역 -->	
					
			</c:when>
	</c:choose>
	</div>
    </div>
  </div>
</section>
<footer>
	<div class="ui fluid container">
		<div class="ui purple segment">
			<p><%@ include file="../include/footerMain.jsp"%></p>
		</div>
	</div>
</footer>
</body>
</html>