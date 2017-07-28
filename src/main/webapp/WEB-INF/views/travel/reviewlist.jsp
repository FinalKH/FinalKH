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
<style> 
#tno{width:15px;} 
#tw,#tlast{width:60px;} 
#tr{width:25px;} 
table th{font-size:12px;} 
</style> 
</head> 
<body> 
<%@ include file="../include/headerTravel.jsp"%>
<header><%@ include file="../include/menuTravel.jsp"%></header> 
<section> 
    <div class="ui container"> 
        <div class="ui segment"> 
            <table class="ui celled table"> 
                <thead> 
                    <tr> 
                        <th id="tno">No</th> 
                        <th>제목</th> 
                        <th id="tw">글쓴이</th> 
                        <th id="tr">추천</th> 
                        <th id="tlast">조회수</th> 
                    </tr> 
                </thead> 
                <tbody> 
                    <tr> 
                        <td>    First</td> 
                        <td>Cell</td> 
                        <td>Cell</td> 
                        <td>Cell</td> 
                        <td>Cell</td> 
                    </tr> 
                    <tr> 
                        <td>Cell</td> 
                        <td>Cell</td> 
                        <td>Cell</td> 
                        <td>Cell</td> 
                        <td>Cell</td> 
                    </tr> 
                    <tr> 
                        <td>Cell</td> 
                        <td>Cell</td> 
                        <td>Cell</td> 
                        <td>Cell</td> 
                        <td>Cell</td> 
                    </tr> 
                </tbody> 
                <tfoot> 
                    <tr> 
                        <th width="25"> 
                        <a class="item" href="${path}/travel/reviewWrite.do">글쓰기</a>
                        </th> 
                        <th>검색 
                        </th> 
                        <th colspan="3"> 
                            <div class="ui right floated pagination menu"> 
                                <a class="icon item"> <i class="left chevron icon"></i></a>  
                                <a class="item">1</a><a class="item">2</a>  
                                <a class="item">3</a><a class="item">4</a>  
                                <a class="icon item"> <i class="right chevron icon"></i> 
                                </a> 
                            </div> 
                        </th> 
                    </tr> 
                </tfoot> 
            </table> 
        </div><!-- segment --> 
    </div><!-- ui container --> 
</section> 
<footer>Footer</footer> 
</body> 
</html>