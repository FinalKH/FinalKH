<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../include/headerTravel.jsp"%>
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=Y8Rh4S_7CD4B0earCnEb&submodules=drawing"></script>
</head>

<body>
<script>
		$(document).ready(function() {
		     jQuery.ajax({
		           type:"GET",
		           url:"http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList?ServiceKey=ZhnHJ1fzbYGAO2Xl%2FSg5MHWhMO0GkoIguiXKwi3%2BlAB8OTO1xYkmp0228On6RJ6lgh6Z4%2BLCWnAsnPm0wysTgA%3D%3D&contentTypeId=&areaCode=&sigunguCode=&cat1=&cat2=&cat3=&listYN=Y&MobileOS=ETC&MobileApp=TourAPI3.0_Guide&arrange=A&numOfRows=10&pageNo=1&_type=json",	   
		           dataType:"json", // 옵션이므로 JSON으로 받을게 아니면 안써도 됨
		           success : function(data) {
		                alert("자바스크립트 객체 불러오기 성공");
		                var jsondata = JSON.stringify(data);
		                alert(jsondata);
		                alert("자바스크립트 객체를 json으로 변환 성공");
		                var rejson = JSON.parse(jsondata);
		                alert(rejson);
		                alert(rejson.response.header.resultCode);
		                alert(rejson.response.body.items.item[5].title);
		                $("#api").append(data.response.body.items.item[5].title);


		           },
		           complete : function(data) {
		        	   alert(data);
		        	   var jsondata = JSON.stringify(data);
		                alert(jsondata);
		                alert("자바스크립트 객체를 json으로 변환 성공");
		                var rejson = JSON.parse(jsondata);
		        	   alert("완료");
		           },
		           error : function(xhr, status, error) {
		                 alert("에러발생");
		           }
		     });
		});
		alert(data.mapy);
		</script>
		<div id="map" style="width:100%;height:400px;"></div>
		<div id="api"></div>
		<script>
		var mapDiv = document.getElementById('map');
		var map = new naver.maps.Map(mapDiv);
		function showDisplayLayerFunc() {
			var jsonObj = [];
			$("table > tbody > tr").each( function( index ) {
				jsonObj.push({
					grade: $(this).children().eq(0).text(),
					name: $(this).children().eq(1).text(),
					number: $(this).children().eq(2).text()
				});
			});

			for(i = 0; i < jsonObj.length; i++) {
				$("#displayLayer").append("<input tepe='text' name='gradeName' value='"+ jsonObj[i].grade +" "+ jsonObj[i].name +" "+ jsonObj[i].number +"' /><br/>");
			}
		}
		$.ajax({
		    url: './geojson/naver.json',
		    dataType: 'json',
		    success: startDataLayer
		});

		var map;
		function startDataLayer(geojson) {
		    map = new naver.map.Map('map', {
		        zoom: 13,
		        center: new naver.maps.LatLng(37.3586524, 127.1060678)
		    });

		    map.data.addGeoJson(geojson);
		}
		var drawingManager = new naver.maps.drawing.DrawingManager({map: map});
	</script>
	
</head>
<body>

	<table border="1">
		<thead>
			<tr>
				<th>학년</th>
				<th>이름</th>
				<th>번호</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>1학년</td>
				<td>김철수</td>
				<td>1번</td>
			</tr>
			<tr>
				<td>1학년</td>
				<td>이영희</td>
				<td>2번</td>
			</tr>
			<tr>
				<td>2학년</td>
				<td>박승철</td>
				<td>1번</td>
			</tr>
			<tr>
				<td>2학년</td>
				<td>최보람</td>
				<td>2번</td>
			</tr>
		</tbody>
	</table>

	<p>
		<button onclick="showDisplayLayerFunc()">입력</button>
	</p>

	<div id="displayLayer"></div>
</body>
</html>