<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder"%>

<!DOCTYPE html>
<html>
<head>
<title>여행 계획 작성하기</title>
<%@ include file="../include/headerTravel.jsp"%>
</head>
<body>
	<%@ include file="../include/menuTravel.jsp"%>

	<!-- 헤더 정보 공간 -->
	<div class="ui fluid container">
		<div class="ui purple inverted segment">
			<p>헤더 정보 공간</p>

		</div>
	</div>

	<div class="ui fluid container" id="context1">
		<div class="ui grid">
			<div class="two wide column">

				<div class="ui bound top sticky" id="day">

					<div class="ui green inverted segment">
						<p>일정 날짜 선택 컴퍼넌트 공간</p>
						<p>time : 	<div class="text" id="api"></div></p>

						<div class="ui fluid container">
							<div class="grid">

								<div class="sixteen wide column">
									<div class="ui padded grid">
										<div class="eight wide orange column">날짜</div>
										<div class="eight wide orange column">에딧 버튼</div>
									</div>
								</div>

								<div class="sixteen wide column">
									<div class="ui padded grid">
										<div class="sixteen wide orange column">전체 일정 보기</div>
									</div>
								</div>

								<div class="eight wide column">
									<div class="row">
										<div class="ui padded grid">
											<div class="eight wide orange column">DAY1</div>
											<div class="eight wide black column">목요일</div>
										</div>
									</div>
									<div class="row">
										<div class="ui padded grid">
											<div class="eight wide blue column">07.06</div>
											<div class="eight wide red column">제주도</div>
										</div>
									</div>
								</div>
								<div class="eight wide column">
									<div class="row">
										<div class="ui padded grid">
											<div class="eight wide orange column">DAY2</div>
											<div class="eight wide black column">07.07</div>
										</div>
									</div>
									<div class="row">
										<div class="ui padded grid">
											<div class="eight wide blue column">금요일</div>
											<div class="eight wide red column">논산시</div>
										</div>
									</div>

									<div class="sixteen wide column">
										<div class="ui padded grid">
											<div class="sixteen wide orange column">DAY 추가</div>
										</div>
									</div>
									<div class="sixteen wide column">
										<div class="ui padded grid">
											<div class="sixteen wide orange column">이용 방법</div>
										</div>
									</div>


								</div>
							</div>
						</div>


					</div>
				</div>
			</div>
			<div class="three wide column">
				<div class="ui bound top sticky" id="user">
					<div class="ui blue inverted segment">
						<p>사용자가 추가한 관광지 리스트 컴퍼넌트 공간</p>


						<div class="ui fluid container">
							<div class="grid">
								<div class="sixteen wide column">
									<div class="row">
										<div class="ui padded grid">
											<div class="four wide orange column">DAY1</div>
											<div class="eight wide black column">날짜와 새로고침</div>
											<div class="four wide red column">날짜이동</div>
										</div>
									</div>
									<div class="row">
										<div class="ui padded grid">
											<div class="orange column">경로 최적화</div>
										</div>
									</div>
								</div>


								<div class="sixteen wide column">
									<div class="ui padded grid">
										<div class="four wide black column">관광지 사진</div>
										<div class="ten wide orange column">관광지 정보</div>
										<div class="two wide red column">버튼</div>
									</div>
								</div>


								<div class="sixteen wide column">
									<div class="ui padded grid">
										<div class="eight wide black column">내 장소 추가</div>
										<div class="eight wide red column">교통 추가</div>
									</div>
								</div>
							</div>
						</div>



					</div>
				</div>
			</div>
			<div class="eleven wide column">
				<div class="ui red inverted segment">

					<div class="ui inverted segment">
						<p>사용자가 검색과 분류 선택 기능을 사용할 수 있는 컴퍼넌트 공간</p>
						<div class="ui fluid container">
							<div class="ui stackable grid">
								<div class="four wide column">
									<div class="row">
										<div class="ui padded grid">
											<div class="left floated four wide blue column">지역</div>
											<div class="right floated four wide red column">
												<button class="ui inverted basic button">지역변경</button>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="ui padded grid">
											<div class="orange column">
												<div class="ui large icon input">
													<input type="text" placeholder="Search large..."> <i
														class="search icon"></i>
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="ui padded grid">
											<div class="blue column">
												<div class="ui form">
													<div class="inline fields">
														<div class="field">
															<div class="ui radio checkbox">
																<input type="radio" name="loc"> <label>도시내
																	검색</label>
															</div>
														</div>
														<div class="field">
															<div class="ui radio checkbox">
																<input type="radio" name="loc"> <label>전체
																	검색</label>
															</div>
														</div>
													</div>
												</div>

											</div>
										</div>
									</div>
								</div>
								<div class="four wide column">
									<div class="row">
										<div class="ui padded grid">
											<div class="orange column">
												<div class="ui compact icon menu">
													<a class="item"> <i class="photo icon"></i></a> <a
														class="item"> <i class="food icon"></i></a> <a
														class="item"> <i class="shopping bag icon"></i></a> <a
														class="item"> <i class="building icon"></i></a> <a
														class="item"> <i class="tag icon"></i></a>
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="ui padded grid">
											<div class="black column">
												<select class="ui fluid dropdown">
													<option value="">태그 선택</option>
													<option value="1">Male</option>
													<option value="0">Female</option>
												</select>
											</div>
										</div>
									</div>
								</div>
								<div class="four wide column"></div>
								<div class="four wide column"></div>
							</div>
						</div>
					</div>


					<div class="ui inverted segment">
						<p>지도안에 마커로 표시되어 있는 관광지들의 간략 정보 리스트</p>
						<div class="ui fluid container">
							<div class="ui stackable grid">
								<div class="four wide column">
									<div class="ui padded grid">
										<div class="four wide blue column">
											<div class="ui fluid container">
												<div class="ui fluid image">
													<img
														src="https://semantic-ui.com/images/wireframe/image.png">
												</div>
											</div>

										</div>
										<div class="ten wide white column">관광지 설명</div>
										<div class="two wide orange column">
											<i class="plus square outline big icon"></i>
										</div>
									</div>
								</div>
								<div class="four wide column"></div>
								<div class="four wide column"></div>
								<div class="four wide column"></div>
							</div>
						</div>
					</div>
				</div>



				<div class="ui red segment">
					<p>지도 API 공간</p>
					<div id="map" style="width: 100%; height: 900px;"></div>
				</div>

				<div class="ui red segment">
					<p>캘린더 API 공간</p>
					<p></p>
					<div id="calendar"></div>
				</div>

				<div class="ui red segment">
					<div class="ui padded grid">
						<div class="sixteen wide column">댓글(10)</div>
						<div class="one wide blue column">아이콘</div>
						<div class="thirteen wide orange column">댓글쓰는 공간</div>
						<div class="two wide red column">저장 버튼</div>

						<div class="one wide black column">아이콘</div>
						<div class="fifteen wide column">
							<div class="row">
								<div class="ui grid">
									<div class="two wide blue column">이름</div>
									<div class="one wide red column">소셜아이콘</div>
									<div class="thirteen wide brown column">댓글 단 날짜</div>
								</div>
							</div>
							<div class="row">
								<div class="ui grid">
									<div class="orange column">댓글 쓰는 공간</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 풋터 공간 -->
	<div class="ui fluid container">
		<div class="ui black inverted segment">
			<p>풋터 공간</p>
			<div class="ui inverted vertical footer segment">
				<div class="ui center aligned container">
					<div class="ui stackable inverted divided grid">
						<div class="three wide column">

							<h4 class="ui inverted header">Group 1</h4>
							<div class="ui inverted link list">
								<a href="#" class="item">Link One</a> <a href="#" class="item">Link
									Two</a> <a href="#" class="item">Link Three</a> <a href="#"
									class="item">Link Four</a>
							</div>
						</div>
						<div class="three wide column">
							<h4 class="ui inverted header">Group 2</h4>
							<div class="ui inverted link list">
								<a href="#" class="item">Link One</a> <a href="#" class="item">Link
									Two</a> <a href="#" class="item">Link Three</a> <a href="#"
									class="item">Link Four</a>
							</div>
						</div>
						<div class="three wide column">
							<h4 class="ui inverted header">Group 3</h4>
							<div class="ui inverted link list">
								<a href="#" class="item">Link One</a> <a href="#" class="item">Link
									Two</a> <a href="#" class="item">Link Three</a> <a href="#"
									class="item">Link Four</a>
							</div>
						</div>
						<div class="seven wide column">
							<h4 class="ui inverted header">Footer Header</h4>
							<p>Extra space for a call to action inside the footer that
								could help re-engage users.</p>
						</div>
					</div>
					<div class="ui inverted section divider"></div>
					<div class="ui horizontal inverted small divided link list">
						<a class="item" href="#">Site Map</a> <a class="item" href="#">Contact
							Us</a> <a class="item" href="#">Terms and Conditions</a> <a
							class="item" href="#">Privacy Policy</a>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- 스크립트 태그 -->
	<script type="text/javascript" src="${path}/include/js/fullCalendar.js"></script>
	<script>
		$('.ui.bound.top.sticky#user').sticky({
			context : '#context1',
			offset : 80,
			type : 'push'
		});
		$('.ui.bound.top.sticky#day').sticky({
			context : '#context1',
			offset : 80,
			type : 'push'
		});
		</script>
		<script>
		
		var map = new naver.maps.Map('map', {
		    center: new naver.maps.LatLng(37.5666805, 126.9784147),
		    zoom: 5,
		    mapTypeId: naver.maps.MapTypeId.NORMAL
		});

		var infowindow = new naver.maps.InfoWindow();

		function onSuccessGeolocation(position) {
		    var location = new naver.maps.LatLng(position.coords.latitude,
		                                         position.coords.longitude);

		    map.setCenter(location); // 얻은 좌표를 지도의 중심으로 설정합니다.
		    map.setZoom(10); // 지도의 줌 레벨을 변경합니다.

		    infowindow.setContent('<div style="padding:20px;">' +
		        'latitude: '+ location.lat() +'<br />' +
		        'longitude: '+ location.lng() +'</div>');

		    infowindow.open(map, location);
		}

		function onErrorGeolocation() {
		    var center = map.getCenter();

		    infowindow.setContent('<div style="padding:20px;">' +
		        '<h5 style="margin-bottom:5px;color:#f00;">Geolocation failed!</h5>'+ "latitude: "+ center.lat() +"<br />longitude: "+ center.lng() +'</div>');

		    infowindow.open(map, center);
		}

		$(window).on("load", function() {
		    if (navigator.geolocation) {
		        navigator.geolocation.getCurrentPosition(onSuccessGeolocation, onErrorGeolocation);
		    } else {
		        var center = map.getCenter();

		        infowindow.setContent('<div style="padding:20px;"><h5 style="margin-bottom:5px;color:#f00;">Geolocation not supported</h5>'+ "latitude: "+ center.lat() +"<br />longitude: "+ center.lng() +'</div>');
		        infowindow.open(map, center);
		    }
		});
		$(document).ready(function() {
		     jQuery.ajax({
		           type:"GET",
		           url:"http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList?ServiceKey=ZhnHJ1fzbYGAO2Xl%2FSg5MHWhMO0GkoIguiXKwi3%2BlAB8OTO1xYkmp0228On6RJ6lgh6Z4%2BLCWnAsnPm0wysTgA%3D%3D&contentTypeId=&areaCode=&sigunguCode=&cat1=&cat2=&cat3=&listYN=Y&MobileOS=ETC&MobileApp=TourAPI3.0_Guide&arrange=A&numOfRows=10&pageNo=1&_type=json",	   
		           dataType:"JSON", // 옵션이므로 JSON으로 받을게 아니면 안써도 됨
		           success : function(data) {
		        	   alert(data);
		        	   alert(JSON.stringify(data));
		                $('#api').append(data.response.body.items.item[0].title);
		                $('#api').append(data.response.body.items.item[0].mapx);
		                $('#api').append(data.response.body.items.item[0].mapy);
		                $('#api').append(" ");
		                $('#api').append(data.response.body.items);
		                var mapx = parseFloat(data.response.body.items.item[0].mapx);
		                var mapy = parseFloat(data.response.body.items.item[0].mapy);
		                alert(mapy);
		                alert(mapx);
		                
		                var map = new naver.maps.Map('map', {
		                    center: new naver.maps.LatLng(mapy, mapx),
		                    zoom: 10
		                });

		                var marker = new naver.maps.Marker({
		                    position: new naver.maps.LatLng(mapy, mapx),
		                    map: map
		                });
		                
		                var contentString = [
		                    '<div class="iw_inner">',
		                    '   <h3>서울특별시청</h3>',
		                    '   <p>서울특별시 중구 태평로1가 31 | 서울특별시 중구 세종대로 110 서울특별시청<br>',
		                    '       <img src="./img/hi-seoul.jpg" width="55" height="55" alt="서울시청" class="thumb" /><br>',
		                    '       02-120 | 공공,사회기관 > 특별,광역시청<br>',
		                    '       <a href="http://www.seoul.go.kr" target="_blank">www.seoul.go.kr/</a>',
		                    '   </p>',
		                    '</div>'
		                ].join('');

		                var infowindow = new naver.maps.InfoWindow({
		                    content: contentString
		                });

		                naver.maps.Event.addListener(marker, "click", function(e) {
		                    if (infowindow.getMap()) {
		                        infowindow.close();
		                    } else {
		                        infowindow.open(map, marker);
		                        infowindow.open(map, Coord);
		                    }
		                });
		                
		                function initGeocoder() {
		        		    var latlng = map.getCenter();
		        		    var utmk = naver.maps.TransCoord.fromLatLngToUTMK(latlng); // 위/경도 -> UTMK
		        		    var tm128 = naver.maps.TransCoord.fromUTMKToTM128(utmk);   // UTMK -> TM128
		        		    var naverCoord = naver.maps.TransCoord.fromTM128ToNaver(tm128); // TM128 -> NAVER

		        		    infoWindow = new naver.maps.InfoWindow({
		        		        content: ''
		        		    });

		        		    map.addListener('click', function(e) {
		        		        var latlng = e.coord,
		        		            utmk = naver.maps.TransCoord.fromLatLngToUTMK(latlng),
		        		            tm128 = naver.maps.TransCoord.fromUTMKToTM128(utmk),
		        		            naverCoord = naver.maps.TransCoord.fromTM128ToNaver(tm128);

		        		        utmk.x = parseFloat(utmk.x.toFixed(1));
		        		        utmk.y = parseFloat(utmk.y.toFixed(1));

		        		        infoWindow.setContent([
		        		            '<div style="padding:10px;width:300px;font-size:14px;line-height:20px;">',
		        		            '<strong>LatLng</strong> : '+ latlng +'<br />',
		        		            '<strong>UTMK</strong> : '+ utmk +'<br />',
		        		            '<strong>TM128</strong> : '+ tm128 +'<br />',
		        		            '<strong>NAVER</strong> : '+ naverCoord +'<br />',
		        		            '</div>'
		        		        ].join(''));

		        		        infoWindow.open(map, latlng);
		        		    });
		        		}

		        		naver.maps.onJSContentLoaded = initGeocoder;
		        		
		        	    var contentEl = $('<div class="iw_inner" style="width:350px;position:absolute;top:0;right:0;z-index:1000;background-color:#fff;border:solid 1px #333;">'
		        	            + '<h3>Map States</h3>'
		        	            + '<p style="font-size:14px;">zoom : <em class="zoom">'+ map.getZoom() +'</em></p>'
		        	            + '<p style="font-size:14px;">center : <em class="center">'+ map.getCenter() +'</em></p>'
		        	            + '<p style="font-size:14px;">bounds : <em class="bounds">'+ map.getBounds() +'</em></p>'
		        	            + '</div>');

		        	        contentEl.appendTo(map.getElement());

		        	        naver.maps.Event.addListener(map, 'zoom_changed', function(zoom) {
		        	            contentEl.find('.zoom').text(zoom);
		        	        });

		        	        naver.maps.Event.addListener(map, 'bounds_changed', function(bounds) {
		        	            contentEl.find('.center').text(map.getCenter());
		        	            contentEl.find('.bounds').text(bounds);
		        	        });
		        	        
		        	        
		                alert("성공");
		           },
		           complete : function(data) {

		           },
		           error : function(xhr, status, error) {
		                 alert("에러발생");
		           }
		     });
		});
		
		<c:forEach var="row1" items="${list}">
		var mapX = "${row1.areaMapX}";
		var mapY = "${row1.areaMapY}";
		new naver.maps.Marker({
	    position: new naver.maps.LatLng(mapY, mapX),
	    map: map
	});
	</c:forEach>	
		

	</script>
</body>
</html>