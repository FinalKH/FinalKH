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
</head>  
<body>  
<%@ include file="../include/headerTravel.jsp"%>
<header><%@ include file="../include/menuTravel.jsp"%></header>  
<section>  
    <div class="ui container" >          
        <div class="ui grid container"> 
            <div class="four wide column"> 
            <div class="ui segment"> 
            일정 
            </div> 
            </div> 
            <div class="twelve wide cloumn"> 
            <div class="ui segment"> 
            <div id="summernote" height="500" ><p>Hello Summernote</p></div>             
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
            </div> 
            </div> 
        </div><!-- grid --> 
    </div><!-- ui container -->  
</section>  
<footer>Footer</footer>  
</body>  
</html>