<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../include/headerTravel.jsp"%>
</head>

<body>

<div class="main ui container">

      <div class="ui segment" id="example1">
        <div class="left ui rail">
          <img class="ui wireframe paragraph image" src="https://semantic-ui.com/images/wireframe/image.png">
          <img class="ui wireframe paragraph image" src="https://semantic-ui.com/images/wireframe/image.png">
          <img class="ui wireframe paragraph image" src="https://semantic-ui.com/images/wireframe/image.png">
          <div class="ui sticky" style="left: -146px; width: 272px !important; height: 262.531px !important;">
            <h3 class="ui header">Stuck Content</h3>
            <img class="ui wireframe image" src="https://semantic-ui.com/images/wireframe/image.png">
          </div>
        </div>
        <div class="right ui rail">
          <div class="ui sticky" style="left: 936px; width: 272px !important; height: 262.531px !important;">
            <h3 class="ui header">Stuck Content</h3>
            <img class="ui wireframe image" src="https://semantic-ui.com/images/wireframe/image.png">
          </div>
        </div>
        <img class="ui wireframe paragraph image" src="https://semantic-ui.com/images/wireframe/image.png">
        <img class="ui wireframe paragraph image" src="https://semantic-ui.com/images/wireframe/image.png">
        <img class="ui wireframe paragraph image" src="https://semantic-ui.com/images/wireframe/image.png">
        <img class="ui wireframe paragraph image" src="https://semantic-ui.com/images/wireframe/image.png">
        <img class="ui wireframe paragraph image" src="https://semantic-ui.com/images/wireframe/image.png">
        <img class="ui wireframe paragraph image" src="https://semantic-ui.com/images/wireframe/image.png">
        <img class="ui wireframe paragraph image" src="https://semantic-ui.com/images/wireframe/image.png">
        <img class="ui wireframe paragraph image" src="https://semantic-ui.com/images/wireframe/image.png">
        <img class="ui wireframe paragraph image" src="https://semantic-ui.com/images/wireframe/image.png">
      </div>
      </div>

<script>
$('.ui.sticky')
.sticky({
  context: '#example1'
})
;
</script>
</body>
</html>