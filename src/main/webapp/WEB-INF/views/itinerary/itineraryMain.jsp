<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<title>Itinerary(여행계획)</title>
<%@ include file="../include/header.jsp" %>		<!-- header travel 포함 -->
</head>
<body>
<%@ include file="../include/menu.jsp" %>		<!-- menu travel 포함 -->

<div class="ui four column grid">
  <div class="column">
    <c:forEach var="iti" items="${list}">
	    <div class="ui card">
		  <div class="image">
		    <img src="http://img.earthtory.com/img/city_images/312/jeju_1425527708.jpg">
		  </div>
		  <div class="content">
		    <a class="header">${iti.title}</a>
		    <div class="meta">
		      <span class="date">${iti.startday}</span>
		    </div>
		    <div class="description">
		      ${iti.email}
		    </div>
		  </div>
		  <div class="extra content">
		    <a>
		      <i class="eye icon"></i>
		      22 views
		    </a>
		  </div>
		</div>
	  </c:forEach>
  </div>
</div>

</body>
</html>