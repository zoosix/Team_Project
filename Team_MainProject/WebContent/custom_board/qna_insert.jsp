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
<script type="text/javascript">
$(function(){
	$('#q_title').focus();
	$('#btnSub').click(function(){
		var tit=$('#q_title').val();
	    if(tit==""){
	    	$('q_title').focus();
	    	return;
	    }
		var cont=$('#q_content').val();
	    if(cont==""){
	    	$('#q_content').focus();
	    	return;
	    }
	    
	    $('#qwriteForm').submit();
 });
});
</script>
</head>
<body>
<div id="intro" >
			<div class="intro-content intro-content-short">
				<h2>QnA</h2>
			</div>
	</div>
	<div id="body">
		<p>Ask an Organizer</p>
		</div>
		<br><br><br>
<center>
<!-- 등록/수정 뷰 -->
<div class="board_view">
    <form id="qwriteForm" name="qwriteform" action="qna_insert_ok.do" method="post">
	<table boarder=1 width=940>
		<colgroup>
			<col width="20%" />
			<col width="*" />															
		</colgroup>
		<tbody>
			<tr>
				<th scope="row">제목</th>
				<td><input type="text" name="Q_title" id="q_title" style="width:500px;" placeholder="제목을 입력하세요" />&nbsp;&nbsp;
				<em><input type="checkbox" name="Q_pwd" value="y"  checked />비밀글</em></td>
			</tr>
										
		<tr>
			<th scope="row">내용</th>
			<td class="padding"><textarea name="Q_content" id="q_content" rows="10" cols="90" style="width:650px; height:250px;">
			</textarea></td>
			</tr>
		</tbody>		
	</table>	
		
	<!-- button -->
	   <p class="btnSubmit">
    <input type=button id="btnSub" value=등록>
    <input type=button id="btnCancel" value=취소 onclick="javascript:history.back()">
    </p>
	</form>
</div>
</center>
</body>
</html>
</html>