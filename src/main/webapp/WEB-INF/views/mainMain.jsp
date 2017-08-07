<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

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

</style>
<script type="text/javascript" src="http://code.jquery.com/jquery-2.1.0.min.js" ></script>
<script type="text/javascript">
$(function(){
  $('.article1').animate({
  	left:200
  },1000);
});
</script>
</head>
<body bgcolor="white">
	<div id="wrap">
	
		<%@include file="include/headerMain.jsp" %>
		
		<div id="section">
			<div id="article1">
				<img src="images/tour.png"/>
			</div><!-- //article1 -->
			
			<div id="article2">
				<img src="images/pop.png"/>
			</div><!-- //article2 -->
		
		</div><!-- //section -->
		
		<%@include file="include/footerMain.jsp" %>
		
	</div><!-- //wrap -->
</body>
</html>