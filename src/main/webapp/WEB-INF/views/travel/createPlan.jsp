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
					
					<c:forEach var="row" items="${list}">
					<div class="item">
						<div class="right floated content">
							<div class="ui icon button">
								<i class="plus icon"></i>
							</div>
						</div>
						<div class="center floated content">
							<div class="description">${row.areaName}</div>
						</div>
					</div>
					</c:forEach>



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
				alert(map.getMapSize());
			});
		});

		function resizeContent() {
			$height = $(window).height() - 155;
			$('body div#content').height($height);

		}
		alert()
		$(document).ready(function() {
		     jQuery.ajax({
		           type:"GET",
		           url:"http://",	   
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
		<script>
	<c:forEach var="row1" items="${list}">
			var mapX = "${row1.areaMapX}";
			var mapY = "${row1.areaMapY}";
			new naver.maps.Marker({
		    position: new naver.maps.LatLng(mapY, mapX),
		    map: map
		});
		</c:forEach>		
		var markers = [],
	    infoWindows = [];

	for (var key in MARKER_SPRITE_POSITION) {

	    var position = new naver.maps.LatLng(
	        southWest.lat() + latSpan * Math.random(),
	        southWest.lng() + lngSpan * Math.random());

	    var marker = new naver.maps.Marker({
	        map: map,
	        position: position,
	        title: key,
	        icon: {
	            url: HOME_PATH +'/img/example/sp_pins_spot_v3.png',
	            size: new naver.maps.Size(24, 37),
	            anchor: new naver.maps.Point(12, 37),
	            origin: new naver.maps.Point(MARKER_SPRITE_POSITION[key][0], MARKER_SPRITE_POSITION[key][1])
	        },
	        zIndex: 100
	    });

	    var infoWindow = new naver.maps.InfoWindow({
	        content: '<div style="width:150px;text-align:center;padding:10px;">The Letter is <b>"'+ key.substr(0, 1) +'"</b>.</div>'
	    });

	    markers.push(marker);
	    infoWindows.push(infoWindow);
	};

	naver.maps.Event.addListener(map, 'idle', function() {
	    updateMarkers(map, markers);
	});
		// 해당 마커의 인덱스를 seq라는 클로저 변수로 저장하는 이벤트 핸들러를 반환합니다.
		function getClickHandler(seq) {
		    return function(e) {
		        var marker = markers[seq],
		            infoWindow = infoWindows[seq];

		        if (infoWindow.getMap()) {
		            infoWindow.close();
		        } else {
		            infoWindow.open(map, marker);
		        }
		    }
		}

		for (var i=0, ii=markers.length; i<ii; i++) {
		    naver.maps.Event.addListener(markers[i], 'click', getClickHandler(i));
		}
		
		
		</script>
		

</body>
</html>