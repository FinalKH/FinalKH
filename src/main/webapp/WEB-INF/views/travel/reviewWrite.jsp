<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<!-- Full Calendar -->
<!-- <link rel='stylesheet' type='text/css'
	href='http://arshaw.com/js/fullcalendar-1.6.3/fullcalendar/fullcalendar.css' />
<script type='text/javascript'
	src='http://arshaw.com/js/fullcalendar-1.6.3/jquery/jquery-1.10.2.min.js'></script>
<script type='text/javascript'
	src='http://arshaw.com/js/fullcalendar-1.6.3/jquery/jquery-ui-1.10.3.custom.min.js'></script>
<script type='text/javascript'
	src='http://arshaw.com/js/fullcalendar-1.6.3/fullcalendar/fullcalendar.min.js'></script> -->
<!-- include summernote libraries(jQuery, bootstrap) -->
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css"
	rel="stylesheet">
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.js"></script>
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
<!-- include summernote css/js-->
<link
	href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.1/summernote.css"
	rel="stylesheet">
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.1/summernote.js"></script>
	<!-- JSTL 사용 설정 -->
<%--@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"--%>
<%--@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"--%>
<%--@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"--%>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></scrpit> -->
<%-- <script src="<c:url value='/include/js/common.js'/>" charset="utf-8"></script> --%>
<script type="text/javascript">
    /* $(document).ready(function(){
        $("#ibt").click(function(){
        	var subject = $("#subject").val();
        	var content = $("#content").val(); 
        	//데이터전송
        	document.form.submit();
        });
    }); */
</script>
</head>
<body>
	<div>
		<%--@ include file="../include/headerTravel.jsp"--%>
		<%--@ include file="../include/menuTravel.jsp"--%>
	</div>
	<header>
	<div class="ui fluid container">
		<div class="ui purple segment">
			<p><%@ include file="../include/headerMain.jsp"%></p>
		</div>
	</div>
	</header>
	<section>
	<div class="ui fluid container">
		<div class="ui grid">
			<div class="sixteen wide purple column"></div>
			<div class="four wide blue column">
				<div class="ui left inverted segment">일정 만들기</div>
			</div><!-- 일정 -->
			<div class="twelve wide red column">
				<div class="ui segment">
					<form name="form" method="post" action="${path}reviewInsert.do">
						<div class="ui fluid input">
							<input type="text" name="subject" id="subject" placeholder="제목을 입력하세요." />
						</div>
						<div class="field">
						<textarea name="content" id="content" ></textarea>
				
						</div>
					<div  align="center">
						<button type="submit" id="ibt" class="ui button" >확인</button>
						<button type="reset" class="ui button" >취소</button>
					</div>
					</form>
			<script type="text/javascript">
			//form의 textarea에 summernote 적용 
			$(document).ready(function() {
				$('#content').summernote({
					height:600,
					width:400,
					//fontNames : [ '맑은고딕', 'Arial', 'Arial Black', 'Comic Sans MS', 'Courier New' ],
					//fontNamesIgnoreCheck : [ '맑은고딕' ],
					focus: true ,
					callbacks: {
				          onImageUpload: function(files, editor, welEditable) {
				            /* for (var i = files.length - 1; i >= 0; i--) {
				              sendFile(files[i], this);
				            } */				            
				            sendFile(files[0], this);
				          }
				        }
				});
				
			function sendFile(file, el) {
			     var form_data = new FormData();
			      form_data.append('file', file);
				      $.ajax({
				        data: form_data,
				        //dataType: "text",
				        type: "POST",
				        url://'${path}/upload/uploadAjax', 
				        	'${path}image',
				        cache: false,
				        contentType: false,
				        enctype: 'multipart/form-data',
				        processData: false,
				        success: function(url) {
				        	console.log('file : '+file);
				        	console.log('url : '+url);
				        	//editor.insertImage(welEditable, data.url);
				        	//$(el).summernote('editor.insertImage', url);
				        	/* var str = "";
							// 이미지파일이면 썸네일 이미지 출력
							if(checkImageType(data)){ 
								str = "<div><a href='${path}/upload/displayFile?fileName="+getImageLink(data)+"'>";
								str += "<img src='${path}/upload/displayFile?fileName="+data+"'></a>";
							// 이미지 파일이 아니면 다운로드
							} else { 
								str = "<div><a href='${path}/upload/displayFile?fileName="+data+"'>"+getOriginalName(data)+"</a>";	
							}
								str += "<span data-src="+data+">[삭제]</span></div>";
							$(".uploadedList").append(str); */
			        }
				})
			}
			});
			
			</script>
				</div><!-- segment -->
			</div><!-- 후기작성 -->
		</div><!-- grid -->
	</div><!-- ui container --> 
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