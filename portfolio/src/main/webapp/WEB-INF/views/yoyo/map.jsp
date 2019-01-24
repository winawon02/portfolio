<%@ page language="java" contentType="application/json;charset=UTF-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<%
   response.addHeader("Access-Control-Allow-Origin", "*");
    response.setHeader("Access-Control-Allow-Headers", "origin, x-requested-with, content-type, accept");
%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <c:import url="http://api.data.go.kr/openapi/tn_pubr_public_fshlc_api" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- 		<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
        <script type="text/javascript" src="jquery.ajax-cross-origin.min.js"></script>크로스도메인 해결 플러그인 -->
        <script type="text/javascript">
/*         header('Access-Control-Allow-Origin: *');
 */     /* $(document).ready(function(){    
        	$.ajax({
            	crossOrigin: true   // 크로스도메인 해결 플러그인
           	})
		}) */
        
		var xhr = new XMLHttpRequest();
	      var url = 'http://api.data.go.kr/openapi/fshlc-info-std'; /*URL*/
	      
	      var queryParams = '?'
	            + encodeURIComponent('ServiceKey')
	            + '='
	            + 'jaWvwp%2FnA5aEEWuqg66iLJF7yCE9KKeEBLOn7KxW2pA8VHjjaDiwHGUQDSCedHcKNpBWjzCe9YHHgpO5M03Vjw%3D%3D'; /*Service Key*/
	      queryParams += '&' + encodeURIComponent('s_page') + '='
	            + encodeURIComponent('0'); /*조회 시작 지점*/
	      queryParams += '&' + encodeURIComponent('s_list') + '='
	            + encodeURIComponent('100'); /*한 번에 조회될 최대 row 갯수*/
	      queryParams += '&' + encodeURIComponent('type') + '='
	            + encodeURIComponent('xml'); /*XML/JSON 여부*/
	      queryParams += '&' + encodeURIComponent('fshlc_nm') + '='
	            + encodeURIComponent('신동지낚시터'); /*낚시터명*/
	      queryParams += '&' + encodeURIComponent('fshlc_type') + '='
	            + encodeURIComponent('저수지'); /*낚시터유형*/
	      queryParams += '&' + encodeURIComponent('rdnmadr') + '='
	            + encodeURIComponent('경상북도 구미시 인동가산로 595-1'); /*소재지도로명주소*/
	      queryParams += '&' + encodeURIComponent('lnmadr') + '='
	            + encodeURIComponent('경상북도 구미시 신동 61'); /*소재지지번주소*/
	      queryParams += '&' + encodeURIComponent('latitude') + '='
	            + encodeURIComponent('36.055070'); /*위도*/
	      queryParams += '&' + encodeURIComponent('hardness') + '='
	            + encodeURIComponent('128.283300'); /*경도*/
	      queryParams += '&' + encodeURIComponent('fshlc_phone_number') + '='
	            + encodeURIComponent(''); /*낚시터전화번호*/
	      queryParams += '&' + encodeURIComponent('water_ar') + '='
	            + encodeURIComponent('2000'); /*수면적*/
	      queryParams += '&' + encodeURIComponent('kdfsh') + '='
	            + encodeURIComponent('잉어+향어 등'); /*주요어종*/
	      queryParams += '&' + encodeURIComponent('aceptnc_co') + '='
	            + encodeURIComponent('150'); /*최대수용인원*/
	      queryParams += '&' + encodeURIComponent('wtrc_fclty_type') + '='
	            + encodeURIComponent('부유형+고정형'); /*수상시설물유형*/
	      queryParams += '&' + encodeURIComponent('use_charge') + '='
	            + encodeURIComponent('13000원'); /*이용요금*/
	      queryParams += '&' + encodeURIComponent('main_point') + '='
	            + encodeURIComponent(''); /*주요포인트*/
	      queryParams += '&' + encodeURIComponent('safentl') + '='
	            + encodeURIComponent('관리실+소화기+구명부환 및 구명줄+구급약품+방송시설 등'); /*안전시설현황*/
	      queryParams += '&' + encodeURIComponent('cvntl') + '='
	            + encodeURIComponent('화장실+분리수거함 등'); /*편익시설현황*/
	      queryParams += '&' + encodeURIComponent('cfr_trrsrt') + '='
	            + encodeURIComponent(''); /*주변관광지*/
	      queryParams += '&' + encodeURIComponent('phone_number') + '='
	            + encodeURIComponent(''); /*관리기관전화번호*/
	      queryParams += '&' + encodeURIComponent('institution_nm') + '='
	            + encodeURIComponent('경상북도 구미시청'); /*관리기관명*/
	      queryParams += '&' + encodeURIComponent('reference_date') + '='
	            + encodeURIComponent('2018-06-30'); /*데이터기준일자*/
	      queryParams += '&' + encodeURIComponent('instt_code') + '='
	            + encodeURIComponent('3740000'); /*제공기관코드*/
	      queryParams += '&' + encodeURIComponent('instt_nm') + '='
	            + encodeURIComponent('경기도 수원시'); /*제공기관명*/
	      xhr.open('GET', url + queryParams);
	      xhr.onreadystatechange = function() {
	         if (this.readyState == 4) {
	            alert('Status: ' + this.status + ' Headers: '
	                  + JSON.stringify(this.getAllResponseHeaders())
	                  + ' Body: ' + this.responseText);
	         }
	      };

	      xhr.send('');
 
		
		
		
        </script>
</head>
<body>
   <script>
     
   </script>
</body>