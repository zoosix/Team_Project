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
		<center>
		<hr />
		<div class="row">
			<div class="col-md-10">
				<table class="table table-condensed">
					<thead>
						<tr align="center">
							<th width="10%">제목</th>
							<th width="60%">${list.q_title}</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>작성일</td>
							<td>${list.db_qday}</td>
						</tr>
						<tr>
							<td>글쓴이</td>
							<td>${list.q_mail}
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<p>${list.q_content}</p>

							</td>
						</tr>
					</tbody>
				</table>
				<table id="commentTable" class="table table-condensed"></table>
				<table class="table table-condensed">
					<tr>
						<td><span class="form-inline" role="form">
								<p>
                                        <div class="form-group">
                                            <button type="button"
										id="commentParentSubmit" name="commentParentSubmit"
										class="btn btn-default">확인</button>
                                        </div>
                                    </p>
								
                                        <textarea id="commentParentText"
									class="form-control col-lg-12" style="width:100%" rows="4"></textarea>
                                </span>
                            </td>
                        </tr>
                    </table>
                    <table class="table table-condensed">
                        <thead>
                            <tr>
                                <td>
                   <style type="text/css"> a.btnh:HOVER{  text-decoration: none; !important;}
                    a.btnh:focus{  text-decoration: none; !important;} </style> 
                                    <span style='float:right'>
                                        <button type="button" id="list"
										class="btn btn-default" onclick="javascript:history.back()">목록</button>
                                        <button type="button"
										id="modify" class="btn btn-default"><a href="#" class="btnh"style="color:black;">수정</a></button>
                                        <button type="button"
										id="delete" class="btn btn-default"><a href="#" class="btnh" style="color:black;">삭제</a></button>
                                        <button type="button" id="write"
										class="btn btn-default"><a href="qna_insert.do" class="btnh" style="color:black;">글쓰기</a></button>
                                    </span>
                                </td>
                            </tr>
                        </thead>
                    </table>
                </div>
            </div>
            <hr />
         </center>


    </body>
</html>