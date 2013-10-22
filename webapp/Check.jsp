<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
제목 : ${mapmap.title}<br>
내용 : ${mapmap.contents} <br>
사진은 여기 있사와요 : <br>
<img src="/images/${mapmap.filename}"/> <br>
${board.image}
<a href=/photo/Correct/${mapmap.id}> 다시 올리기 </a> <br>
</body>
</html>