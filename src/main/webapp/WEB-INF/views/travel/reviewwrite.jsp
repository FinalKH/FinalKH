<%@ page language="java" contentType="text/html; charset=UTF-8"  
    pageEncoding="UTF-8"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
<title>Insert title here</title>  
<!-- Semantic Ui  -->  
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.2.11/semantic.min.css">   
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>   
<script   src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.2.11/semantic.min.js"></script>  
<!-- Full Calendar -->  
<link rel='stylesheet' type='text/css' href='http://arshaw.com/js/fullcalendar-1.6.3/fullcalendar/fullcalendar.css' />  
<script type='text/javascript' src='http://arshaw.com/js/fullcalendar-1.6.3/jquery/jquery-1.10.2.min.js'></script>  
<script type='text/javascript' src='http://arshaw.com/js/fullcalendar-1.6.3/jquery/jquery-ui-1.10.3.custom.min.js'></script>  
<script type='text/javascript' src='http://arshaw.com/js/fullcalendar-1.6.3/fullcalendar/fullcalendar.min.js'></script>  
<!-- include summernote libraries(jQuery, bootstrap) --> 
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet"> 
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.js"></script>  
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>  
<!-- include summernote css/js--> 
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.1/summernote.css" rel="stylesheet"> 
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.1/summernote.js"></script> 
<script>
	<%-- form의 textarea에 summernote 적용 --%>
	$(document).ready(function() {
		$('#rcontent').summernote({
			height: 600,
			fontNames : [ '맑은고딕', 'Arial', 'Arial Black', 'Comic Sans MS', 'Courier New', ],
			fontNamesIgnoreCheck : [ '맑은고딕' ],
			focus: true
		});
	});
</script>
</head>  
<body>  
<%@ include file="../include/headerTravel.jsp"%>
<header><%@ include file="../include/menuTravel.jsp"%>
	<div class="ui fluid container">
		<div class="ui purple inverted segment">
			<p>헤더 정보 공간</p>

		</div>
	</div>
</header>  
<section>  
    <div class="ui container" >          
        <div class="ui grid container"> 
            <div class="four wide column"> 
            <div class="ui inverted segment">
          	일정 만들기 
            </div> 
            </div> 
            <div class="twelve wide cloumn"> 
<<<<<<< HEAD
            <div class="ui inverted segment"> 
	            <form action="#">	            
	            <input type="text" name="rsubject" class="ui input" placeholder="제목을 입력하세요." />	            
	            <textarea id="rcontent">Hello Summernote</textarea>
	            <div align="center">
	            <input type="submit" value="확인" class="ui button" />
	            <input type="reset" value="취소" class="ui button" />
	            </div>
	            </form>
=======
            <div class="ui segment"> 
            <div id="summernote" style="height:500" ><p>Hello Summernote</p></div>             
                <script> 
                   $(document).ready(function() { 
                       $('#summernote').summernote(); 
                   }); 
                </script> 
                <button class="mini ui secondary button"> 
                  Okay 
                </button> 
                <button class="mini ui button"> 
                  Cancel 
                </button> 
>>>>>>> 2513d6a35489c198aa75e2cc3ffbce1af3f435cb
            </div> 
            </div> 
        </div><!-- grid --> 
    </div><!-- ui container -->  
</section>  
<footer>Footer</footer>  
</body>  
</html>