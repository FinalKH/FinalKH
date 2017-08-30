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
	<div class="ui fluid container" id="context1"
		style="margin: 10px; border: 0px;">
		<div class="ui grid">
			<div class="two wide fluid column">
				<div class="ui bound top sticky" id="day"
					style="margin: 0px; padding: 0px;">
					<div class="ui fluid tertiary inverted blue segment"
						style="height: 610px;">
						<div class="ui fluid container"
							style="margin: 0px; padding: 0px; border: 0px;">
							<div class="ui segment" style="margin: 0px; padding: 2px;">
								<button class="ui icon blue fluid button">
									09.07~09.08<i class="setting icon"></i>에딧
								</button>
								<button class="ui black fluid button">전체일정보기</button>
							</div>
							<div class="ui fluid menu list"
								style="height: 400px; overflow-y: auto; overflow-x: hidden;"></div>
							<div class="ui segment" style="margin: 0px; padding: 2px;">
								<button class="ui fluid blue button">DAY 추가</button>
								<button class="ui fluid black button">이용 방법</button>
							</div>

						</div>
					</div>
				</div>
			</div>

			<div class="three wide column" style="padding: 0px;">
				<div class="ui bound top sticky" id="user" style="height: 400px;">
					<div class="ui tertiary inverted blue segment"
						style="height: 610px;">
						<div class="ui fluid container">

							<div class="grid">
								<div class="ui fluid segment" style="margin: 0px; padding: 3px;">
									<div class="sixteen wide red fluid column">

										<div class="ui segment" style="margin: 0px; padding: 0px;">
											<div class="ui two buttons">
												<button class="ui black button">임시저장 후 닫기</button>
												<button class="ui orange button">완료</button>
											</div>
										</div>

									</div>
									<div class="row">
										<div class="ui center aligned fluid segment">
											<div class="ui fluid divided grid">
												<div class="four wide middle aligned fluid column">DAY1</div>
												<div class="twelve wide middle aligned fluid column">
													17.09.07
													<div class="ui circular basic refresh tiny icon button"
														id="userPickAllDelete">
														<i class="refresh icon"></i>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="row">

										<div class="ui icon fluid blue labeled button">
											<i class="compass big icon"></i> 일정 최적화
										</div>

									</div>

								</div>
								<div class="ui segment" style="padding: 10px;">
									<div class="sixteen wide blue column">
										<div class="ui padded red grid">

											<div class="ui left very vertical divided black fluid list"
												id="userPick"
												style="height: 345px; width: 300px; padding: 0px; overflow-y: auto; overflow-x: hidden;">

												<!-- 사용자가 만든 일정이 들어가는 곳 -->
											</div>
										</div>
									</div>
								</div>
								<div class="sixteen wide column">
									<div class="ui segment" style="margin: 0px; padding: 3px;">
										<div class="ui two buttons">
											<div class="ui black button">내 장소 +</div>
											<div class="ui orange button">교통 추가</div>
										</div>
									</div>


								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="eleven wide column">

				<div class="ui segment">
					<div id="calendar"></div>
				</div>
				<div class="ui tertiary inverted blue segment">
					<div class="ui segment">
						<div class="ui fluid container">

							<div class="ui stackable grid">
								<div class="two wide stackable column">
									<div class="ui fluid segment">
										<div class="row">
											<div class="ui padded grid">


												<div class="middle aligned row">
													<div class="middle aligned grid">지역</div>
												</div>
												<div class="row">
													<button class="ui basic fluid button">변경</button>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="seven wide stackable column">
									<div class="ui fluid segment">
										<div class="row">
											<div class="ui padded grid">
												<div class="fluid column">
													<div class="ui icon fluid input">
														<input type="text" placeholder="Search"> <i
															class="search icon"></i>
													</div>
												</div>
											</div>
										</div>

										<div class="row">
											<div class="ui padded grid">
												<div class="fluid column">
													<div class="ui fluid form">
														<div class="inline  fluid fields">
															<div class="field">
																<div class="ui radio fluid checkbox">
																	<input type="radio" name="loc"> <label>도시내
																		검색</label>
																</div>
															</div>
															<div class="field">
																<div class="ui radio fluid checkbox">
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
								</div>
								<div class="seven wide stackable column">

									<div class="ui fluid segment">
										<div class="row">
											<div class="ui icon five item fluid menu">
												<a class="active item"> <i
													class="circular photo large icon"></i></a> <a class="item">
													<i class="circular food large icon"></i>
												</a> <a class="item"> <i
													class="circular shopping bag large icon"></i></a> <a
													class="item"> <i class="circular building large icon"></i>
												</a> <a class="item"> <i class="circular tag large icon"></i></a>
											</div>

										</div>
										<div class="row">
											<div class="ui padded grid">
												<div class="fluid column">
													<select class="ui fluid dropdown">
														<option value="">태그 선택</option>
														<option value="1">Male</option>
														<option value="0">Female</option>
													</select>
												</div>
											</div>
										</div>
									</div>
								</div>


							</div>
						</div>
					</div>

					<div class="ui fluid container" style="padding: 5px;">
						<div
							class="ui fluid middle aligned divided big animated selection menu list"
							id="contentInMap"
							style="height: 150px; overflow-y: hidden; overflow-x: auto; padding: 0px;"></div>
					</div>

				</div>
				<div class="ui segment">
					<div id="map" style="width: 100%; height: 900px;"></div>
				</div>

				<div class="ui fluid segment">
					<div class="ui fluid comments" style="width:500px">
						<h3 class="ui dividing header">Comments</h3>
						<div class="comment">
							<a class="avatar"> <img src="/images/avatar/small/matt.jpg">
							</a>
							<div class="content">
								<a class="author">Matt</a>
								<div class="metadata">
									<span class="date">Today at 5:42PM</span>
								</div>
								<div class="text">How artistic!</div>
								<div class="actions">
									<a class="reply">Reply</a>
								</div>
							</div>
						</div>
						<div class="comment">
							<a class="avatar"> <img src="/images/avatar/small/elliot.jpg">
							</a>
							<div class="content">
								<a class="author">Elliot Fu</a>
								<div class="metadata">
									<span class="date">Yesterday at 12:30AM</span>
								</div>
								<div class="text">
									<p>This has been very useful for my research. Thanks as
										well!</p>
								</div>
								<div class="actions">
									<a class="reply">Reply</a>
								</div>
							</div>
							<div class="comments">
								<div class="comment">
									<a class="avatar"> <img
										src="/images/avatar/small/jenny.jpg">
									</a>
									<div class="content">
										<a class="author">Jenny Hess</a>
										<div class="metadata">
											<span class="date">Just now</span>
										</div>
										<div class="text">Elliot you are always so right :)</div>
										<div class="actions">
											<a class="reply">Reply</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="comment">
							<a class="avatar"> <img src="/images/avatar/small/joe.jpg">
							</a>
							<div class="content">
								<a class="author">Joe Henderson</a>
								<div class="metadata">
									<span class="date">5 days ago</span>
								</div>
								<div class="text">Dude, this is awesome. Thanks so much</div>
								<div class="actions">
									<a class="reply">Reply</a>
								</div>
							</div>
						</div>
						<form class="ui reply form">
							<div class="field">
								<textarea></textarea>
							</div>
							<div class="ui blue labeled submit icon button">
								<i class="icon edit"></i> Add Reply
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="ui container"></div>



	<!-- 풋터 공간 -->
	<div class="ui fluid container">
		<div class="ui inverted segment">
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
				defaultView : 'agendaWeek',
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
												var $div = $('	<div class="item" id="pickItem" style="width:300px;"'
										+ 'firstImage=' + value.firstImage + '" title="' + value.title + '"contentId="' + value.contentId + '">'
														+ '<img class="ui image" src="' + value.firstImage + '" style="height: 100px; width:150px"><div class="content">'
														+ value.title
														+ '</div><div class="right floated content"><div class="ui pick icon button" ><i class="plus icon"></i></div></div></div>');
												$('#contentInMap').append($div);
											});
							for (var i = 0, ii = markers.length; i < ii; i++) {
								naver.maps.Event.addListener(markers[i],
										'click', getClickHandler(i));
							}
							$('.pick.button')
									.on(
											'click',
											function() {
												var $title = $(this).parent()
														.parent().attr('title');
												var $firstImage = $(this)
														.parent().parent()
														.attr('firstImage');
												var $contentId = $(this)
														.parent().parent()
														.attr('contentId');

												var $div = $('<div class="fluid draggable item" id="userPickItem">'
														+ '<img class="ui image" src="' + $firstImage + '" style="height: 50px; width:50px">'
														+ '<div class="content">'
														+ $title
														+ '</div>'
														+ '<div class="right floated content">'
														+ '<div class="ui icon button" id="userPickDeleteButton">'
														+ '<i class="delete icon"></i>'
														+ '</div>'
														+ '</div>'
														+ '</div>');
												$('#userPick').append($div);
												$(
														'#userPick .draggable:last-child')
														.data(
																'event',
																{
																	title : $
																			.trim($title),
																	stick : true
																})
														.draggable(
																{
																	zIndex : 999,
																	revert : true,
																	revertDuration : 0,
																	appendTo : 'body',
																	containment : 'window',
																	scroll : false,
																	helper : 'clone'
																});
											});

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

		$(document).on("click", "#userPickDeleteButton", function() {
			$(this).parent().parent().remove();
		});

		$(document)
				.on(
						"click",
						"#pickItem",
						function() {
							var data = {}, bounds = map.getBounds();
							data["eastBP"] = bounds.getNE().lng();
							data["westBP"] = bounds.getSW().lng();
							data["southBP"] = bounds.getSW().lat();
							data["northBP"] = bounds.getNE().lat();
							var contentId = 126508;
							$
									.ajax({
										type : "get",
										headers : {
											'Accept' : 'application/json',
											'Content-Type' : 'text/plain'
										},
										url : "http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailCommon?ServiceKey=ZhnHJ1fzbYGAO2Xl%2FSg5MHWhMO0GkoIguiXKwi3%2BlAB8OTO1xYkmp0228On6RJ6lgh6Z4%2BLCWnAsnPm0wysTgA%3D%3D",
										data : "&contentId="
												+ contentId
												+ "&defaultYN=Y&addrinfoYN=Y&overviewYN=Y&MobileOS=ETC&MobileApp=AppTesting&_type=json",
										dataType : "json",
										processData : false,
										contentType : "application/json;charset=UTF-8",
										cache : false,
										async : true,
										success : function(result) {
											alert(JSON
													.stringify(result.response.body.items.item.overview));
										},
										error : function(xhr, status, error) {
											alert(error);
										}
									});
						});

		$(document).on("click", "#userPickAllDelete", function() {
			$('#userPick').children().remove();
		});
		$('.ui.menu').on(
				'click',
				'.item',
				function() {
					if (!$(this).hasClass('dropdown')) {
						$(this).addClass('active').siblings('.item')
								.removeClass('active');
					}
				});
	</script>
</body>
</html>

