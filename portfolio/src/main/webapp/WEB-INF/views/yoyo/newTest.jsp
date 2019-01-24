<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<script src="https://code.jquery.com/jquery-1.10.0.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
	var xhr = new XMLHttpRequest();
	var url = 'http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailCommon'; /*URL*/
	var queryParams = '?'
			+ encodeURIComponent('ServiceKey')
			+ '='
			+ 'jaWvwp%2FnA5aEEWuqg66iLJF7yCE9KKeEBLOn7KxW2pA8VHjjaDiwHGUQDSCedHcKNpBWjzCe9YHHgpO5M03Vjw%3D%3D'; /*Service Key*/ 
	queryParams += '&' + encodeURIComponent('ServiceKey') + '=' + encodeURIComponent('인증키'); /*공공데이터포털에서*/
	queryParams += '&' + encodeURIComponent('numOfRows') + '=' + encodeURIComponent('10'); /*한 페이지 결과 수*/
	queryParams += '&' + encodeURIComponent('pageNo') + '=' + encodeURIComponent('1'); /*현재 페이지 번호*/
	queryParams += '&' + encodeURIComponent('MobileOS') + '=' + encodeURIComponent('ETC'); /*IOS(아이폰),AND(안드로이드),WIN(원도우폰),ETC*/
	queryParams += '&' + encodeURIComponent('MobileApp') + '=' + encodeURIComponent('AppTest'); /*서비스명=어플명*/
/* 	queryParams += '&' + encodeURIComponent('contentId') + '=' + encodeURIComponent('39'); /*콘텐츠ID*/
	queryParams += '&' + encodeURIComponent('contentTypeId') + '=' + encodeURIComponent('39'); /*관광타입(관광지, 숙박 등) ID*/
/* 	queryParams += '&' + encodeURIComponent('defaultYN') + '=' + encodeURIComponent('Y'); /*기본정보 조회여부*/
/* 	queryParams += '&' + encodeURIComponent('firstImageYN') + '=' + encodeURIComponent('Y'); /*원본, 썸네일 대표이미지 조회여부*/
	queryParams += '&' + encodeURIComponent('areacodeYN') + '=' + encodeURIComponent('Y'); /*지역코드, 시군구코드 조회여부*/
	queryParams += '&' + encodeURIComponent('catcodeYN') + '=' + encodeURIComponent('Y'); /*대,중,소분류코드 조회여부*/
	queryParams += '&' + encodeURIComponent('addrinfoYN') + '=' + encodeURIComponent('Y'); /*주소, 상세주소 조회여부*/
	queryParams += '&' + encodeURIComponent('mapinfoYN') + '=' + encodeURIComponent('Y'); /*좌표 X,Y 조회여부*/
	queryParams += '&' + encodeURIComponent('overviewYN') + '=' + encodeURIComponent('Y'); /*콘텐츠 개요 조회여부*/
/* 	xhr.open('GET', url + queryParams);
	xhr.onreadystatechange = function() {
		if (this.readyState == 4) {
			alert('Status: ' + this.status + ' Headers: '
					+ JSON.stringify(this.getAllResponseHeaders()) + ' Body: '
					+ this.responseText);

		}
	};
	xhr.send(''); */
	
	$(document).ready(function() {
		$.ajax({
			url : url + queryParams,
			success : function(data) {
				$(data).find('response').find('body').find('items').find('item').find('addr1').each(function() {
					$('body').append($(this).text() + '<br>');
				}) 
			}
		})
	})

	
</script>
</head>
<body id="body">

</body>
</html>