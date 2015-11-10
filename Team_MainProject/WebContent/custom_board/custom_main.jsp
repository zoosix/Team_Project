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
<link rel="stylesheet" href="../css/main/reset.css" type="text/css" />
<link rel="stylesheet" href="../css/main/styles.css" type="text/css" />
<link rel="stylesheet" href="../css/main/meetingStyle.css"
	type="text/css" />
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet">
<meta name="viewport"
	content="width=device-width, minimum-scale=1.0, maximum-scale=1.0" />
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>

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
				<li class="selected"><a href="meeting_insert.do"><font
						style="font-family: 맑은 고딕;">개설하기</font> </a></li>
				<li><a href="meeting_type.do?lang=영어" style="height: 57px;">언어별</a></li>
				<li><a href="meeting_place.do?place=홍대" style="height: 56px;">지역별</a></li>
				<li><a href="#" style="height: 56px;">고객센터</a>
				<ul>
						<li><a href="notice.do">공지사항</a></li>
						<li><a href="qna.do">QnA</a></li>
						<li><a href="faq.do">FAQ</a></li>
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
					<button type="button" class="btn btn-info " data-toggle="modal"
						data-target="#myModal">&nbsp;&nbsp;Login&nbsp;&nbsp;</button>

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
											<label for="usr">Name:</label> <input type="text"
												class="form-control" name="email" id="email">
										</div>
										<div class="form-group">
											<label for="pwd">Password:</label> <input type="password"
												class="form-control" name="pwd" id="pwd">
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
				</c:if> <c:if test="${sessionScope.email!=null }">

					<ul class="nav navbar-nav">
						  <style type="text/css"> a.dropdown-toggle:HOVER{background-color:transparent !important;} </style> 
						<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color: white; padding-top: 0px;">${sessionScope.name}님
								환영합니다 <span class="glyphicon glyphicon-user pull-right"></span>
						</a>
							<ul class="dropdown-menu">
								<li><a href="modify.do"><span
										class="glyphicon glyphicon-cog pull-right"></span>회원정보 수정</a></li>
								<br>
								<li><a href="meeting.do"><span class="badge pull-right">
											2 </span>내모임보기</a></li>
								<br>
								<li><a href="wish.do"><span
										class="glyphicon glyphicon-heart pull-right"></span>위시리스트 </a></li>
								<br>
								<li><a href="logout.do"><span
										class="glyphicon glyphicon-log-out pull-right"></span>로그아웃 </a></li>
							</ul></li>
					</ul>

				</c:if>
			</span>
		</div>
		<div class="clear"></div>
		</header>
	</div>
	<!-- <div id="intro">
		<div class="width">
			<div class="intro-content intro-content-short">
				<h2>Custom</h2>
			</div>
		</div>
	</div> -->
	<jsp:include page="${jsp}"></jsp:include>
	
	
</body>
</html>