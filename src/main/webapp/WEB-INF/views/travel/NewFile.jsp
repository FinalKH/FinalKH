<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<title>네이버 지도 API - 주소로 지도 표시하기</title>
<script type="text/javascript"
	src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=c1l6PVMKG55WwxBmbjYv&submodules=geocoder"></script>
<style>
#wrap {
	width: 1280px;
	margin: 0 auto;
	border: 2px solid #6c6451;
}

#left_background {
	background-color: #c4a27f;
	height: 25px;
	width: 1280px;
	float: left;
	text-align: right;
}

#left_background label {
	color: white;
	padding-right: 385px;
}

#map {
	height: 1083px;
	width: 890px;
	float: left;
	border-right: 1px solid #282a25;
}

#search_result {
	width: 375px;
	height: 1083px;
	display: inline-block;
}

#search_result h3 {
	padding-left: 40px;
	color: #282a25
}

.position_search {
	padding-left: 40px;
	border-bottom: 1px solid #ededef;
}

.lsnx a:link {
	text-decoration: none;
}

.lsnx a:visited {
	color: black;
}

.nclicks {
	list-style: none;
	float: left;
	border-bottom: 1px solid #ededef;
}

.nclicks1 {
	display: flex;
}

.nclicks1 a {
	padding-left: 10px;
}

.addr {
	width: 235px;
}

.tel {
	float: left;
	width: 320px;
}

.thumb_nclicks {
	float: right;
}

.bttn-fill {
	margin: 0;
	padding: 0;
	border-width: 0;
	border: 1px solid #ECF7FB;
	background: transparent;
	font-weight: 400;
	cursor: pointer;
	position: relative;
	font-size: 12px;
	font-family: inherit;
	padding: 3px 12px;
	z-index: 0;
	background: #fff;
	color: #282A25;
	-webkit-transition: all 0.3s cubic-bezier(0.02, 0.01, 0.47, 1);
	transition: all 0.3s cubic-bezier(0.02, 0.01, 0.47, 1);
}

.bttn-fill:before {
	position: absolute;
	bottom: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: #c4a27f;
	content: '';
	opacity: 0;
	-webkit-transition: opacity 0.15s ease-out, -webkit-transform 0.15s
		ease-out;
	transition: opacity 0.15s ease-out, -webkit-transform 0.15s ease-out;
	transition: transform 0.15s ease-out, opacity 0.15s ease-out;
	transition: transform 0.15s ease-out, opacity 0.15s ease-out,
		-webkit-transform 0.15s ease-out;
	z-index: -1;
	-webkit-transform: scaleX(0);
	transform: scaleX(0);
}

.bttn-fill:hover, .bttn-fill:focus {
	box-shadow: 0 1px 8px rgba(58, 51, 53, 0.3);
	color: #fff;
	-webkit-transition: all 0.5s cubic-bezier(0.02, 0.01, 0.47, 1);
	transition: all 0.5s cubic-bezier(0.02, 0.01, 0.47, 1);
}

.bttn-fill:hover:before, .bttn-fill:focus:before {
	opacity: 1;
	-webkit-transition: opacity 0.2s ease-in, -webkit-transform 0.2s ease-in;
	transition: opacity 0.2s ease-in, -webkit-transform 0.2s ease-in;
	transition: transform 0.2s ease-in, opacity 0.2s ease-in;
	transition: transform 0.2s ease-in, opacity 0.2s ease-in,
		-webkit-transform 0.2s ease-in;
	-webkit-transform: scaleX(1);
	transform: scaleX(1);
}

.bttn-fill.bttn-xs {
	padding: 3px 8px;
	font-size: 12px;
	font-family: inherit;
}

.bttn-fill.bttn-xs:hover, .bttn-fill.bttn-xs:focus {
	box-shadow: 0 1px 4px rgba(58, 51, 53, 0.3);
}

.bttn-fill.bttn-sm {
	padding: 4px 10px;
	font-size: 16px;
	font-family: inherit;
}

.bttn-fill.bttn-sm:hover, .bttn-fill.bttn-sm:focus {
	box-shadow: 0 1px 6px rgba(58, 51, 53, 0.3);
}

.bttn-fill.bttn-md {
	font-size: 20px;
	font-family: inherit;
	padding: 5px 12px;
}

.bttn-fill.bttn-md:hover, .bttn-fill.bttn-md:focus {
	box-shadow: 0 1px 8px rgba(58, 51, 53, 0.3);
}

.bttn-fill.bttn-lg {
	padding: 8px 15px;
	font-size: 24px;
	font-family: inherit;
}

.bttn-fill.bttn-lg:hover, .bttn-fill.bttn-lg:focus {
	box-shadow: 0 1px 10px rgba(58, 51, 53, 0.3);
}

.bttn-fill.bttn-default {
	background: #fff;
	color: #1d89ff;
}

.bttn-fill.bttn-default:hover, .bttn-fill.bttn-default:focus {
	color: #fff;
}

.bttn-fill.bttn-default:before {
	background: #1d89ff;
}

.bttn-fill.bttn-primary {
	background: #1d89ff;
	color: #fff;
}

.bttn-fill.bttn-primary:hover, .bttn-fill.bttn-primary:focus {
	color: #1d89ff;
}

.bttn-fill.bttn-primary:before {
	background: #fff;
}

.bttn-fill.bttn-warning {
	background: #feab3a;
	color: #fff;
}

.bttn-fill.bttn-warning:hover, .bttn-fill.bttn-warning:focus {
	color: #feab3a;
}

.bttn-fill.bttn-warning:before {
	background: #fff;
}

.bttn-fill.bttn-danger {
	background: #ff5964;
	color: #fff;
}

.bttn-fill.bttn-danger:hover, .bttn-fill.bttn-danger:focus {
	color: #ff5964;
}

.bttn-fill.bttn-danger:before {
	background: #fff;
}

.bttn-fill.bttn-success {
	background: #28b78d;
	color: #fff;
}

.bttn-fill.bttn-success:hover, .bttn-fill.bttn-success:focus {
	color: #28b78d;
}

.bttn-fill.bttn-success:before {
	background: #fff;
}

.bttn-fill.bttn-royal {
	background: #bd2df5;
	color: #fff;
}

.bttn-fill.bttn-royal:hover, .bttn-fill.bttn-royal:focus {
	color: #bd2df5;
}

.bttn-fill.bttn-royal:before {
	background: #fff;
}
</style>

</head>
<body>
	<div id="wrap">
		<div id="content">
			<div id="left_background">
				<label>${address}</label>
			</div>
			<div id="map"></div>
			<div id="search_result">
				<h3>매장리스트</h3>
				<form id="addser">
					<p class="position_search">
						<input type="text" id="searchaddress" name="address1" size=23 />
						<input type="button" class="bttn-fill" id="submit"
							onclick="gogo()" value="검색"> <input type="button"
							value="내위치로" id="myposition" class="bttn-fill"
							onclick="myplacego()"> <input type="hidden"
							value="${address}" name="myplacename">
						<!-- <button id="myposition" class="bttn-fill" name="myplacename" value="${address}" onclick="myplacego()">내위치로</button> -->
					</p>
				</form>
				<div id="resultreal"></div>
				<%--리스트 불러오는 부분 --%>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		var map = document.getElementById('map'); //네이버 지도 map
		//var position = new naver.maps.LatLng(37.3595704, 127.105399);
		//지도 초기 설정
		map = new naver.maps.Map('map', {
			//center : new naver.maps.LatLng(37.3595704, 127.105399), //지도의 초기 중심 좌표
			zoom : 10, //지도의 초기 줌 레벨
			minZoom : 1, //지도의 최소 줌 레벨
			zoomControl : true, //줌 컨트롤의 표시 여부
			zoomControlOptions : { //줌 컨트롤의 옵션
				position : naver.maps.Position.TOP_LEFT
			},
			mapTypeControl : true,
			mapTypeControlOptions : {
				style : naver.maps.MapTypeControlStyle.BUTTON,
				position : naver.maps.Position.TOP_RIGHT
			}
		});

		var infoWindow = new naver.maps.InfoWindow({
			anchorSkew : true
		//정보 창 말풍선 꼬리의 기울임(skew) 효과 사용 여부 옵션이 변경되면 이벤트가 발생합니다.
		});

		map.setCursor('pointer'); //마우스 오버 시 커서의 모양을 설정하는 CSS cursor 값을 설정합니다.

		//search by tm128 coordinate
		function searchCoordinateToAddress(latlng) {
			var tm128 = naver.maps.TransCoord.fromLatLngToTM128(latlng);

			infoWindow.close();

			naver.maps.Service
					.reverseGeocode(
							// 좌표를 사용하여 주소를 검색하는 reversegeocode API를 호출할 수 있습니다.
							{
								location : tm128, //첫 번째 매개변수로 ServiceOptions 객체에 location 파라미터를 추가한 options를 전달하며, location 옵션은 필수적으로 전달해야합니다.
								//location 파라미터는 검색할 좌표 이며, Coord 객체 또는 CoordLiteral 형태로 전달합니다.
								coordType : naver.maps.Service.CoordType.TM128
							},
							function(status, response) {//서버 API 호출시 전달하는 callback 함수의 첫 번째 매개변수로 Status 값이 전달되며, 이 값을 통해 요청 결과의 성공 및 실패 여부를 확인할 수 있습니다.
								if (status === naver.maps.Service.Status.ERROR) {
									return alert('Something Wrong!');
								}

								var items = response.result.items, htmlAddresses = [];

								for (var i = 0, ii = items.length, item, addrType; i < ii; i++) {
									item = items[i];
									addrType = item.isRoadAddress ? '[도로명 주소]'
											: '[지번 주소]';

									htmlAddresses.push((i + 1) + '. '
											+ addrType + ' ' + item.address);
									htmlAddresses
											.push('&nbsp&nbsp&nbsp -> '
													+ item.point.x + ','
													+ item.point.y);
								}

								infoWindow
										.setContent([
												'<div style="padding:10px;min-width:200px;line-height:150%;">',
												'<h4 style="margin-top:5px;">검색 좌표 : '
														+ response.result.userquery
														+ '</h4><br />',
												htmlAddresses.join('<br />'),
												'</div>' ].join('\n'));

								infoWindow.open(map, latlng);
							});
		}

		// result by latlng coordinate
		var xlocation = 0;
		var ylocation = 0;
		function searchAddressToCoordinate(address) {
			naver.maps.Service
					.geocode(
							// 주소를 사용하여 좌표를 검색하는 geocode API를 호출할 수 있습니다.
							{
								address : address
							//첫 번째 매개변수로 ServiceOptions 객체에 address 파라미터를 추가한 options를 전달하며, address 옵션은 필수적으로 전달해야합니다.
							//address 파라미터는 검색할 주소의 문자열입니다.
							},
							function(status, response) {
								if (status === naver.maps.Service.Status.ERROR) {
									return alert('Something Wrong!');
								}

								var item = response.result.items[0], addrType = item.isRoadAddress ? '[도로명 주소]'
										: '[지번 주소]', point = new naver.maps.Point(
										item.point.x, item.point.y);

								infoWindow
										.setContent([
												'<div style="padding:10px;min-width:200px;line-height:150%;">',
												'<h4 style="margin-top:5px;">검색 주소 : '
														+ response.result.userquery
														+ '</h4><br />',
												addrType + ' ' + item.address
														+ '<br />',
												'&nbsp&nbsp&nbsp -> ' + point.x
														+ ',' + point.y,
												'</div>' ].join('\n'));

								map.setCenter(point);
								infoWindow.open(map, point);

								//좌표값 구하는 부분	
								xlocation = point.x;
								ylocation = point.y;

								var myplace = new naver.maps.LatLng(ylocation,
										xlocation);

								$("#myposition").on("click", function(e) { //내위치로 이동
									map.panTo(myplace);

								});
							});
		}
		//검색했을때 좌표 직어주는 메소드
		function initGeocoder() {
			map.addListener('click', function(e) {
				searchCoordinateToAddress(e.coord);//클릭했을때 좌표
			});

			$('#address').on('keydown', function(e) { //입력된 주소값
				var keyCode = e.which;

				if (keyCode === 13) { // Enter Key
					searchAddressToCoordinate($('#address').val());
				}
			});

			$('#submit').on('click', function(e) { //검색부분 
				e.preventDefault();
				searchAddressToCoordinate($('#searchaddress').val());
				alert("1234");
			});
			var myplace = $('#mylocation a').first().text();
			searchAddressToCoordinate(myplace);//내위치값으로 지정
			// alert("5678");
		}
		naver.maps.onJSContentLoaded = initGeocoder;

		/* $('#submit').on('click', function(e) { //검색부분 
			//return true;
			e.preventDefault();
			searchAddressToCoordinate($('#searchaddress').val());
		});  */
		//이때, 서브모듈 역시 비동기 방식으로 로드됩니다. 따라서, onJSContentLoaded 이벤트 핸들러를 사용합니다. 
		//이 핸들러는 NAVER 지도 API v3 로드 시, 함께 요청한 서브모듈의 JavaScript 콘텐츠가 웹 브라우저에 모두 로드되었을 때 한 번 호출됩니다.
	</script>

	<script>
		function gogo() {
	<%--리스트 불러오는 메소드--%>
		var params = new Object();

			var params = $("#addser").serialize();

			alert(params)

			$
					.ajax({

						url : '../rentArea.do?command=storelist',
						type : 'POST',
						data : params,
						datatype : 'html',

						success : function(result) {
							alert("ef");
							var storelist = $.parseJSON(result);
							//alert(result);
							var ht = '';
							var markerList = [];
							for (i = 0; i < storelist.length; i++) {
								ht += '<ul class="maejang_list">'
								ht += '<li class="nclicks" data-id="#" data-index="1">'
								ht += '<div class="lsnx">'
								ht += '<div class="thumb_nclicks">'
								ht += '<img src='+storelist[i].store_image+'width="80" height="80" alt="상사">'
								ht += '</div>'
								ht += '<dl class="lsnx_detail">'
								ht += '<dt class="nclicks1">'
								ht += '<img src="../image/pins_n_'+i+'.png" width="18" height="28" alt="'+i+'">'
								ht += '<a href="storeMiniHome.jsp" style="text-decoration: none;">'
										+ storelist[i].store_name + '</a>'
								ht += '<a href="#"><img src="../images/star1.png" width="22" height="22" alt="즐겨찾기"></a>'
								ht += '</dt>'
								ht += '<dt class="addr">'
								ht += storelist[i].store_address1
										+ storelist[i].store_address2
										+ '<a href="#" class="roadname"data-index="1" data-status="off">지번</a>'
								ht += '</dt>'
								ht += '<dt class="tel">'
										+ storelist[i].store_phone + '</dt>'
								ht += '</dl>'
								ht += '</div>'
								ht += '</li>'
								ht += '</ul>'

								///다중 마커 표시 작업중
								var wholeaddress = storelist[i].store_address1
										+ storelist[i].store_address2;
								alert(wholeaddress);

								naver.maps.Service
										.geocode(
												{

													address : wholeaddress
												},
												function(status, response) {
													/*  if (status !== naver.maps.Service.Status.OK) {
													     return alert('Something wrong!');
													 } */

													/* var result = response.result, // 검색 결과의 컨테이너
													    items = result.items; // 검색 결과의 배열
													    alert(items); */
													var item = response.result.items[0], addrType = item.isRoadAddress ? '[도로명 주소]'
															: '[지번 주소]', point = new naver.maps.Point(
															item.point.x,
															item.point.y);

													var markerplace = new naver.maps.LatLng(
															point.y, point.x)

													var marker = new naver.maps.Marker(
															{
																position : markerplace,
																map : map,
																icon : {
																	url : '../image/pins_n_'
																			+ i
																			+ '.png'
																},
																zIndex : 100
															});
													markerList.push(marker);
													alert(markerList);
												});
							}
							document.getElementById('resultreal').innerHTML = ht;
						},
						error : function(msg) {
							alert("dpfj")
						}

					});

		}

		function myplacego() {
	<%--내위치 작업중--%>
		var params = new Object();

			var params = $("#addser").serialize();

			alert(params)

			$
					.ajax({

						url : '../rentArea.do?command=myplace',
						type : 'POST',
						data : params,
						datatype : 'html',

						success : function(result) {
							alert("ef");
							var storelist = $.parseJSON(result);
							alert(result);
							var ht = '';
							for (var i = 0; i < storelist.length; i++) {
								ht += '<ul class="maejang_list">'
								ht += '<li class="nclicks" data-id="#" data-index="1">'
								ht += '<div class="lsnx">'
								ht += '<div class="thumb_nclicks">'
								ht += '<img src='+storelist[i].store_image+'width="80" height="80" alt="상사">'
								ht += '</div>'
								ht += '<dl class="lsnx_detail">'
								ht += '<dt class="nclicks1">'
								ht += '<img src="../image/pins_n_'+i+'.png" width="18" height="28" alt="'+i+'">'
								ht += '<a href="storeMiniHome.jsp" style="text-decoration: none;">'
										+ storelist[i].store_name + '</a>'
								ht += '<a href="#"><img src="images//star1.png" width="22" height="22" alt="즐겨찾기"></a>'
								ht += '</dt>'
								ht += '<dt class="addr">'
								ht += storelist[i].store_address1
										+ storelist[i].store_address2
										+ '<a href="#" class="roadname"data-index="1" data-status="off">지번</a>'
								ht += '</dt>'
								ht += '<dt class="tel">'
										+ storelist[i].store_phone + '</dt>'
								ht += '</dl>'
								ht += '</div>'
								ht += '</li>'
								ht += '</ul>'
							}
							document.getElementById('resultreal').innerHTML = ht;
						},
						error : function(msg) {
							alert("dpfj")
						}

					});

		}
	</script>
</body>
</html>




