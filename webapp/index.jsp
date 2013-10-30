<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" media="screen" type="text/css" href="/stylesheets/ForIndex.css" />

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
		<link rel="shortcut icon" href="/images/favicon.ico" type="image/x-icon"/>
		<script src="javascripts/cufon-yui.js" type="text/javascript"></script>
		<script src="javascripts/Aller.font.js" type="text/javascript"></script>
		<script type="text/javascript">
			Cufon.replace('ul.oe_menu div a',{hover: true});
			Cufon.replace('h1,h2,.oe_heading');
		</script>
        <style type="text/css">
			span.reference{
				position:fixed;
				left:0px;
				bottom:0px;
				background:#000;
				width:100%;
				font-size:10px;
				line-height:20px;
				text-align:right;
				height:20px;
				-moz-box-shadow:-1px 0px 10px #000;
				-webkit-box-shadow:-1px 0px 10px #000;
				box-shadow:-1px 0px 10px #000;
			}
			span.reference a{
				color:#aaa;
				text-transform:uppercase;
				text-decoration:none;
				margin-right:10px;
				
			}
			span.reference a:hover{
				color:#ddd;
			}
			.bg_img img{
				width:100%;
				position:fixed;
				top:0px;
				left:0px;
				z-index:-1;
			}
			h1{
				font-size:75px;
				text-align:right;
				position:absolute;
				right:40px;
				top:20px;
				font-weight:normal;
				/*text-shadow:  0 0 3px #0096ff, 0 0 10px #fff, 0 0 20px #fff, 0 0 30px #fff, 0 0 40px #0096ff, 0 0 70px #0096ff, 0 0 80px #0096ff, 0 0 100px #0096ff, 0 0 150px #0096ff;
			*/}
			h1 span{
				display:block;
				font-size:15px;
				font-weight:bold;
			}
			h2{
				position:absolute;
				top:220px;
				left:50px;
				font-size:40px;
				font-weight:normal;
				/*text-shadow:  0 0 3px #f6ff00, 0 0 10px #fff, 0 0 20px #fff, 0 0 30px #fff, 0 0 40px #f6ff00, 0 0 70px #f6ff00, 0 0 80px #f6ff00, 0 0 100px #f6ff00, 0 0 150px #f6ff00;
*/}
		</style>
</head>
<body>


<!-- 	<img src=http://fc02.deviantart.net/fs71/f/2011/007/3/9/the_view_from_the_farm_by_theartist_guy-d36oci3.jpg alt="background" width="relative" height="600px">
	<header class="fixed-top" role="banner">
	<div class="navbar-inner">
		<div class="container">
			<nav class="nav-collapse" role="navigation">
				<ul class="nav">
					<li>
						<a href="/photo/upload"> Upload </a>
					</li>
					<li>
						<a href="photo/list"> list </a>
					</li>
				</ul>
				<ul class="hidden">
					<li>
						<a href="/login/form" class="login" data-target="#login-model" data-toggle="modal" role="button"> Login </a>
						<a href="/logout" class="login" data-target="#login-model" data-toggle="modal" role="button"> LogOut </a>
						<a href="/join/form" class="login" data-target="#login-model" data-toggle="modal" role="button"> JoinUs </a>
				</ul>
		</div>
	</div> -->
	
	<%-- <a href="/photo/upload"><h1> 사진 올리러 가기 </h1></a><br>
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

	<a href="/join/form">회원 가입하기</a> --%>
	<div class="bg_img"><img src="/images/un.jpg">
			<h1>Photo?<span>Come Here With Me!</span></h1>
<!-- 		<h2>PhotoHere.</h2> -->

		<div class="oe_wrapper">
			<div id="oe_overlay" class="oe_overlay"></div>
			<ul id="oe_menu" class="oe_menu">
				<li><a href="/photo/upload">Upload</a>
					
				</li>
				<li><a href="/photo/list">List</a>
					
				</li>
				<li><a href="/login/form">Login</a>
				
				</li>
				<li><a href="/login/logout">Logout</a>
				
				</li>
				<li><a href="/join/form">Join</a>
					
				</li>
			</ul>	
		</div>
        <div>
            <span class="reference">
                <a href="http://www.youmun.org">Come To YOUMUN Site.</a>

            </span>
		</div>

        <!-- The JavaScript -->
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.3/jquery.min.js"></script> 
        <script type="text/javascript">
            $(function() {
				var $oe_menu		= $('#oe_menu');
				var $oe_menu_items	= $oe_menu.children('li');
				var $oe_overlay		= $('#oe_overlay');

                $oe_menu_items.bind('mouseenter',function(){
					var $this = $(this);
					$this.addClass('slided selected'); //for each 'li' there
					$this.children('div').css('z-index','9999').stop(true,true).slideDown(200,function(){
						$oe_menu_items.not('.slided').children('div').hide();
						$this.removeClass('slided');
					});
				}).bind('mouseleave',function(){
					var $this = $(this);
					$this.removeClass('selected').children('div').css('z-index','1');
				});
				
                마우스가 왔을 경우에, hovered된 후에, 색깔이 바뀌도록 만들고, . 
                
                
				$oe_menu.bind('mouseenter',function(){ 
					var $this = $(this);
					$oe_overlay.stop(true,true).fadeTo(200, 0.6);
					$this.addClass('hovered');
				}).bind('mouseleave',function(){
					var $this = $(this);
					$this.removeClass('hovered');
					$oe_overlay.stop(true,true).fadeTo(200, 0);
				})
            });
        </script>
</body>
</html>