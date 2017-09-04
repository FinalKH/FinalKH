<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/menuTravel.jsp" %>
<%@ include file="../include/header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../include/headerTravel.jsp" %>
<%@ include file="../include/header.jsp" %>
<style>
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




#section{padding-top:100px;padding-left:800px;}
table{align:center;width:500px;height:500px;margin-left:50px;}
td{font-size:20px; }
tr{margin-top:10px;}
h2{font-size:50px;}
table td{
	padding-right:50px;
}
table th{
	padding-left:150px;
}
.btn{
	padding-right:125px;
}
</style>
</head>
<body>
	<div id="wrap">
		<jsp:include page="../include/header.jsp" />
		<div id="section">
			
			<form action="#" method="post" name="frm">
				<table>
					<tr>
						<th colspan="2">
							<h2>정보 수정</h2>
							<!-- <label class="ui tag label"><h3>정보 수정</h3></label> -->
						</th>
					</tr>
					<tr>
						<td>이름</td>
						<td><input type="text" name="name" size="20"></td>
					</tr>
					<tr>
						<td>아이디</td>
						<td><input type="text" name="userid" size="20" id="userid">
					</tr>
					<tr>
						<td>암 호</td>
						<td><input type="password" name="pwd" size="20"></td>
					</tr>
					<tr>
						<td width="80">암호 확인</td>
						<td><input type="password" name="pwd_check" size="20"></td>
					</tr>
					<tr>
						<td>이메일</td>
						<td><input type="text" name="email" size="20"></td>
					</tr>
					<tr>
						<td>전화번호</td>
						<td><input type="text" name="phone" size="20"></td>
					</tr>
					<tr>
						<td colspan="2" align="right" class="btn">
							<input type="submit" class="ui button" value="확인" onclick="return joinCheck()"> &nbsp;&nbsp; 
							<input type="reset" class="ui button" value="취소">
						</td>
					</tr>
				</table></form>
			
		</div>
		<!-- section -->
		<%@ include file="../include/footerMain.jsp" %>
	</div>
	<!-- wrap -->
</body>
</html>