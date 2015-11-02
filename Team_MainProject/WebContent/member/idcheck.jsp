<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="com.member.dao.MemberDAO"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%
	String email=request.getParameter("email");
	int count = 0;
	if(email == null)
		email = "default";
	count = MemberDAO.memberIdCount(email);
%> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function(){
	var count = $('#useremail').focus();
	var hasId = $('#hasId').val();
	var hasEmail = $('#hasEmail').val();
	
	$('#btnSub').click(function(){
		var email=$('#useremail').val();
		if(email=="")
		{
			$('#emailSpan').text("�̸����� �Է��ϼ���");
			$('#useremail').focus();
			return;
		}
		$('#emailSpan').text("");
		
		if(!$.trim($("#useremail").val()).match(/^([a-zA-Z0-9-])+\@(([a-zA-Z0-9-])+\.)+(net|com)+$/)){

			  $('#emailSpan').text("���̵�� �̸����������� �Է����ּ���. �̸��Ͼ��̵� ������, �̸��ϵ����� .com, .net�� �����մϴ�.");
			  $("#useremail").val("").focus();
			  return;
		}
		$('#idCheck').submit();
	});
});

function ok(){
	var hasEmail = $('#hasEmail').val();
	parent.join_form.email.value=hasEmail;
	parent.Shadowbox.close();
};
</script>
<title>Insert title here</title>
<style type = "text/css">
#idBody{
	color: white;
}
#idDiv{
	margin-top: 20px;
}
</style>
</head>
<body id = "idBody">
	<center>
	  <div id="idDiv">
         <form action="<%=request.getContextPath()%>/idcheck.do"
            method="post" id="idCheck" name="id_check">
            Email�Է�: <input type=text name="email" size=12 id="useremail" value="${email}"> 
            <input type=button id= "btnSub" value="���̵� üũ">
            <span style="text-align: center;color:red;" id="emailSpan"></span>
            <input type = hidden value="${email }" id="hasEmail">
         </form>
         <br>
         <br> <span id="result" style="color: yellow"></span>
         <c:if test="${result==null}">
            <span id="defaultSpan"></span>
         </c:if>
         <c:if test="${result=='NotOK'}">
            <span>��� ���� ���̵��Դϴ�</span>
         </c:if>
         <c:if test="${result=='OK'}">
            <span>��� ������ ���̵��Դϴ�</span>
            <br>
            <input type=button id= "checkBtn" value="����ϱ�" onclick="ok()">
            <br>
         </c:if>
      </div>

   </center>

</body>
</html>