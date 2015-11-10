<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<style type="text/css">
.groupCard--gradient {
    height: 100%;
    width: 100%;
    position: absolute;
    background-color: transparent;
    background-image: -webkit-linear-gradient(rgba(15,20,31,0) 0,rgba(15,20,31,.1) 25%,rgba(15,20,31,.8) 100%);
    background-image: linear-gradient(rgba(8, 8, 8, 0.51) 0,rgba(15,20,31,.1) 25%,rgba(15,20,31,.8) 100%)
    
}
#tit{
    margin-bottom: 10px;
    letter-spacing: -1px;
    font-weight: 300;
    font-size: 1.7em;
    margin-top: 100px;
    font-family: 다음;
    font-size: x-large;
    float: left;
    margin-left: 25px;
    color: white;
     width: 250px;
}

#tit1{
    margin-bottom: 10px;
    letter-spacing: -1px;
    font-size: 1.7em;
    font-family: 다음;
    font-size: medium;
    margin-left: 40px;
    color: hsla(64, 92%, 48%, 0.93);
}
.detail_list
{
  font-family: 다음;
  color: white;

}
</style>
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

			<c:forEach var="dto" items="${list }">
			<div class="view view-first" id="${dto.m_no }" style="background-image: url('images/main/meeting.jpg'); background-repeat: no-repeat;">
			<div class="groupCard--gradient">
				<span id="tit">${dto.m_title }</span>
				<span id="tit1"><br> 모임일 : 2015-11-25 ~ 2015-12-20
				<br>장소: ${dto.m_location}( ${dto.m_place} )</span>
			</div>
				<div class="mask">
					<h2>${dto.m_title }</h2>
					<p sstyle="font-family:다음;">${dto.m_content }</p>
					<ul align=left style="font-size: 12px; list-style: none;" class="detail_list">
						<li>접수마감일 : <span>2015-10-30</span></li>
						<li>개설자 아이디 : ${dto.m_email }</li>
						<a href="meeting_detail.do?no=${dto.m_no }" class="info" style="margin-left:30px; margin-top:10px;">모임참여</a>
						<a href="meeting_zzim.do?mno=${dto.m_no }" class="info">찜취소</a>
<%-- 						<a href="meeting_zzim.do?mno=${dto.m_no }" class="info" style="background:transparent; !important">
						<img src="images/nowish.png" width="22px" height="26px" /> --%>
						</a>
					</ul>

				</div>
			</div>
		</c:forEach>
		</c:if>
	</div>

	
	
	
</div>
</body>
</html>