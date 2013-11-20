<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>NANANA!</title>
<link rel="stylesheet" media="screen" type="text/css" href="/stylesheets/forList.css" />
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
		var formList = document.querySelectorAll('.commentWrite input[name="submit"]');
		for (var j=0; j < formList.length; j++){
			formList[j].addEventListener('click', writeComments, false);
		}
		//html위에서 부터 읽음. 로딩될때까지 기다린다. 맨 밑의 코드, 화면이 로딩이 안된 상태에서 로드하니까 안됨. 그래서 initpage에다가 넣음.
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
	
	
	
	
	function writeComments(a){
		a.preventDefault();

		var eleForm = a.currentTarget.form; 
		var oFormData = new FormData(eleForm);
		var sID = eleForm[0].value;
		var url = "/photo/"+sID + "/comment.json";
		var request = new XMLHttpRequest();
		request.open("POST" , url, true);
		request.onreadystatechange=function(){
			
			if(request.readyState==4 && request.status==200){
				var obj = JSON.parse(request.responseText);
				console.log(obj);
				var eleCommentList = eleForm.parentNode.previousElementSibling;
				console.log(eleCommentList);
		        eleCommentList.insertAdjacentHTML("beforeend" , "<span>"+ obj.contents +"</span><br>" );
		        
			};
		};
		request.send(oFormData);
	}
	
	window.onload = initPage;
</script>
</head>

<body >
	<!-- 글쓰기 form -->
	<header>
	<h1>옛다 목록임.</h1>
	</header>

	<div id="formArea">
		<h2>글 여기다 쓰면 되지. 자, 즐겨.</h2><br><br>
		
		<form action="/photo" method="post" enctype="multipart/form-data">
			제목 <input type="text" name="title" size=40> <br />
			<textarea name="contents" rows="10" cols="50"></textarea><br>
			<input type="reset" name="reset" value="Reset"><br>
			<input type="file" name="file" size="50" /> 
			<input type="submit" value="저장하기"><br><br><br>
		</form>
	</div>
	<hr>
	<center>
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
				<form action="/photo/${board.id}/comment" method="post">
					<input type="hidden" name="id" value="${board.id}"><br>
					<input type="text" placeholder="댓글 적어." name="contents"> <input
						type="submit" value="submit" name="submit">
					<%-- <form action="/photo/delete/${board.id}" method="post">
						<input type="submit" name='id' value="사진삭제">
					</form> --%>
					<a href="/photo/delete/${board.id}">delete it.</a>

					<br>
			</div>
		</div>
	</c:forEach>
	<br><br>
	<a href="/photo/upload"><button>글쓰기 화면으로 가기</button></a>
	</center>
	<br />

</body>
</html>