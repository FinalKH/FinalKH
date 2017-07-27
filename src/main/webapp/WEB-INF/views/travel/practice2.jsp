<!DOCTYPE html>

<html>

<head>

<title>eGovFrame</title>

<meta name="viewport" charset="utf-8"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />


<%@ include file="../include/headerTravel.jsp"%>



<!-- 오픈API 사용 구문 선언 -->

<script type="text/javascript"
	src="http://openapi.map.naver.com/openapi/naverMap.naver?ver=2.0&key=Y8Rh4S_7CD4B0earCnEb"></script>

<script type="text/javascript">

	$(document).ready(

			function() {
				

				// 위도, 경도(네이버 지도에서 건물검색하여 추출)

				var oPoint = new nhn.api.map.LatLng(36.3436470, 127.3853300);

				// 축척 레벨

				var defaultLevel = 11;

				

				// Main Class 생성

				var oMap = new nhn.api.map.Map(document.getElementById('map'), {

					point : oPoint, // 표현되는 지도의 중심 좌표

					zoom : defaultLevel, // 축척 레벨

					enableWheelZoom : true, // 지도 확대/축소 마우스 휠 사용

					enableDragPan : true, // 드래그로 지도 위치 이동

					enableDblClickZoom : false, // 더블 클릭으로 지도 확대

					mapMode : 0, // 지도 모드 (0 : 일반, 1 : 겹침, 2 : 위성)

					activateTrafficMap : false, // 실시간 교통 지도 활성화

					activateBicycleMap : false, // 자전거 지도 활성화

					minMaxLevel : [ 1, 14 ], // 지도의 최소/최대 축척 레벨

					size : new nhn.api.map.Size(400, 300) // 지도의 크기

				});

				

				// 지도 확대/축소 조작바 등록

				var oSlider = new nhn.api.map.ZoomControl();

				oMap.addControl(oSlider);

				oSlider.setPosition({

					top : 10, left : 10

				});

				

				// 지도 모드(일반/위성) 변경 조작 버튼 등록

				var oMapTypeBtn = new nhn.api.map.MapTypeBtn();

				oMap.addControl(oMapTypeBtn);

				oMapTypeBtn.setPosition({

					bottom : 10,

					right : 80

				});

				

				// 마커 등록

				var oSize = new nhn.api.map.Size(28, 37);

				var oOffset = new nhn.api.map.Size(14, 37);

				var oIcon = new nhn.api.map.Icon('https://cdn0.iconfinder.com/data/icons/small-n-flat/24/678111-map-marker-48.png', oSize, oOffset);

// 				var oIcon = new nhn.api.map.Icon(

// 						'http://static.naver.com/maps2/icons/pin_spot2.png',

// 						oSize, oOffset);

				var oLabel = new nhn.api.map.MarkerLabel(); // - 마커 라벨 선언.

				oMap.addOverlay(oLabel); // - 마커 라벨 지도에 추가. 기본은 라벨이 보이지 않는 상태로 추가됨.

				var oMarker = new nhn.api.map.Marker(oIcon, {

					title : '위치'

				});

				oMarker.setPoint(oPoint); // 마커위치

				oMap.addOverlay(oMarker); // 마커 지도에 추가

				oLabel.setVisible(true, oMarker); // 마커 라벨 보여주기

				

				// 실시간 교통 지도 버튼 등록

				var trafficButton = new nhn.api.map.TrafficMapBtn();

				trafficButton.setPosition({

					bottom : 10,

					right : 150

				});

				oMap.addControl(trafficButton);



				// 이벤트 등록 

				oMap.attach('mouseenter', function(oCustomEvent) {

					var oTarget = oCustomEvent.target;

					// 마커위에 마우스 올라간거면

					if (oTarget instanceof nhn.api.map.Marker) {

						var oMarker = oTarget;

						oLabel.setVisible(true, oMarker); // 특정 마커를 지정하여 해당 마커의 title을 보여준다.

					}

				});

				oMap.attach('mouseleave', function(oCustomEvent) {

					var oTarget = oCustomEvent.target;

					// 마커위에서 마우스 나간거면

					if (oTarget instanceof nhn.api.map.Marker) {

						oLabel.setVisible(false);

					}

				});

			});

</script>

</head>



<body>

	<div class="ui-body-c center" id="map"></div>

</body>

</html>
