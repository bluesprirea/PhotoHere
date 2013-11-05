<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>NANANA!</title>
<style>
.comment {
	display: none;
}
</style>
<script>
	function initPage() {
		countComments();
		console.log('loading over.');
		registerEvents();
		
	}
	function countComments() {
		var commentList = document.querySelectorAll('.comment');
		var commentList1 = document.querySelectorAll('.commentWrite');
		for ( var i = 0; i < commentList.length; i++) {
			var currentNode = commentList[i];
			var ListCount = currentNode.querySelectorAll('span').length;
			console.log(ListCount);
			commentList1[i].insertAdjacentHTML('afterbegin', '댓글은 ' + ListCount
					+ '개야.');
		}
	}
	function registerEvents() {
		var element = document.getElementsByClassName('clickable');
		for ( var i = 0; i < element.length; i++) {
			element[i].addEventListener('click', showDDMenu, false);
		}
	}
	/* function getStyle() {
		var element1 = document.getElementsByClassName('comment');
		for(var i=0; i<element1.length;i++){
			element1[i].style.display = "inline";
		}
		
	} */
	function showDDMenu(e) {
		var element1 = e.target.parentNode.parentNode
				.querySelectorAll('.comment');
		
		//console.log(document.getElementsByClassName('comment')[1]);
		style = window.getComputedStyle(element1[0]);
		display = style.getPropertyValue('display');
		console.log(window.onload);

		if (display == 'none') {
			element1[0].style.display = 'block';
		} else {
			element1[0].style.display = 'none';
		}
		
		e.returnValue = false;
		/* window.open('/photo/list','_self', 'scrollbars=yes') */
	}
	
	
	
	window.onload = initPage;
</script>
</head>

<body >
	<!-- 글쓰기 form -->
	<header>
	<h1>Here's a list.</h1>
	</header>

	<div id="formArea">
		<form action="/photo" method="post" enctype="multipart/form-data">
			제목 <input type="text" name="title" size=40> <br />
			<textarea name="contents" rows="10" cols="50"></textarea>
			<br /> <input type="file" name="filename"> <br /> <input
				type="submit" value="Submit"> <input type="reset"
				value="Delete Text">
		</form>
	</div>
	<hr>

	<c:forEach items="${mapmap}" var="board">
		<div class='wrapper'>
			제목: <a href="/photo/${board.id}">${board.title}</a> <br>

			<c:if test="${not empty board.filename}">
이미지 :<br>
				<img src="/images/${board.filename}" />
				<br>
			</c:if>
			<div class='clickable'>
				<a href="#">댓글 내놔</a>
			</div>
			<div class="comment">
				<c:forEach items="${board.comments}" var="comment">
					<c:if test="${not empty comment.id}">

						<span>${comment.contents}</span>
						<br>
					</c:if>
				</c:forEach>
				<br>
			</div>
			<div class='commentWrite'>
				<%-- <form action="/photo/comment/${board.id}" method="post">
    				  <input type="text" placeholder="댓글 적어." name="comments">
      
	                <input type="submit" value="submit">
                    </form> --%>
				<form action="/photo/comment/${board.id}" method="post">

					<input type="text" placeholder="댓글 적어." name="contents"> <input
						type="submit" value="submit">
					<form action="/photo/delete/${board.id}" method="post">
						<input type="submit" value="사진삭제">
					</form>

					<br>
			</div>
		</div>
	</c:forEach>
	<a href="/photo/upload"><button>글쓰기 화면으로 가기</button></a>
	<br />

</body>
</html>