<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/main/style_common.css" />

<title>메인그림</title>
</head>
<body>
	<div id="border_main"style="margin-left: 100px; margin-top: 50px; z-index: 900">
		<c:forEach begin="1" end="9" step="1">
			<div class="view view-first">
				<img src="images/main/meeting.jpg" />
				<div class="mask">
					<h2>보드게임과 함께하는 만남</h2>
					<p style="font: 맑은고딕;">같이 미쳐봅시다!</p>
					<ul align=left style="font-size: 12px; list-style: none;">
						<li>접수마감 : <span>2015-10-30</span></li>
						<li>모집인원 : <span>20</span>명
						</li>
						<a href="#" class="info">모임참여</a>
						<a href="#" class="info">찜하기!</a>
					</ul>
				</div>
			</div>
		</c:forEach>
	</div>
</body>
</html>