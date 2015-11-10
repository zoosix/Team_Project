<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- 템플릿 CSS -->
<link rel="stylesheet" href="css/main/reset.css" type="text/css" />
<link rel="stylesheet" href="css/main/styles.css" type="text/css" />
<link rel="stylesheet" href="css/main/meetingStyle.css" type="text/css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
</head>
<body>
	<div id="intro" style="margin-top:-10px;">
			<div class="intro-content intro-content-short">
				<h2>WishList</h2>
			</div>
	</div>
	<br><br>
	<div id="body">
			<div id="border_main" style="margin-left: 100px; margin-top: 50px; z-index: 900">
			<c:if test="${count==0 }">
				<center><h2>No wish meeting</h2></center>
			</c:if>
			<c:if test="${ count!=0}">
			<c:forEach var="d" items="${list }">	
			<div class="view view-first"
				style="background-image: url('images/main/meeting.jpg'); background-repeat: no-repeat;">
				<h3 style="background-color: black; color: white; !important">${dto.m_title }</h3>
				<div class="mask">
					<h2 align=center>${d.m_title }</h2>
					<p>${d.m_summary }</p>
					<ul align=left style="font-size: 12px; list-style: none;">
						<li>접수마감 : <span>${d.m_meetingDate }</span></li>
						<%-- <li>모집인원 : <span>${d.m_TotalNum }</span>명 --%>
						<li>교환언어 : <span>${d.m_lang1 }</span> ↔ <span>${d.m_lang2 }</span></li>
						</li>
						<a href="meeting_detail.do" class="info" style="margin-left:30px; margin-top:10px;">모임참여</a>
					<a href="meeting_zzim.do?mno=${d.m_no }" class="info">찜취소</a>
               	</ul>
				</div>
			</div>
		</c:forEach>
		</c:if>
	</div>

	
	
	
</div>
</body>
</html>