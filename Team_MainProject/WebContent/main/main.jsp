<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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
</head>
<body>
	<div id="container">
		<header>
		<div class="width">
			<h1>
				<a href="/" style="text-decoration: none;">Naduelmok</a>
			</h1>
			<nav>
			<ul class="sf-menu dropdown">
				<li class="selected"><a href="index.html"><font
						style="font-family: 맑은 고딕;">개설하기</font> </a></li>
				<li><a href="language.do" style="height: 57px;">언어별</a></li>
				<li><a href="area.do" style="height: 56px;">지역별</a></li>
				<li><a href="#" style="height: 56px;">고객센터</a>
					<ul>
						<li><a href="notice.do">공지사항</a></li>
						<li><a href="#">Product Two</a></li>
						<li><a href="#">Product Three</a></li>
					</ul></li>
			</ul>
			<div class="clear"></div>
			</nav>
			
			<span id="Log_group"
				style="float: right; margin: 23px; margin-right: 100px; !important">
				<c:if test="${sessionScope.email==null }">
					<button type="button" class="btn btn-default">Sign UP</button>
					<button type="button" class="btn btn-default">Login</button>
					<!-- Button trigger modal -->
					<!-- Trigger the modal with a button -->
					<button type="button" class="btn btn-info "
						data-toggle="modal" data-target="#myModal">Open Small
						Modal</button>

					<!-- Modal -->
					<div class="modal fade" id="myModal" role="dialog">
						<div class="modal-dialog modal-sm">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal">&times;</button>
									<h4 class="modal-title">Login</h4>
								</div>
								<div class="modal-body">
									<div class="form-group">
									  <label for="usr">Name:</label>
									  <input type="text" class="form-control" id="usr">
									</div>
									<div class="form-group">
									  <label for="pwd">Password:</label>
									  <input type="password" class="form-control" id="pwd">
									</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-default"
										data-dismiss="modal">Close</button>
								</div>
							</div>
						</div>
					</div>

			 </c:if> 
			 <c:if test="${sessionScope.email!=null }">
		          <form method=post action="logout.do" id="logout_frm">
					<button type="button" class="btn btn-dager"  ><a href="logout.do" class="mainGo">Logout</a></button>

				</c:if> <c:if test="${sessionScope.email!=null }">
					<button type="button" class="btn btn-dager">Logout</button>

					<div class="btn-group">
						<button class="btn btn-default btn-sm dropdown-toggle"
							type="button" data-toggle="dropdown" aria-expanded="false">
							Small button <span class="caret"></span>
						</button>
						<ul class="dropdown-menu" role="menu" style="height: 100px;">
							<h3>야잉ㅁ</h3>
						</ul>
					</div>
				</c:if>
			</span>
		</div>
		<div class="clear"></div>
	
	</div>


	

		<div id="switch_main"
			style="margin: 0; padding: 0; background-color: white; margin-top: 10px">

			<jsp:include page="${jsp }"></jsp:include>

		</div>
</header>
</body>
</html>