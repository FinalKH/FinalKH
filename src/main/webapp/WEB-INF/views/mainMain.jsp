<%@ page language="java" contentType="text/html; charset=UTF-8"
<<<<<<< HEAD
	pageEncoding="UTF-8"%>
=======
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
>>>>>>> fuckingsitt
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<<<<<<< HEAD
<script type="text/javascript"
	src="http://code.jquery.com/jquery-2.1.0.min.js"></script>
<script type="text/javascript">
	$(function() {
		$('.hello').animate({
			left : 1400,
			top : 500
		}, 500);
	});
</script>
=======
<script type="text/javascript" src="http://code.jquery.com/jquery-2.1.0.min.js" ></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.js"></script>
<script src="http://malsup.github.io/jquery.cycle2.js"></script>
>>>>>>> fuckingsitt
<style>
.fileDrop {
	width: 600px;
	height: 200px;
	border: 1px dotted blue;
}

small {
	margin-left: 3px;
	font-weight: bold;
	color: gray;
}
</style>
<style>
/* reset.css */
<<<<<<< HEAD
html, body {
	width: 100%;
	height: 100%;
}

body, div, dl, dt, dd, ul, li, ol, h1, h2, h3, h4, h5, h6, pre, form,
	fieldset, input, textarea, p, blockquote, th, td, table {
	margin: 0;
	padding: 0;
}
=======
html,body{width:100%;height:100%;}
body,div,dl,dt,dd,ul,li,ol,h1,h2,h3,h4,h5,h6,pre,form,fieldset,input,textarea,p,blockquote,th,td,table{margin:0;padding:0;}
table{border-collapse:collapse;}
img,fieldset{border:none;}
address,caption,cite,code,em,strong,th{font-style:normal;font-weight:normal;}
ol,ul{list-style:none;}
caption,th{text-align:left;}
h1,h2,h3,h4,h5,h6{font-weight:normal;font-size:100%;}
q:after,q:before{content:"";}/* 인용표시 없애기 */
abbr,acronym{border:none;}
img,li,input{vertical-align:middle;}/*버티컬 얼라인 기본값은 바톰.*/
hr{display:none;}
>>>>>>> fuckingsitt

table {
	border-collapse: collapse;
}

img, fieldset {
	border: none;
}

address, caption, cite, code, em, strong, th {
	font-style: normal;
	font-weight: normal;
}

ol, ul {
	list-style: none;
}

<<<<<<< HEAD
caption, th {
	text-align: left;
}
=======
#article1, #article2{padding-left:150px;}
#article1{padding-top:100px;}
#article1{padding-bottom:70px;}
.logo{padding-left:50px;}
>>>>>>> fuckingsitt

h1, h2, h3, h4, h5, h6 {
	font-weight: normal;
	font-size: 100%;
}

q:after, q:before {
	content: "";
} /* 인용표시 없애기 */
abbr, acronym {
	border: none;
}

img, li, input {
	vertical-align: middle;
} /*버티컬 얼라인 기본값은 바톰.*/
hr {
	display: none;
}

#wrap {
	width: 1400px;
	margin: 0 auto;
}

#article1, #article2 {
	padding-left: 150px;
}

#article1 {
	padding-top: 50px;
}

#article1 {
	padding-bottom: 100px;
}

.logo {
	padding-left: 50px;
}

<<<<<<< HEAD
#footer {
	width: 100%;
	height: 110px;
	margin-top: 120px;
	float: left;
	border-top: 2px solid gray;
	font-size: 15px;
	padding-bottom: 100px;
=======
.center {
	text-align: center;
}
.cycle-slideshow, .cycle-slideshow * {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}
.cycle-slideshow {
	width: 45%;
	min-width: 200px;
	max-width: 500px;
	margin: 10px auto;
	padding: 0;
	position: relative;
	background: url(http://malsup.github.com/images/spinner.gif) 50% 50%
		no-repeat;
}
 .cycle-slideshow img {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	padding: 0;
	display: block;
>>>>>>> fuckingsitt
}

.info {
	position: absolute;
	padding-left: 250px;
	padding-top: 10px;
	position: relative;
	right: 50px;
}

.info li {
	float: left;
	padding-right: 20px;
}

.addres strong {
	font-size: 20px;
	font-weight: bold;
}
</style>
</head>
<<<<<<< HEAD
<body>
	<%@ include file="include/menuTravel.jsp"%>
	<div id="wrap">


		<jsp:include page="include/headerMain.jsp" />




		<div id="section">
			<div id="article1">
				<h2>국내 여행지</h2>
				<a href="#"><img class="hello" src="" width="500px"
					height="500px" /></a>
			</div>
			<!-- //article1 -->

			<div id="article2">
				<h2>추천 여행지</h2>
				<a href="#"><img
					src="http://cfile21.uf.tistory.com/image/264E2A3555AC9BF80D7AB4" /></a>
			</div>
			<!-- //article2 -->

		</div>



		<div
			class="ui fluid middle aligned divided big animated selection menu list"
			id="contentInMap"
			style="height: 150px; overflow-y: auto; overflow-x: auto; padding: 0px;">
			<!-- 업로드된 파일 목록 -->
			<!-- <div class="uploadedList"></div> -->
		</div>
		<div
			class="ui fluid middle aligned divided big animated selection menu list"
			id="contentInMap"
			style="height: 150px; overflow-y: auto; overflow-x: auto; padding: 0px;">
			<!-- form data가 이곳으로 이동 -->
			
			<iframe name="iframePhoto"></iframe>
		</div>


		<div class="ui inverted blue segment">
			<div class="div" contentEditable="true">
				타이핑 가능
				<div class="uploadedList" contentEditable="true"></div>
			</div>
		</div>

		<jsp:include page="include/footerMain.jsp" />



	</div>
	<div class="ui fluid orange button"
		onclick="location.href='javascript:imgForm()'">이미지 넣기</div>
	<div class="ui basic imgForm modal"
		style="width: 450px; text-align: center; margin-left: -250px;">
		<div class="login column">
			<h2 class="ui blue header">
				<div class="content">이미지 입력</div>
			</h2>
			<!-- //section -->
			<!-- enctype="multipart/form-data" 파일업로드 필수 옵션 -->
			<!-- application/x-www-form-urlencoded 기본옵션 -->
			<!-- target을 지정한 곳으로 form data가 이동 -->
			<form class="ui form" id="form1" target="iframePhoto"
				action="${path}/upload/uploadForm" method="post"
				enctype="multipart/form-data">
				<input type="file" name="file"> <input type="submit"
					value="업로드">
			</form>
			<h2>AJAX File Upload</h2>
			<!-- 파일을 업로드할 영역 -->
			<div class="fileDrop"></div>
		</div>
	</div>


	<!-- //wrap -->
	<script>
		$(document)
				.ready(
						function() {

							// 1. 드래그 영역 기본 효과(바로보기)를 제한
							$(".fileDrop").on("dragenter dragover",
									function(event) {
										event.preventDefault(); // 기본효과를 제한
									});

							// 2. 파일 업로드
							// event : jQuery 이벤트, originalEvent : javascript 이벤트
							$(".fileDrop")
									.on(
											"drop",
											function(event) {
												event.preventDefault(); // 기본효과를 제한
												// 드래그된 파일의 정보
												var files = event.originalEvent.dataTransfer.files;
												// 첫번째 파일
												var file = files[0];
												// 콘솔에서 파일정보 확인
												console.log(file);
												// ajax로 전달할 폼 객체
												var formData = new FormData();
												// 폼 객체에 파일추가, append("변수명", 값)
												formData.append("file", file);

												$
														.ajax({
															type : "post",
															url : "${path}/upload/uploadAjax",
															data : formData,
															dataType : "text",
															// processData: true=> get방식, false => post방식
															processData : false,
															// contentType: true => application/x-www-form-urlencoded, 기본옵션
															//				false => multipart/form-data, 멀티파트
															contentType : false,
															success : function(
																	data) {
																//alert(data);

																console
																		.log(data);
																var str = "";

																// 이미지파일이면 썸네일 이미지 출력
																if (checkImageType(data)) {
																	str = "<div class='item'><div><a href='${path}/upload/displayFile?fileName="
																			+ getImageLink(data)
																			+ "'>";
																	str += "<img src='${path}/upload/displayFile?fileName="
																			+ data
																			+ "'></a></div>";
																	// 이미지 파일이 아니면 다운로드

																} else {
																	str = "<div><a href='${path}/upload/displayFile?fileName="
																			+ data
																			+ "'>"
																			+ getOriginalName(data)
																			+ "</a>";
																}

																str += "<span data-src="+data+">[삭제]</span></div></div>";
																$(
																		".uploadedList")
																		.append(
																				str);
															}
														});
											});

							// 2. 파일 삭제
							// 태그.on("이벤트", "자손태그", "이벤트핸들러")
							$(".uploadedList")
									.on(
											"click",
											"span",
											function(event) {
												alert("이미지 삭제")
												var that = $(this); // 여기서 this는 클릭한 span태그
												$
														.ajax({
															url : "${path}/upload/deleteFile",
															type : "post",
															// data: "fileName="+$(this).attr("date-src") = {fileName:$(this).attr("data-src")}
															// 태그.attr("속성")
															data : {
																fileName : $(
																		this)
																		.attr(
																				"data-src")
															}, // json방식
															dataType : "text",
															success : function(
																	result) {
																if (result == "deleted") {
																	// 클릭한 span태그가 속한 div를 제거
																	that
																			.parent(
																					"div")
																			.remove();
																}
															}
														});
											});

						});

		/* ifream에 업로드결과를 출력 후 form에 저장된 데이터 초기화 */
		function addFilePath(msg) {
			console.log(msg); // 파일명 콘솔 출력
			document.getElementById("form1").reset(); // ifream에 업로드결과를 출력 후 form에 저장된 데이터 초기화
		}

		// 원본파일이름
		function getOriginalName(fileName) {
			// 이미지 파일이면
			if (checkImageType(fileName)) {
				return; // 함수종료
			}
			// uuid를 제외한 원래 파일 이름을 리턴
			var idx = fileName.indexOf("_") + 1;
			return fileName.substr(idx);
		}

		// 이미지파일 링크
		function getImageLink(fileName) {
			// 이미지파일이 아니면
			if (!checkImageType(fileName)) {
				return; // 함수 종료 
			}
			// 이미지 파일이면
			var front = fileName.substr(0, 12); // 연원일경로 추출
			var end = fileName.substr(14); // s_ 제거
			console.log(front);
			console.log(end);
			return front + end;
		}

		// 이미지파일 형식 체크
		function checkImageType(fileName) {
			// i : ignore case(대소문자 무관)
			var pattern = /jpg|gif|png|jpeg/i; // 정규표현식
			return fileName.match(pattern); // 규칙이 맞으면 true
		}

		function imgForm() {
			$('.ui.imgForm.modal').modal({
				onHide : function() {

				}
			}).modal('show');
		}
	</script>

=======
<%@ include file="include/headerTravel.jsp"%>
<body >
	<%@ include file="include/menuTravel.jsp"%>
	<div id="wrap">
		<div id="section">
			<div id="article1" >
				<h2 class="center">국내 여행지</h2>
				
				<div class="cycle-slideshow" 
					data-cycle-fx="scrollHorz"
					data-cycle-timeout="0"
					data-cycle-prev="#prev"
					data-cycle-next="#next">
			
					<c:forEach var="list" items = "${list}">
						<img src="${list.areaimage}" width="250px" heigth="250px"/>
					</c:forEach>
			
				</div>
				<div class="center">
					<a href="#" id="prev">&lt;&lt;</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#" id="next">&gt;&gt;</a>
				</div>
				
				
				
				
			</div><!-- //article1 -->
			
			<div id="article2">
				<h2 class="center">추천 여행지</h2>
				
				<div class="cycle-slideshow" 
					data-cycle-fx="scrollHorz"
					data-cycle-timeout="0"
					data-cycle-prev="#prev2"
					data-cycle-next="#next2">
			
					<c:forEach var="list" items = "${list}">
						<img src="${list.areaimage}" width="250px" heigth="250px"/>
					</c:forEach>
			
				</div>
				<div class="center">
					<a href="#" id="prev2">&lt;&lt;</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#" id="next2">&gt;&gt;</a>
				</div>

			</div><!-- //article2 -->
		
		</div><!-- //section -->
		

		<%@include file="include/footerMain.jsp" %>

		
	</div><!-- //wrap -->
>>>>>>> fuckingsitt
</body>
</html>