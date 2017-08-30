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
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<script type="text/javascript" src="./include/se2/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript" src="./include/se2/photo_uploader/plugin/hp_SE2M_AttachQuickPhoto.js" charset="utf-8"></script>

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
					<form name="form" id="form" method="post" action="${path}reviewInsert.do">
						<div class="ui fluid input">
							<input type="text" name="subject" id="subject" placeholder="제목을 입력하세요." />
						</div>
						<div class="field">
						<textarea name="content" id="textAreaContent" style="width: 700px; height: 400px;"></textarea>
				
						</div>
					<div  align="center">
						<button type="submit" id="ibt" class="ui button" >확인</button>
						<button type="reset" class="ui button" >취소</button>
					</div>
					</form>
					<script type="text/javascript">  
      var obj = [];       
      //스마트에디터 프레임생성
      nhn.husky.EZCreator.createInIFrame({
          oAppRef: obj,
          elPlaceHolder:  "textAreaContent",
          //document.getElementById('content'),
          sSkinURI: "./include/se2/SmartEditor2Skin.html",
          fCreator: "createSEditor2"
      });
     
    //‘저장’ 버튼을 누르는 등 저장을 위한 액션을 했을 때 submitContents가 호출된다고 가정한다.
      function submitContents(elClickedObj) {
          // 에디터의 내용이 textarea에 적용된다.
          oEditors.getById["textAreaContent"].exec("UPDATE_CONTENTS_FIELD", [ ]);
       
          // 에디터의 내용에 대한 값 검증은 이곳에서
          // document.getElementById("textAreaContent").value를 이용해서 처리한다.
        
          try {
              elClickedObj.form.submit();
          } catch(e) {
           
          }
      }
   // textArea에 이미지 첨부
      function pasteHTML(filepath){
          var sHTML = '<img src="<%=request.getContextPath()%>F:/upimg/'+filepath+'">';
          oEditors.getById["textAreaContent"].exec("PASTE_HTML", [sHTML]);
      }
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