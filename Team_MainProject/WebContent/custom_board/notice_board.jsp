<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<!-- 템플릿 CSS -->
<link rel="stylesheet" href="css/main/reset.css" type="text/css" />
<link rel="stylesheet" href="css/main/styles.css" type="text/css" />
<link rel="stylesheet" href="css/main/meetingStyle.css"
	type="text/css" />
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet">
<meta name="viewport"
	content="width=device-width, minimum-scale=1.0, maximum-scale=1.0" />
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$('#e').click(function(){
		
	
});
</script>
</head>
<body>

	<div id="body">
		<h2>Notice</h2>
		<p>나들목에 관한 소식을 알려 드립니다.</p>
			 <div class="col-lg-6" style="margin-left:71%;">
				<div class="input-group" style="width:55%;">
					<input type="text" class="form-control" placeholder="Search for...">
					<span class="input-group-btn">
						<button class="btn btn-default" type="button"><span class="glyphicon glyphicon-search" style="height:21px ;"></span></button>
					</span>
				</div>
			</div> 
		<table class="table table-hover" style="margin-top:6%;">
			<thead>
				<tr>
					<th>No</th>
					<a href=""><th>Title</th></a>
					<th>Date</th>
					<th>Hit</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="d" items="${list}">
					<tr id=e>
						<td id="no">${d.n_No }</td>
						<td>${d.n_Title }</td>
						<td>${d.dbday }</td>
						<td>${d.n_Hit }</td>
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
		<!-- 	<footer>
		<div class="footer-content width">
			<div class="clear"></div>
		</div>
	</footer>  -->
	</div>
</body>
</html>
