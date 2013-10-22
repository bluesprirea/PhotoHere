<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<a href="/photo/upload"><h1> 사진 올리러 가기 </h1></a><br>
	<a href="/photo/list"><h1> 사진 보러가기 </h1></a><br>
	
	<c:choose>
		<c:when test="${not empty sessionScope.userId}">
		        <a href="/logout">로그아웃</a>
		        <br>
		</c:when>
		
		<c:otherwise>
		        <a href="/login/form">로그인</a>
		        <br>
		</c:otherwise>


	</c:choose>

	<a href="/join/form">회원 가입하기</a>
</body>
</html>