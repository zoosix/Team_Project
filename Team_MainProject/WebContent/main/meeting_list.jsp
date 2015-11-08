<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="kor">
<head>
<title>Bootstrap Case</title>
<meta charset="utf-8">
<script type="text/javascript" src="js/ajax/ajax2.js"></script>
<script type="text/javascript">
	$(function() {
		$('#init').addClass('active');

		$('.nav.nav-tabs li').click(function() {
			$('.nav.nav-tabs li.active').removeClass('active');
			$(this).addClass('active');
		});
		$('#tab1').click(function() {
			$('#border_main2').hide();
			$('#border_main').show();
		});

		$('#tab2').click(function() {
			$('#border_main').hide();
			$('#border_main2').show();
		});
		$('#cal').click(function() {
			$(this).addClass('active');
			$('#border_main3').show();
		});
		$('.datepicker').datepicker()
	});

	/*   function pushday(){
	 var daymeet=$('#day_meeting').attr("value");
	 $('#day').val(daymeet);
	 var param="daymeet="+daymeet;
	 sendMessage("GET", "daymeet.do", param, daymeet);
	 }

	 function daymeet(){
	 if(httpRequest.readyState==4){
	 if(httpRequest.status==200){
	 $('.daylist').html(httpRequest.responseText);	
	 }    
	 }
	 } */
</script>

<style type="text/css">
.inline-block, .inlineBlock {
	display: inline-block;
	zoom: 1;
}

.padding-none, .paddingNone {
	padding: 0 !important;
}
</style>
</head>
<body>

	<div class="container">
		<ul class="nav nav-tabs"
			style="margin-right: 100px; margin-left: 5px; max-width: 80%;">
			<li id=init><a href="#" id="tab1">최신순</a></li>
			<li><a href="#" id="tab2">인기순</a></li>
			<!-- <button class="btn btn-default" type="button"  style="margin-left:620px;" >Calender</button> -->
			<li style="margin-left: 635px;"><a href="#" id="cal"
				data-toggle="modal" data-target="#myModal2">달력</a></li>
	</div>
	</ul>

	<div id="border_main"
		style="margin-left: 10px; margin-top: 50px; z-index: 900">
		<c:forEach var="dto" items="${list }">

			<div class="view view-first"
				style="background-image: url('images/main/meeting.jpg'); background-repeat: no-repeat;">
				<h3 style="background-color: black; color: white; !important">${dto.m_title }</h3>
				<div class="mask">
					<h2>${dto.m_title }</h2>
					<p sstyle="font: 맑은고딕;">${dto.m_content }</p>
					<ul align=left style="font-size: 12px; list-style: none;">
						<li>접수마감 : <span>2015-10-30</span></li>
	"src/com/model/MeetingDetailModel.java"					<li>내아이디 : ${dto.m_email }</li>
						<a href="meeting_detail.do" class="info">모임참여</a>
						<a href="meeting_zzim.do?mno=${dto.m_no }" class="info">찜하기!</a>
					</ul>

				</div>
			</div>

		</c:forEach>
	</div>

	<div id="border_main2"
		style="margin-left: 10px; margin-top: 50px; z-index: 900; display: none">
		<c:forEach var="dto" items="${list }">

			<div class="view view-first">
				<img src="images/main/meeting.jpg" />
				<h2>${dto.m_title }</h2>
				<div class="mask">
					<h2>리스트2받아서 처리할거</h2>
					<p style="font: 맑은고딕;">111111111111</p>
					<ul align=left style="font-size: 12px; list-style: none;">
						<li>접수마감 : <span>2015-10-30</span></li>
						<li>내아이디 : ${dto.m_email }</li>
						<a href="meeting_detail.do" class="info">모임참여</a>
						<a href="#" class="info">찜하기!</a>
					</ul>
				</div>
			</div>
		</c:forEach>
	</div>

	<div id="border_main3" style="margin-left: 10px; margin-top: 50px; z-index: 900; display: none">

		<!--  달력 -->
		<!-- Modal -->
		<div class="modal fade" id="myModal2" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title" style="color: black;">날짜별 모임</h4>
					</div>
					<div class="modal-body">
						<%-- <!-- 캘린다 -->
						        <!-- <form name="dayFrm" method="post" action="main.do">  "day.value=(this).value-->
						           <input type=date name="day_meeting" class="day_meeting" id="day_meeting" onchange="pushday()" value="${partDate }">
						            <input type=text name="day" id="day"  value="${partDate }"> 
						           <br><br> --%>
						<iframe
							src="https://calendar.google.com/calendar/embed?title=%EB%AA%A8%EC%9E%84%EC%9D%BC%EC%A0%95&amp;height=600&amp;wkst=1&amp;hl=ko&amp;bgcolor=%23ffffff&amp;ctz=Asia%2FSeoul"
							style="border: solid 1px #777" width="800" height="600"
							frameborder="0" scrolling="no"></iframe>

					</div>
					<div class="modal-footer">
						<%-- 			        <span class="daylist">gg </span>       
				       ------
							        <c:forEach var="d" items="${dlist }">
							                                        모임타이틀: ${d.m_title }
				                    </c:forEach>   --%>

					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>
</body>
</html>