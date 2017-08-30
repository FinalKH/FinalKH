<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<title>Itinerary(여행계획)</title>
<%@ include file="../include/header.jsp" %>		<!-- header travel 포함 -->
<%@ include file="../include/menuTravel.jsp" %>
  <!-- Standard Meta -->
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

  <!-- Site Properties -->

  <script type="text/javascript" async="" src="https://ssl.google-analytics.com/ga.js"></script><script async="" src="//www.googletagmanager.com/gtm.js?id=GTM-P4TVZ6N"></script><script src="assets/library/jquery.min.js"></script>
  <script src="assets/library/iframe.js"></script>

  <style type="text/css">
    body > .ui.container {
      margin-top: 3em;
    }
    iframe {
      border: none;
      width: calc(100% + 2em);
      margin: 0em -1em;
      height: 300px;
    }
    iframe html {
      overflow: hidden;
    }
    iframe body {
      padding: 0em;
    }

    .ui.container > h1 {
      font-size: 3em;
      text-align: center;
      font-weight: normal;
    }
    .ui.container > h2.dividing.header {
      font-size: 2em;
      font-weight: normal;
      margin: 2em 0em 5em;
    }
	.column {
	  margin-top: 8em;
	}

    .ui.table {
      table-layout: fixed;
    }
  </style>
</head>
<body>
<div class="ui itinerary container">
  <h1 align="center">인기 여행일정</h1>
  <h2 class="ui dividing header" align="center">다른 여행자들의 일정을 참고해 나만의 여행을 계획해보세요!</h2>
  <div class="ui four column very relaxed grid">
	<c:forEach var="iti" items="${list}">
	  <div class="column">
		<div class="ui link cards">
		  <div class="card">
		  	<span class="right top">
		  	  ${iti.planMainNum }
		  	</span>
			<div class="image">
			  <img src="http://mw2.google.com/mw-panoramio/photos/medium/40704282.jpg">
			</div>
			<div class="content">
			  <a class="header">${iti.title}</a>
			  <div class="meta">
				<span class="date">
			  	  대구
				</span>
			  </div>
				<div class="description">
				작성자 : ${iti.userId} ${iti.planMainNum }
			  </div>
			</div>
			<div class="extra content">
			  
			  <span class="right floated">
        		<fmt:formatDate value="${iti.startDay}" pattern="yyyy.MM.dd" />
    		  </span>
			  <span>
				<i class="eye icon"></i>
				22 views
			  </span>
			</div>
		  </div>
		</div>
	  </div>
	</c:forEach>
  </div>
</div>

</body>
</html>