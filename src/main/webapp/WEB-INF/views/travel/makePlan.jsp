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
			<p>
				<img class="ui wireframe paragraph image"
					src="https://semantic-ui.com/images/wireframe/paragraph.png">
			</p>
		</div>
	</div>

	<!-- 일정 만들기 3컬럼 메인 컴퍼넌트 -->
	<div class="ui fluid container" id="context1">
		<div class="ui grid">
			<div class="two wide column">
				<div class="ui side sticky">
					<div class="ui green inverted segment">
						<p>일정 날짜 선택 컴퍼넌트 공간</p>

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
				<div class="ui side sticky">
					<div class="ui blue inverted segment">
						<p>사용자가 추가한 관광지 리스트 컴퍼넌트 공간</p>

						<p>
							<img class="ui wireframe paragraph image"
								src="../images/travel/search1.png">
						</p>

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

								<img class="ui wireframe paragraph image"
									src="../images/travel/search2.png">

								<div class="sixteen wide column">
									<div class="ui padded grid">
										<div class="four wide black column">관광지 사진</div>
										<div class="ten wide orange column">관광지 정보</div>
										<div class="two wide red column">버튼</div>
									</div>
								</div>

								<img class="ui wireframe paragraph image"
									src="../images/travel/search3.png"> <img
									class="ui wireframe paragraph image"
									src="../images/travel/search4.png"> <img
									class="ui wireframe paragraph image"
									src="../images/travel/search5.png"> <img
									class="ui wireframe paragraph image"
									src="../images/travel/search6.png">

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
											<div class="right floated four wide red column">변경</div>
										</div>
									</div>
									<div class="row">
										<div class="ui padded grid">
											<div class="orange column">장소 검색</div>
										</div>
									</div>
									<div class="row">
										<div class="ui padded grid">
											<div class="blue column">검색옵션(도시내, 전체)</div>
										</div>
									</div>
								</div>
								<div class="four wide column">
									<div class="row">
										<div class="ui padded grid">
											<div class="black column">대분류 선택</div>
										</div>
									</div>
									<div class="row">
										<div class="ui padded grid">
											<div class="orange column">태그 선택</div>
										</div>
									</div>
								</div>
								<div class="four wide column">
									<img class="ui wireframe paragraph image"
										src="../images/travel/search.png">
								</div>
								<div class="four wide column">
									<img class="ui wireframe paragraph image"
										src="../images/travel/tag.png">
								</div>
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
											<div class="black column">관광지 사진</div>
										</div>
										<div class="ten wide white column">관광지 설명</div>
										<div class="two wide orange column">버튼</div>
									</div>
								</div>
								<div class="four wide column">
									<img class="ui wireframe paragraph image"
										src="../images/travel/3.png">
								</div>
								<div class="four wide column">
									<img class="ui wireframe paragraph image"
										src="../images/travel/1.png">
								</div>
								<div class="four wide column">
									<img class="ui wireframe paragraph image"
										src="../images/travel/2.png">
								</div>
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
					<p>
						<img class="ui wireframe paragraph image"
							src="../images/travel/schedule.png">
					</p>
				</div>

				<div class="ui red segment">
					<p>댓글 컴퍼넌트 공간</p>
					<p>
						<img class="ui wireframe paragraph image"
							src="../images/travel/reply.png">
					</p>
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
					<img src="assets/images/logo.png" class="ui centered mini image">
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
	<!-- 일정 만들기 3컬럼 메인 컴퍼넌트를 위한 스티키 스크립트 -->
	<script>
		$('.ui.side.sticky').sticky({
			context : '#context1',
			type : 'push'
		});

		$('.ui.side.sticky').visibility({
			type : 'fixed',
			offset : '80',
			bottomOffset : '200'
		});
	</script>
	<script type="text/javascript" src="${path}/include/js/naverMap.js"></script>
	<script type="text/javascript" src="${path}/include/js/fullCalendar.js"></script>
</body>
</html>