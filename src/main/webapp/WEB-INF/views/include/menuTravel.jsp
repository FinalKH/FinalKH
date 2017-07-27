<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- jstl 코어 태그 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<!-- 헤더 메뉴 공간 -->
<div class="ui fluid container">
	<div class="ui violet inverted segment">
		<div class="ui labeled icon fixed menu">
				<a class="item" href="${path}/main.do"><i class="skyatlas big icon"></i>메인</a>
				<a class="item" href="${path}/travel/makePlan.do"><i class="map icon"></i>여행플랜</a>
				<a class="item"><i class="help circle icon"></i>이용방법</a>
				<a class="item"><i class="book icon"></i> 여행팁</a>
				<a class="item"><i class="map signs icon"></i> 여행일정</a>
				<a class="item"><i class="camera retro icon"></i> 관광지</a>
				<a class="item" href="${path}/travel/reviewList.do"><i class="book icon"></i> 여행후기</a>
			<div class="right menu">
				<a class="item" href="${path}/sample/sample.do"><i class="cube orange icon"></i>예제</a>
				<a class="item" href="${path}/travel/myPage.do"><i class="user circle blue icon"></i> 마이페이지</a>
				<a class="item" ><i class="sign in red icon"></i> 로그인</a>
			</div>
		</div>
	</div>
</div>