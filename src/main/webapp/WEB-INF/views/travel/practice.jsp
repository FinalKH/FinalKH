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

<div id="map" style="width: 100%; height: 900px;"></div>
<script>
var latitude=0;
var longitude=0;
navigator.geolocation.getCurrentPosition(function(position) {
    latitude=position.coords.latitude;
    longitude=position.coords.longitude;
	alert(position.coords.latitude + ' ' + position.coords.longitude);
});
	
var map = new naver.maps.Map('map', {
    center: new naver.maps.LatLng(latitude, longitude),
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
</script>

</body>
</html>