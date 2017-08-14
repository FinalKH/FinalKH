<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>후 기</title>
<!-- Semantic Ui  -->
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.2.11/semantic.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.2.11/semantic.min.js"></script>
<!-- Full Calendar -->
<link rel='stylesheet' type='text/css'
	href='http://arshaw.com/js/fullcalendar-1.6.3/fullcalendar/fullcalendar.css' />
<script type='text/javascript'
	src='http://arshaw.com/js/fullcalendar-1.6.3/jquery/jquery-1.10.2.min.js'></script>
<script type='text/javascript'
	src='http://arshaw.com/js/fullcalendar-1.6.3/jquery/jquery-ui-1.10.3.custom.min.js'></script>
<script type='text/javascript'
	src='http://arshaw.com/js/fullcalendar-1.6.3/fullcalendar/fullcalendar.min.js'></script>
<script>
	$(document).ready(function(){
		$("#wbt").click(function(){
			// 페이지 주소 변경(이동)
			location.href = "${path}/reviewWrite.do";
		});
	});
	// 원하는 페이지로 이동시 검색조건, 키워드 값을 유지하기 위해 
	function list(page){
		location.href="${path}/reviewList.do?curPage="+page+"&searchOption-${map.searchOption}"+"&keyword=${map.keyword}";
	}
</script>
<style>
#tno {
	width: 15px;
}

#tw, #tlast {
	width: 60px;
}

#tr {
	width: 25px;
}

table th {
	font-size: 12px;
}
</style>
</head>
<body>
	<%@ include file="../include/headerTravel.jsp"%>
	<%@ include file="../include/menuTravel.jsp"%>
	<header>
	<div class="ui fluid container">
		<div class="ui purple segment">
			<p><%@ include file="../include/headerMain.jsp"%></p>
		</div>
	</div>
	</header>
	<section>
	<div class="ui fluid container">
		<div class="ui grid sixteen red wide column">
			<form name="form1" method="post" action="${path}/reviewList.do">
			<div class="ui segment">
				<select name="searchOption">
					<!-- 검색조건을 검색처리후 결과화면에 보여주기위해  c:out 출력태그 사용, 삼항연산자 -->
					<option value="all"
						<c:out value="${map.searchOption == 'all'?'selected':''}"/>>전체</option>
					<option value="user_name"
						<c:out value="${map.searchOption == 'user_name'?'selected':''}"/>>이름</option>
					<option value="content"
						<c:out value="${map.searchOption == 'content'?'selected':''}"/>>내용</option>
					<option value="subject"
						<c:out value="${map.searchOption == 'subject'?'selected':''}"/>>제목</option>
				</select> <input name="keyword" value="${map.keyword}"> <input
					type="submit" value="조회">
				<!-- 로그인한 사용자만 글쓰기 버튼을 활성화 
				<c:if test="${sessionScope.userId != null}">
					<button type="button" id="btnWrite">글쓰기</button>
				</c:if>-->
			</div>
			</form>
			<table class="ui celled table">
			<colgroup>
			<col style="width:30px">
			</colgroup>
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
					<c:forEach var="row" items="${map.list}">
				<c:choose>
			<c:when test="${row.show == 'y'}">
		<!-- show 컬럼이 y일때(삭제X 글) -->
		<tr>		
			<td>${row.bno}</td>
			<!-- 게시글 상세보기 페이지로 이동시 게시글 목록페이지에 있는 검색조건, 키워드, 현재페이지 값을 유지하기 위해 -->
			<td>
				<a href="${path}/travel/view.do?bno=${row.bno}&curPage=${map.reviewPager.curPage}&searchOption=${map.searchOption}&keyword=${map.keyword}">${row.subject} 
					<!-- ** 댓글이 있으면 게시글 이름 옆에 출력하기 -->
					<c:if test="${row.recnt > 0}">
						<span style="color: red;">(${row.recnt})
						</span>
					</c:if>
				</a>
			</td>
			<td>${row.userName}</td>
			<td>
				<!-- 원하는 날짜형식으로 출력하기 위해 fmt태그 사용 -->
				<fmt:formatDate value="${row.regdate}" pattern="yyyy-MM-dd HH:mm:ss"/>
			</td>
			<td>${row.viewcnt}</td>
		</tr>
			</c:when>
			<c:otherwise>
		<!-- show 컬럼이 n일때(삭제된 글) -->
		<tr>
			<td colspan="5" align="left">
				<c:if test="${row.recnt > 0}">
					<a href="${path}/board/view.do?bno=${row.bno}&curPage=${map.boardPager.curPage}&searchOption=${map.searchOption}&keyword=${map.keyword}">삭제된 게시물입니다.
					<!-- ** 댓글이 있으면 게시글 이름 옆에 출력하기 -->
						<span style="color: red;">(${row.recnt})
						</span>
					</a>
				</c:if>
				<c:if test="${row.recnt == 0 }">
					삭제된 게시물입니다.
				</c:if>	
			</td>
		</tr>
			</c:otherwise>
				</c:choose>
				</c:forEach>
				</tbody>
				<tfoot>
					<tr>
						<th width="25" id="writebt" colspan="1">
						<a class="ui button"	id="wbt" href="${path}/reviewWrite.do">글쓰기</a>
						</th>						
						<th colspan="4">
							<div class="ui right floated pagination menu">
							<!-- 처음페이지로 이동 : 현재 페이지가 1보다 크면  [처음]하이퍼링크를 화면에 출력-->
							<c:if test="${map.boardPager.curBlock > 1}">
								<a href="javascript:list('1')">[처음]</a>
							</c:if>
								<!--<a class="icon item"> <i class="left chevron icon"></i></a> <a
									class="item">1</a><a class="item">2</a> <a class="item">3</a><a
									class="item">4</a> <a class="icon item"> <i
									class="right chevron icon"></i>
								</a>-->
							<!-- **하나의 블럭 시작페이지부터 끝페이지까지 반복문 실행 -->
				<c:forEach var="num" begin="${map.boardPager.blockBegin}" end="${map.boardPager.blockEnd}">
					<!-- 현재페이지이면 하이퍼링크 제거 -->
					<c:choose>
						<c:when test="${num == map.boardPager.curPage}">
							<span class="item" style="color: red">${num}</span>&nbsp;
						</c:when>
						<c:otherwise>
							<a class="item" href="javascript:list('${num}')">${num}</a>&nbsp;
						</c:otherwise>
					</c:choose>
				</c:forEach>
				
				<!-- 다음페이지 블록으로 이동 : 현재 페이지 블럭이 전체 페이지 블럭보다 작거나 같으면 [다음]하이퍼링크를 화면에 출력 -->
				<c:if test="${map.boardPager.curBlock <= map.boardPager.totBlock}">
					<a href="javascript:list('${map.boardPager.nextPage}')">[다음]</a>
				</c:if>
				
				<!-- 끝페이지로 이동 : 현재 페이지가 전체 페이지보다 작거나 같으면 [끝]하이퍼링크를 화면에 출력 -->
				<c:if test="${map.boardPager.curPage <= map.boardPager.totPage}">
					<a href="javascript:list('${map.boardPager.totPage}')">[끝]</a>
				</c:if>
							</div>
						</th>
					</tr>
				</tfoot>
			</table>
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