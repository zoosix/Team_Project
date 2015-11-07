<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>나들목</title>
<!-- 부트스트랩 -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<!-- 템플릿 CSS -->
<link rel="stylesheet" href="css/main/reset.css" type="text/css" />
<link rel="stylesheet" href="css/main/styles.css" type="text/css" />
<link rel="stylesheet" href="css/main/meetingStyle.css" type="text/css" />
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet">
<meta name="viewport"
	content="width=device-width, minimum-scale=1.0, maximum-scale=1.0" />
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<!-- 슬라이더_스크립트 -->
<script src="js/jquery.bxslider.min.js"></script>
<script src="js/jquery.bxslider.js"></script>
<!-- 슬라이더_CSS-->
<link href="css/main/jquery.bxslider.css" rel="stylesheet" />
<script type="text/javascript">
	$(document).ready(function() {
		$('.bxslider').bxSlider({
			auto : true,
			autoControls : true,
			randomStart : true,
			controls : false
		});
	});
	
	function login()
	{
		var f=document.loginFrm;
		if(f.email.value=="")
		{   alert("이메일을 입력해주세요.");
			f.id.focus();
			return;
		}
		
		if(f.pwd.value=="")
		{   alert("비밀번호를 입력해주세요.");
			f.pwd.focus();
			return;
		}
		f.submit();
	}
	
	function search()
	{
		var f=document.searchFrm;
		if(f.word.value=="")
		{   alert("이메일을 입력해주세요.");
			f.word.focus();
			return;
		}
	}
	
	$(function(){
		$('#btnSub').click(function(){
			var word=$('#word').val();
			if(word=="")
			{
				alert("검색어를 입력해 주세요");
			}
			$('#searchFrm').submit();
		});
	});

</script>

<style type="text/css">
.inline-block, .inlineBlock {
    display: inline-block;
    zoom: 1;
}
.padding-none, .paddingNone {
    padding: 0!important;
}
</style>
</head>
<body>

	<div id="container">
		<header>
		<div class="width">
			<h1>
				<a href="main.do" style="text-decoration: none;">Naduelmok</a>
			</h1>
			<nav>
			<ul class="sf-menu dropdown">
				<li class="selected"><a href="index.html"><font
						style="font-family: 맑은 고딕;">개설하기</font> </a></li>
				<li><a href="examples.html" style="height: 60px;">언어별</a>
					<ul>
						<li><a href="three-column.html">영어</a></li>
						<li><a href="one-column.html">중국어</a></li>
						<li><a href="text.html">Text page</a></li>
					</ul></li>
				<li><a href="#" style="height: 60px;">지역별</a>
					<ul>
						<li><a href="#">Product One</a></li>
						<li><a href="#">Product Two</a></li>
						<li><a href="#">Product Three</a></li>
					</ul></li>
				<li><a href="#" style="height: 60px;">고객센터</a>
					<ul>
						<li><a href="notice.do">공지사항</a></li>
						<li><a href="#">QnA</a></li>
						<li><a href="#">FnQ</a></li>
					</ul></li>
			</ul>
			<div class="clear"></div>
			</nav>
			
			<span id="Log_group"
				style="float: right; margin: 23px; margin-right: 100px; !important">
				<c:if test="${sessionScope.email==null }">
					<a href="join.do"><button type="button" class="btn btn-default">SignUP</button></a>
					<!-- Button trigger modal -->
					<!-- Trigger the modal with a button -->
					<button type="button" class="btn btn-info "
						data-toggle="modal" data-target="#myModal">&nbsp;&nbsp;Login&nbsp;&nbsp;</button>

					<!-- Modal -->
					<div class="modal fade" id="myModal" role="dialog">
						<div class="modal-dialog modal-sm">
							<div class="modal-content">
							<form name="loginFrm" method="post" action="login_check.do">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal">&times;</button>
									<h4 class="modal-title">Login</h4>
								</div>
								<div class="modal-body">
									<div class="form-group">
									  <label for="usr">Name:</label>
									  <input type="text" class="form-control" name="email" id="email">
									</div>
									<div class="form-group">
									  <label for="pwd">Password:</label>
									  <input type="password" class="form-control"name="pwd" id="pwd">
									</div>
								</div>
								<div class="modal-footer">
										<button type="button" class="btn btn-default"
										data-dismiss="modal" onclick="login()">Login</button>
									<button type="button" class="btn btn-default"
										data-dismiss="modal">Close</button>
								</div>
								</form>
							</div>
						</div>
					</div>
			 </c:if> 
			 <c:if test="${sessionScope.email!=null }">
		       
					      <ul class="nav navbar-nav">
						        <li class="dropdown">
						          <a href="#" class="dropdown-toggle" data-toggle="dropdown">${sessionScope.name}님 환영합니다! <span class="glyphicon glyphicon-user pull-right"></span></a>
						          <ul class="dropdown-menu">
						            <li><a href="modify.do">회원정보 수정 <span class="glyphicon glyphicon-cog pull-right"></span></a></li>
						            
						            <li><a href="meeting.do">내모임보기 <span class="badge pull-right"> 42 </span></a></li>
						          
						            <li><a href="wish.do">위시리스트 <span class="glyphicon glyphicon-heart pull-right"></span></a></li>
						      
						            <li><a href="logout.do">로그아웃 <span class="glyphicon glyphicon-log-out pull-right"></span></a></li>
						          </ul>
						        </li>
						      </ul>
					
					
					<!-- <div class="btn-group">
						<button class="btn btn-default btn-sm dropdown-toggle"
							type="button" data-toggle="dropdown" aria-expanded="false">
							Mypage <span class="caret"></span>	
						</button>
						<ul class="dropdown-menu" role="menu" style="height: 100px;">
							<a href="modify.do" ><button type="button" class="btn btn-default"></button><h4>내 모임보기</h4></a>
							<a href="gtable.do" ><h4>위시리스트</h4></a>
							<a href="gtable.do" ><h4>정보수정</h4></a>
						</ul>
					</div> -->
			
				</c:if>
			</span>
		</div>
		<div class="clear"></div>
		
	
	</div>
<<<<<<< HEAD
<%-- <<<<<<< HEAD

	<div id="body">
		<div class="width">
		<ul class="bxslider" style="margin: 0px; padding: 0px;  !important">
			<li><img src="images/main/slide1.jpg" />
				<h3>안녕하세요</h3></li>
			<li><img src="images/main/slide2.jpg" />
				<h3>새로운 친구를만나보세요.</h3></li>
			<li><img src="images/main/slide3.jpg" /></li>
			<li><img src="images/main/slide4.jpg" /></li>
			<li><img src="images/main/slide5.jpg" /></li>
			<li><img src="images/main/slide6.jpg" /></li>
			<li><img src="images/main/slide7.jpg" /></li>
			<li><img src="images/main/slide8.jpg" /></li>
		</ul>
		<br>
			<span class="hero-unit"
				style="font-stretch: extra-condensed; !important">
				<h1>Hello, Naduelmok!</h1> <Br>

			</span>
			<form method="get" action="">
				<div class="col-lg-6">
					<div class="input-group"
						style="width: 65%; margin-left: 200px; margin-top: 10px;">
						<input type="text" class="form-control" placeholder="보유언어">
					</div>
				</div>
				<span class="glyphicon glyphicon-transfer"
					style="margin-right: 0px; border-right-width: 100px; right: 0px; left: 40px; top: 18px;"></span>
				<div class="col-lg-6"
					style="border-bottom-width: 10px; bottom: 21px; right: 15px;">
					<div class="input-group"
						style="width: 75%; margin-left: 95px; margin-top: 10px;">
						<input type="text" class="form-control" placeholder="교환언어">
						<span class="input-group-btn">
							<button class="btn btn-default" type="button">Search</button>
						</span>
					</div>
				</div>
			</form>
		</div>

	</div>
		<div id="switch_main"
			style="margin: 0; padding: 0; background-color: white; margin-top: 10px">
			<jsp:include page="${jsp }"></jsp:include>
			
======= --%>




		</div>
		<!-- 	<footer>
		<div class="footer-content width">
			<div class="clear"></div>
		</div>
	</footer>  -->

		<div id="switch_main"
			style="margin: 0; padding: 0; background-color: white; margin-top: 10px">
			<jsp:include page="${slide }"></jsp:include>
			<jsp:include page="${jsp }"></jsp:include>

		</div>
</header>

    <pre id="output"></pre>
</body>
</html>