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
				<h2>My Meeting</h2>
			</div>
	</div>
	<br><br>
	<div id="body">
		<!-- <h2>My Meeting</h2>
		<p>내가 신청한 모임보기.</p> -->
		<table class="table table-bordered" style="margin-top:6%;">
			<thead>
				<tr>
					<th width=10% >No</th>
					<th width=50% >Title</th>
					<th width=20% >party-Date</th>
					<th width=20% >party-status</th>
					<th width=10% >note</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="d" items="${list}">
				
					<tr>
						<td id="no" width=10% >${d.mu_no }</td>
						<td width=50% align=left><a href="meeting_detail.do?no=${d.m_no }"> ${d.m_title }</a></td>
						<td width=20% >${d.m_partDate }</td>
						<td width=20% >${d.m_end }</td>
						<td width=10% align=center>.</td>
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


</body>
</html>
