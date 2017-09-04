<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="travelInsert.do" >
<h2>추가할 여행의 제목을 입력하세요</h2>
   <input type="hidden" name="id" value=${id }>
   <input type= "text" name="travel_name" >
   <input type="submit" value="입력">
   </form>
</body>
</html>