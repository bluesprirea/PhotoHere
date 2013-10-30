<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" media="screen" type="text/css" href="/stylesheets/NewWrite.css" />
</head>
<body>
<div id="wrap">
	<header>
	<h1> Big Time!</h1>
	</header>
	<div id="formArea">
		<form action="/photo" method="post" enctype="multipart/form-data">
			 제목 : <input type="text" name="title" size=40 placeholder="Title......?"> <br />
			<textarea name="contents" rows="10" cols="50" placeholder="Comments....?"></textarea><br />
			<input type="reset" name="reset" value="Reset">
			<input type="file" name="file" size="50" /> 
			<input type="submit" value="저장하기">
		</form>
	</div>
</div>
</body>
</html>