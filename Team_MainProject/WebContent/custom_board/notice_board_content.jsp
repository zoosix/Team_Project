<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<!-- meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0"/ -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title></title>
<link rel="stylesheet" href="css/main/reset.css" type="text/css" />
<link rel="stylesheet" href="css/main/styles.css" type="text/css" />
<link rel="stylesheet" href="css/main/meetingStyle.css"
	type="text/css" />
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet">
<!-- 부트스트랩 -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요한) -->
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
</head>
<body>
		<hr />
		<div class="row">
			<div class="col-md-10" style="left:105px;">
				<table class="table table-condensed">
					<thead>
						<tr align="center">
							<th width="10%">제목</th>
							<th width="60%">${list.n_Title }</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>작성일</td>
							<td>${list.dbday }</td>
						</tr>
						<tr>
							<td>글쓴이</td>
							<td>운영자 <span style='float: right'>조회 : ${list.n_Hit }</span>
							</td>
						</tr>
						<tr>
							<td colspan="2" style="padding-bottom: 350px;">
								<p>${list.n_Content }</p>
							</td>
						</tr>
					</tbody>
				</table>
				<table id="commentTable" class="table table-condensed"></table>
                    <hr />
                    <table class="table table-condensed">
                        <thead>
                            <tr>
                                <td>
                                    <span style='float:right'>
                                        <button type="button" id="list"
										class="btn btn-default">목록</button>
										<!-- 공지사항의 경우 관리자 모드일때 아래 버튼 사용 -->
										<c:if test="${sessionScope.admin=='y' }">
                                        <button type="button"
										id="modify" class="btn btn-default">수정</button>
                                        <button type="button"
										id="delete" class="btn btn-default">삭제</button>
                                        </c:if>
                                    </span>
                                </td>
                            </tr>
                        </thead>
                    </table>
                </div>
            </div>
            <hr />
    </body>
</html>