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
	
	$(function(){
		$('#searchBtn').click(function(){
			var word=$('#word').val();
			if(word=="")
			{
				alert("검색어를 입력해 주세요");
				return;
			}
			$('#searchFrm').submit();
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
				<h2>FAQ</h2>
			</div>
	</div>
	<div id="body">
		<p>자주묻는 질문</p>
		<div class="col-lg-6" style="margin-left:71%;">
				<div class="input-group" style="width:55%;">
				<form method="get" id="searchFrm" action="f_search.do">
					<input type="text" class="form-control" placeholder="Search for..." id=word name=word>
					<span class="input-group-btn">
						<button class="btn btn-default" type="button"  id=searchBtn><span class="glyphicon glyphicon-search" style="height:21px ;"></span></button>
					</span>
			    </form>
 		</div> 
		</div> 
		<table class="table table-bordered" style="margin-top: 6%;">
		
		
		<c:if test="${sessionScope.admin=='y' }">
	<ul class="pagination" height=35px;><li><a href="faq_insert.do">등록</a></li></ul>
         </c:if> 
		
		
		
			<thead>
				<tr>
					<th>No</th>
					<th>Title</th>
					<th>Date</th>
					<th>Writer</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="d" items="${list}">
					<tr>
						<td width="5%">${d.f_no}</td>
						<td><a href="#" style="text-decoration: none;" class="flip"
							value='${d.f_no}'>${d.f_title }</a></td>
						<td width="20%">${d.db_fday }</td>
						<td width="5%">admin</td>
					</tr>
					<tr id="panel${d.f_no}" height="100px" class="pan">
						<td colspan="4" align="center"><pre>${d.f_content }</pre>
						<c:if test="${sessionScope.admin=='y' }">         
						<hr border=1>
						<a href="#">수정</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="f_delete.do?no=${d.f_no }">삭제</a></td>
						</c:if> 

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
				<li><a href="faq.do?page=${i }">${i }</a></li>
				</c:forEach>
				<li><a href="#" aria-label="Next"> <span aria-hidden="true">&raquo;</span></a></li>
			</ul>
			</nav1> 
		</center>
	</div>
</body>
</html>
