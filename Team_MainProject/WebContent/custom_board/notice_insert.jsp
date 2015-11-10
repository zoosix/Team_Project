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
$(function(){
	$('#faq_title').focus();
	$('#btnSub').click(function(){
		var ftit=$('#faq_title').val();
	    if(ftit==""){
	    	$('#faq_title').focus();
	    	return;
	    }
		var fcont=$('#faq_content').val();
	    if(fcont==""){
         	$('#faq_content').focus();
	    	return;
	    }
	    $('#writeForm').submit();
 });
});
</script>
</head>
<body>

<div id="intro" >
			<div class="intro-content intro-content-short">
				<h2>Notice</h2>
			</div>
	</div>
	<div id="body">
		<p>나들목에서 알리는 공지사항입니다.</p>
		</div>
		<br><br><br>
<center>
<input type="hidden" name="BNO" value="" />	
<input type="hidden" name="b_show" value="1" />	
<!-- 등록/수정 뷰 -->
<div class="board_view">
    <form id="writeForm" name="write_form" action="notice_insert_ok.do" method="post">
	<table cellpadding="0" cellspacing="0" border="0" summary="">
		<caption>등록/수정</caption>
		<colgroup>
			<col width="10%" />
			<col width="*" />															
		</colgroup>
		<tbody>
			<tr>
				<th scope="row">제목</th>
				<td><input type="text" name="f_title" id="faq_title" class="intxt01" style="width:500px;" value=""  placeholder="제목을 입력하세요" />&nbsp;&nbsp;
				</td>
			</tr>						
			<tr>
				<th scope="row">내용</th>
				<td class="padding"><p><textarea name="f_content" id="faq_content" rows="10" cols="90" style="width:650px; height:250px;"></textarea></p></td>
			</tr>
		</tbody>
	</table>	
	<!-- button -->
	   <p class="btnSubmit">
    <input type=button id="btnSub" value=등록>
    <input type=button id="btnCancel" value=취소 onclick="javascript:history.back()" >
    </p>
	</form>
</div>
  
</center>
</body>
</html>