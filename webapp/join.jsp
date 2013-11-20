<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	input[type=text] {
		margin-top : 20px;
		padding : 5px;
		background : #9cf;
		border : none;
		font-size : 14px;
		color : white;
		border-radius : 10px;
		-moz-border-radius : 10px;
		-webkit-border-radius : 10px;
	}
	input[type=password] {
		margin-top : 20px;
		padding : 5px;
		background : #9cf;
		border : none;
		font-size : 14px;
		color : white;
		border-radius : 10px;
		-moz-border-radius : 10px;
		-webkit-border-radius : 10px;
	}
	body{
		background:#000;
		font-family:"Trebuchet MS", Helvetica, sans-serif;
		font-size:15px;
		color: #fff;
		text-transform:uppercase;
		overflow-x:hidden;
	}
	header > h1 {
	font-family : Raleway,Helvetica Neue,Helvetica,Arial,sans-serif;
	font-size : 4em;
	font-weight : 100; /*default value : 4000 */!
	letter-spacing : 0.1em;
	text-align : center;
	margin-top :100px;
	}
</style>
</head>
<body>
<header>
<h1> 가입 안하고 뭐했니. </h1>
</header>
<center>
<form action="/join" method="post">
ID 입력: <input type="text" name="userid"><br>
이름 입력: <input type="text" name="name"><br>
password: <input type="password" name="password"><br><br>
<input type="submit" value="가입이나 하시지.">
</center>
</body>
</html>