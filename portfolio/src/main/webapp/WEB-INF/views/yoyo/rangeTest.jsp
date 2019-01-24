<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<div data-role="page">
  <div data-role="header">
    <h1>Slider Control</h1>
  </div>

  <div data-role="main" class="ui-content">
    <form method="post" action="/action_page_post.php">
      <label for="points">Points:</label>
      <input type="range" name="points" id="points" value="50" min="0" max="100" data-show-value="true">
      <input type="submit" data-inline="true" value="Submit">
    </form>
  </div>
</div>

</body>
</html>