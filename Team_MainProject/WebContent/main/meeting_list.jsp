<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="kor">
<head>
<title>Bootstrap Case</title>
<meta charset="utf-8">
<script type="text/javascript" src="http://code.jqeury.com/jquery.js"></script>
<script type="text/javascript">
 $(function(){
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
});
</script>
</head>
<body>

<div class="container">
  <h3>Tabs</h3>
  <ul class="nav nav-tabs">
    <li id=init><a href="#" id="tab1">최신순</a></li>
    <li><a href="#" id="tab2">인기순</a></li>
    <li><a href="#">그냥</a></li>
   </ul>
</div>
 
	<div id="border_main"style="margin-left: 100px; margin-top: 50px; z-index: 900">
		  <c:forEach var="dto" items="${list }">
			<div class="view view-first">
				<img src="images/main/meeting.jpg" />
				<div id ="main" class="mask">
					<h2>보드게임과 함께하는 만남</h2>
					<p style="font: 맑은고딕;">같이 미쳐봅시다!</p>
				<div class="mask">
					<h2>${dto.g_title }</h2>
					<p sstyle="font: 맑은고딕;">${dto.g_content }</p>
					<ul align=left style="font-size: 12px; list-style: none;">
						<li>접수마감 : <span>2015-10-30</span></li>					
						<li>내아이디 : ${dto.g_email }
						</li>
						<a href="#" class="info">모임참여</a>
						<a href="#" class="info">찜하기!</a>
					</ul>
				</div>
			</div>
		</div>
		</c:forEach>
	</div>
	
		<div id="border_main2"style="margin-left: 100px; margin-top: 50px; z-index: 900; display: none">
		  <c:forEach var="dto" items="${list }">
				<div class="view view-first">
				<img src="images/main/meeting.jpg" />
				<div class="mask">
					<h2>리스트2받아서 처리할거</h2>
					<p style="font: 맑은고딕;">111111111111</p>
					<ul align=left style="font-size: 12px; list-style: none;">
						<li>접수마감 : <span>2015-10-30</span></li>					
						<li>내아이디 : ${dto.g_email }
						</li>
						<a href="#" class="info">모임참여</a>
						<a href="#" class="info">찜하기!</a>
					</ul>
				</div>
			</div>
		</c:forEach>
	</div>
</body>
</html>