<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body><div>
	<form action="/photo" method="post" enctype="multipart/form-data">
		제목 : ${mapmap.title} 
		-> 수정할 제목 : <input type="text" name="title" size=40> <br />
		내용 : ${mapmap.contents}
		-> 수정할 내용 :<textarea name="contents" rows="10" cols="50">input Text</textarea><br />
		현재 사진은 여기 있사와요 : <img src="/images/${board.image}"/> <br> ${board.image}라는 파일이죠. <br>
		-> 수정할 사진을 다시 입력하세요.
		<input type="file" name="file" size="50" /> <br>
		<input type="submit" value="보내기">
	</form>
</div>
</body>
</html>