<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1> Upload Picture Here! </h1>
	<div id='wrapper'></div>
 <form action="/photo" Method=POST>
	<label for="firstname">ID : </label><input type="text" name="firstname" id="firstname" size=30>
	<br>
	<textarea name="textarea" rows="10" cols="50">Write something here</textarea>
	<br>
	<button type:"submit" name='chiho'>submit</button>
</form>
</div>
</body>
</html>