<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>여행 도시 선택하기</title>
<%@ include file="../include/headerTravel.jsp"%>
<style>
body {
	padding: 0em;
}
</style>
</head>
<body>
	<%@ include file="../include/menuTravel.jsp"%>
	<div class="ui fluid container" style="padding: 0em;">
		<div class="ui grid">
			<div class="sixteen wide fluid grey column"
				style="height: 89px; margin: -15px;"></div>
			<div class="three wide fluid red column">
				<div class="ui row">제목, 뒤로가기 동적 생성</div>
				<div class="ui row">지역 대분류</div>
				<div class="ui fluid red list" id="content"
					style="overflow: scroll; margin-right: -14px;">
					<div class="item">
						<div class="right floated content">
							<div class="ui icon button">
								<i class="plus icon"></i>
							</div>
						</div>
						<img class="ui avatar image"
							src="https://semantic-ui.com/images/avatar2/small/rachel.png">
						<div class="content">
							<a class="header">Rachel</a>
							<div class="description">Last seen watching</div>
						</div>
					</div>
				</div>
			</div>
			<div class="thirteen wide fluid blue column">
				<div id="map" style="width: 100%; margin: -14px;"></div>
			</div>
		</div>
	</div>


	<script>
		var map = new naver.maps.Map('map', { /* 네이버 지도 객체 초기 생성 */
			center : new naver.maps.LatLng(37.5013561691, 126.9732511193),
			zoom : 10
		});

		var $window = $(window); /* 윈도우창에 대한 정보를 사용하기 위해 */

		function getMapSize() { /* 윈도우창의 크기를 불러와서  */
			var size = new naver.maps.Size($window.width(),
					$window.height() - 73);
			return size;
		};

		map.setSize(getMapSize()); /* 초기 화면 열었을때 화면 사이즈 만큼 맵도 채우도록 설정 */

		$window.on('resize', function() { /* 화면 사이즈가 바뀔때마다 맵 사이즈 조정 */
			map.setSize(getMapSize());

		});

		$(document).ready(function() {
			resizeContent();

			$(window).resize(function() {
				resizeContent();
			});
		});

		function resizeContent() {
			$height = $(window).height() - 155;
			$('body div#content').height($height);

		}
		
		$(document).ready(function() {
		     jQuery.ajax({
		           type:"GET",
		           url:"http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaCode?ServiceKey=ZhnHJ1fzbYGAO2Xl%2FSg5MHWhMO0GkoIguiXKwi3%2BlAB8OTO1xYkmp0228On6RJ6lgh6Z4%2BLCWnAsnPm0wysTgA%3D%3D&MobileOS=ETC&MobileApp=AppTesting&numOfRows=20&_type=json",	   
		           dataType:"JSON", // 옵션이므로 JSON으로 받을게 아니면 안써도 됨
		           success : function(data) {
		        	   	alert(JSON.stringify(data));
		                alert("성공");
		           },
		           complete : function(data) {
		                alert("완료");
		           },
		           error : function(xhr, status, error) {
		                 alert("에러발생");
		           }
		     });
		});
	</script>
</body>
</html>