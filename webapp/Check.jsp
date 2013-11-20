<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" media="screen" type="text/css" href="/stylesheets/ForCheck.css" />
<style>
	a{
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
</style>
</head>
<body>
<center>
<div id='wrapper'>
<h1>게시물은 다음과 같이 달렸어.</h1><br><br>
제목 : ${mapmap.title}<br>
내용 : ${mapmap.contents} <br>
사진은 여기 있사와요 : ${mapmap.filename}<br>
<img src="/images/${mapmap.filename}"> <br>
<p>댓글달기</p>
</form><br>
<div id="comments">
<form action="/photo/${mapmap.id}/comment" method="post">

      <input type="text" placeholder="댓글 적어." name="contents">
      <!-- <textarea rows="1" cols="30" name="attachComment"></textarea> -->
                <input type="submit" value="submit">
        </form>
        <br>
</div>
<a href=/photo/Correct/${mapmap.id}> 수정하기 </a> <br><br>
<a href=/photo/list>목록 보러가기 </a> <br><br>
<a href=/> Back to the Homepage </a>
</form>
</div>
</center>
</body>
</html>