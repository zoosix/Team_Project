<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,java.text.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="mypage/mypage.css"/>
<link rel="stylesheet" href="css/main/reset.css" type="text/css" />
<link rel="stylesheet" href="css/main/styles.css" type="text/css" />
<link rel="stylesheet" href="css/main/meetingStyle.css"
	type="text/css" />
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
</head>
<body> 
<Center>
<div class="mypage_meeting">
<div class="col-md-12">
<br><br><br><br>
	<h2>마이페이지<span>MY PAGE</span></h2>
  	<!-- ============================================================================================ -->
  	<table border=0 width=940>
  	<div class="communityCover" >
		<ul class="menu_list type02">
		    <li><a href="meeting.do" style="background:#2281c0; color:#fff;">내모임보기</a></li>
			<li><a href="wish.do">위시리스트</a></li>
			<li><a href="modify.do">회원정보수정</a></li>				
		</ul>
      </div>
</table>

	<div id="body">
		<h2>My Meeting</h2>
		<p>내가 신청한 모임보기.</p>
		<table class="table table-bordered" style="margin-top:6%;">
			<thead>
				<tr>
					<th width=10%>No</th>
					<th width=40%>Title</th>
					<th width=30%>party-Date</th>
					<th width=20%>party-status</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="d" items="${list}">
				
					<tr>
						<td id="no" width=10%>${d.mu_no }</td>
						<td width=40%><a href="meeting_detail.do?no=${d.m_no }"> ${d.m_title }</a></td>
						<td width=30%>${d.m_partDate }</td>
						<td width=20%>${d.m_end }</td>
					</tr></c:forEach> 
			</tbody>
		</table>
	
		<!-- 	<footer>
		<div class="footer-content width">
			<div class="clear"></div>
		</div>
	</footer>  -->
	</div>




	<!-- -------------------------------------------------------------------------------------- -->
			
	</div> 
	</div>
</center>

</body>
</html>
