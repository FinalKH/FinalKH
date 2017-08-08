<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-2.1.0.min.js" ></script>
<script type="text/javascript">
$(function(){
  $('.hello').animate({left:1400,top:500},500);
});
</script>
<style>
/* reset.css */
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
#skipNavi,.hidden{position:absolute;left:0;top:0;width:0;height:0;font-size:0;line-height:0;text-indent:-9999px;overflow:hidden;visibility:hidden;}




#wrap{width:1400px;margin:0 auto;}

#article1, #article2{padding-left:150px;}
#article1{padding-top:50px;}
#article1{padding-bottom:100px;}
.logo{padding-left:50px;}

#footer{width:100%; height:110px; margin-top:120px; float:left; border-top:2px solid gray; font-size: 15px;padding-bottom:100px;}
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
<body >
	<div id="wrap">
	
	
		<jsp:include page="include/headerMain.jsp"/>
		
		
		
		
		<div id="section">
			<div id="article1" >
				<h2>국내 여행지</h2>
				<a href="#"><img class="hello" src="" width="500px" heigth="500px"/></a>
			</div><!-- //article1 -->
			
			<div id="article2">
				<h2>추천 여행지</h2>
				<a href="#"><img src="http://cfile21.uf.tistory.com/image/264E2A3555AC9BF80D7AB4"/></a>
			</div><!-- //article2 -->
		
		</div><!-- //section -->
		
		
		<jsp:include page="include/footerMain.jsp"/>
		
	</div><!-- //wrap -->
</body>
</html>