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
<script>
	$(document).ready(function() {
		$(".pan").hide();
		$(".flip").click(function() {
			var fno = $(this).attr('value');
			$("#panel" + fno).slideToggle("fast");
			$("#panel" + fno).focus();
		});
	});
</script>
<style type="text/css">
.stylish-input-group .input-group-addon {
	background: white !important;
}

.stylish-input-group .form-control {
	border-right: 0;
	box-shadow: 0 0 0;
	border-color: #ccc;
}

.stylish-input-group button {
	border: 0;
	background: transparent;
}
</style>
</head>
<body>
<div id="intro" >
			<div class="intro-content intro-content-short">
				<h2>QnA</h2>
			</div>
	</div>
	<div id="body">
		<p>Ask an Organizer</p>
		
			 <div class="col-lg-6" style="margin-left:71%;">
				<div class="input-group" style="width:55%;">
					<input type="text" class="form-control" placeholder="Search for...">
					<span class="input-group-btn">
						<button class="btn btn-default" type="button"><span class="glyphicon glyphicon-search" style="height:21px ;"></span></button>
					</span>
			</div> 
		</div> 
			
				
		<table class="table table-bordered" style="margin-top:6%;">
			<thead>
				<tr>
					<th width=7%>No</th>
					<th width=57%>Title</th>
					<th width=10%>Writer</th>
				    <th width=13%>Date</th>
					<th width=13%>Status</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="d" items="${list}">
					<tr>
						<td width=7% id="no">${d.q_no }</td>
						<td width=57% ><a href="qna_content.do?no=${d.q_no}&page=${curpage}"> ${d.q_title }</a></td>
						<td width=10% >${d.q_mail }</td>
						<td width=13% >${d.db_qday }</td>
						<td width=13% ><c:if test="${d.depth==0 }">미답변</c:if>
						 <c:if test="${d.depth==1 }">답변완료</c:if></td>
					</tr>
				</c:forEach>  
			</tbody>
		</table>
		<center>
			 <nav1>
			<ul class="pagination">
				<li><a href="#" aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
				</a></li>
				<c:forEach var="i" begin="1" end="${totalpage }" step="1">
				<li><a href="notice.do?page=${i }">${i }</a></li>
				</c:forEach>
				<li><a href="#" aria-label="Next"> <span aria-hidden="true">&raquo;</span></a></li>
			</ul>
			</nav1> 
		</center>
		<ul class="pagination" height=35px;><li><a href="qna_insert.do">등록</a></li></ul>
		<!-- 	<footer>
		<div class="footer-content width">
			<div class="clear"></div>
		</div>
	</footer>  -->
	</div>
</body>
</html>
