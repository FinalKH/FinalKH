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
		<div class="ui segment" style="height: 43px;"></div>
	</div>
	<div class="ui fluid container" id="context1" style="margin: 10px;">
		<div class="ui grid">
			<div class="two wide column">
				<div class="ui bound top sticky" id="day">
					<div class="ui green inverted segment">
						<div class="text" id="api"></div>
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
				<div class="ui bound top sticky" id="user" style="height: 400px;">
					<div class="ui blue inverted segment" style="height: 600px;">
						<div class="ui fluid container">

							<div class="grid">
								<div class="sixteen wide red column">
									<div class="ui padded grid">
										<div class="sixteen wide teal column">저장</div>
									</div>
								</div>
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

										<div class="ui left very vertical list" id="userPick"
											style="height: 370px; overflow-y: auto; overflow-x: hidden;">

											<!-- 사용자가 만든 일정이 들어가는 곳 -->
										</div>
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
				<div class="ui segment">
					<div class="ui inverted segment">
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

					<div class="ui fluid container">
						<div class="ui stackable  menu" id="contentInMap"
							style="overflow: scroll; height: 150px;"></div>
					</div>

				</div>
				<div class="ui segment">
					<div id="map" style="width: 100%; height: 900px;"></div>
				</div>
				<div class="ui segment">
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
	<script>
		$(document).ready(function() {
			$('#calendar').fullCalendar({
				header : {
					left : 'prev,next today',
					center : 'title',
					right : 'month,agendaWeek,agendaDay'
				},
				editable : true,
				droppable : true, // this allows things to be dropped onto the calendar
				drop : function() {
					// is the "remove after drop" checkbox checked?
					if ($('#drop-remove').is(':checked')) {
						// if so, remove the element from the "Draggable Events" list
						$(this).remove();
					}
				}
			});

		});
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

		var map = new naver.maps.Map('map', {
			center : new naver.maps.LatLng(37.5666805, 126.9784147),
			zoom : 12,
			mapTypeId : naver.maps.MapTypeId.NORMAL
		}), markers = [], infoWindows = [];

		naver.maps.Event.addListener(map, 'idle', function() {

			bringAllInMap();
		});

		function deleteAllInMap() {
			marker.setMap(null);
		}

		function bringAllInMap() {
			var data = {}, bounds = map.getBounds();
			data["eastBP"] = bounds.getNE().lng();
			data["westBP"] = bounds.getSW().lng();
			data["southBP"] = bounds.getSW().lat();
			data["northBP"] = bounds.getNE().lat();
			//alert(JSON.stringify(data));

			$
					.ajax({
						type : "post",
						url : "${path}/travel/bringAllInMap.do",
						dataType : "json",
						data : JSON.stringify(data),
						processData : false,
						contentType : "application/json;charset=UTF-8",
						async : false,
						success : function(result) {
							console.log(result);
							for (var i = 0, ii = markers.length; i < ii; i++) {
								markers.pop().setMap(null)

							}
							;
							markers = [];
							infoWindows = [];
							$('#contentInMap').empty();
							$
									.each(
											result,
											function(key, value) {
												var position = new naver.maps.LatLng(
														value.mapY, value.mapX);

												var marker = new naver.maps.Marker(
														{
															map : map,
															position : position,
															title : value.contentId,
															icon : "http://www.owenscorning.com/images/orange-dot.png",
														});

												var infoWindow = new naver.maps.InfoWindow(
														{
															content : '<div style="text-align:center;padding:10px;"><span style="color:black">'
																	+ value.title
																	+ '</span></div>'
														});

												markers.push(marker);
												infoWindows.push(infoWindow);
												var $div = $('<div class="item"><div class="right floated content"><div class="ui pick icon button" id="'+value.title+'"><i class="plus icon"></i></div></div><img class="ui tiny image" src="'+value.firstImage2+'"><div class="content">'
														+ value.title
														+ '</div></div>');
												$('#contentInMap').append($div);
											});
							for (var i = 0, ii = markers.length; i < ii; i++) {
								naver.maps.Event.addListener(markers[i],
										'click', getClickHandler(i));
							}

						},
						error : function(xhr, status, error) {
							alert('error');
						}
					});
		};

		function getClickHandler(seq) {
			return function(e) {

				var marker = markers[seq], infoWindow = infoWindows[seq];
				if (marker.getIcon() === ('http://www.owenscorning.com/images/orange-dot.png')) {
					marker
							.setIcon({
								url : 'http://www.diacomp.org/omb/images/Google/ltblue.png'
							});
				} else {
					marker.setIcon({

					});
				}

				if (infoWindow.getMap()) {
					infoWindow.open(map, marker);
				} else {
					infoWindow.open(map, marker);
				}

				if (marker.getAnimation() !== null) {
					marker.setAnimation(null);
				} else {
					marker.setAnimation(naver.maps.Animation.BOUNCE);
				}

				var point = e.coord;

				var path = polyline.getPath();
				path.push(point);
				path.setPath(null);
			}
		}

		function onMouseOver(e) {
			var marker = e.overlay, seq = marker.get('seq');

			marker
					.setIcon({
						url : 'https://mt.googleapis.com/vt/icon/name=icons/onion/22-blue-dot.png'
					});
		}

		function onMouseOut(e) {
			var marker = e.overlay, seq = marker.get('seq');

			marker.setIcon({
				url : 'http://www.diacomp.org/omb/images/Google/ltblue.png'
			});
		}
		bringAllInMap()
		/* 		$(#map). */

		var polyline = new naver.maps.Polyline({
			map : map,
			path : [],
			strokeColor : '#5347AA',
			strokeWeight : 2
		});


		
		$(document).ready(function () {
		    $('.pick.button').on('click', function () {
		    	var $id = $(this).attr('id');
				var $div = $('<div class="item" id="userPickItem"><div class="ui icon tiny buttons"><button class="ui button" id="userDelete"><i class="delete icon"></i>'
						+ $id
						+ '</button><button class="ui black disabled button"></button></div><div class="ui icon tiny right floated buttons"><button class="ui button" id="minusButton"><i class="minus icon"></i></button><button class="ui black disabled button"></button></div></div>');
				$('#userPick').append($div);				
				  $('#userPickItem').each(function(index) {
					  $(this).data('event', {
							title : $.trim($(this).text()), // use the element's text as the event title
							stick : true
						// maintain when user navigates (see docs on the renderEvent method)
					  })
			            });
				  $('#userPickItem').each(function(index) {
					  $(this).draggable({
							zIndex : 999,
							revert : true, // will cause the event to go back to its
							revertDuration : 0,
							appendTo: 'body',
							containment: 'window',
							scroll: false,
							helper: 'clone'
						//  original position after the drag
					  })
			            });

		    });

		});
	</script>
</body>
</html>