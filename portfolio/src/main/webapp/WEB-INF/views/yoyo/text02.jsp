<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
   <%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://sgis.kostat.go.kr/OpenAPI2/Key.do?serviceKey=jaWvwp%2FnA5aEEWuqg66iLJF7yCE9KKeEBLOn7KxW2pA8VHjjaDiwHGUQDSCedHcKNpBWjzCe9YHHgpO5M03Vjw%3D%3D" type="text/javascript" ></script>

<script type="text/javascript">
      var xhr = new XMLHttpRequest();
      var url = 'http://api.data.go.kr/openapi/fshlc-info-std'; /*URL*/
      var queryParams = '?'
            + encodeURIComponent('serviceKey')
            + '='
            + 'jaWvwp%2FnA5aEEWuqg66iLJF7yCE9KKeEBLOn7KxW2pA8VHjjaDiwHGUQDSCedHcKNpBWjzCe9YHHgpO5M03Vjw%3D%3D'; /*Service Key*/
      queryParams += '&' + encodeURIComponent('s_page') + '='
            + encodeURIComponent('0'); /*조회 시작 지점*/
      queryParams += '&' + encodeURIComponent('s_list') + '='
            + encodeURIComponent('100'); /*한 번에 조회될 최대 row 갯수*/
     
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
   
</body>
</html>