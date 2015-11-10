<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>

<style type="text/css">
@charset "utf-8";

aside {
    float: left;
    width: 150px;
    margin: 5px 0;
    padding: 5px;
    border-radius: 5px;
    height: 300px;
    margin-left: 10px;
    margin-top: 38px;
    border-style: dotted;
}

aside nav {
	border:none;
	background:none;
}
aside nav ul {
	list-style:none;
}

aside nav li {
	padding:0 5px;
}

aside nav ul li a {
	width:200px;
	padding:5px 0;	
}

aside nav ul li a:hover {
	background-color:transparent;
	
}

article {
	margin:5px;
	padding:5px;
	border-radius:5px;	
	font-size:0.75em;
	padding:15px;
	float:left;
	width:1000px;
}

article  hgroup {
	padding:5px;
}

article  hgroup h1, article > hgroup h2{
	margin:0;
	padding:2px 0;
}

article  hgroup h1 {
	font-size:20px;
}

article  hgroup h2 {
	font-size:16px;
}

section {
	width:900px;
	padding:10px;
	margin:10px;
	border-radius:5px;
	word-wrap:break-word;
}
section  h2 {
	font-size:14px;
	padding:0 0 10px 0;
	margin:0;
	color: rgba(255,0,0,1);
}
.groupCard--gradient {
    height: 100%;
    width: 100%;
    position: absolute;
    background-color: transparent;
    background-image: -webkit-linear-gradient(rgba(15,20,31,0) 0,rgba(15,20,31,.1) 25%,rgba(15,20,31,.8) 100%);
    background-image: linear-gradient(rgba(8, 8, 8, 0.51) 0,rgba(15,20,31,.1) 25%,rgba(15,20,31,.8) 100%)
    
}
#tit{
    margin-bottom: 10px;
    letter-spacing: -1px;
    font-weight: 300;
    font-size: 1.7em;
    margin-top: 100px;
    font-family: 다음;
    font-size: x-large;
    float: left;
    margin-left: 25px;
    color: white;
}

#tit1{
    margin-bottom: 10px;
    letter-spacing: -1px;
    font-size: 1.7em;
    font-family: 다음;
    font-size: medium;
    margin-left: 40px;
    color: hsla(64, 92%, 48%, 0.93);
}
.detail_list
{
  font-family: 다음;
  color: white;

}
</style>
<link rel="stylesheet" type="text/css" href="http://static.onoffmix.com/css3/index.css?20151020" />
<!-- 템플릿 CSS -->
<link rel="stylesheet" href="../css/main/reset.css" type="text/css" />
<link rel="stylesheet" href="../css/main/styles.css" type="text/css" />
<link rel="stylesheet" href="../css/main/meetingStyle.css" type="text/css" />
<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0" />
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>

<style type="text/css">
.sideMenu .menuArea a {
    display: inline-block;
    width:175px;
	height: 50px;
    padding: 11px 0 0 0;
    background: #8CB2CA url(/images3/main/bulArrow.png) no-repeat 92% 17px;
    border: 1px solid #699BBA;
    border-bottom: 0;
    font-size: 12px;
    font-weight: bold;
    color: #fff;
    vertical-align: top;
}
</style>

<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
function lastPostFunc() {   
	   
    $.post("meeting_type.jsp?lastID=" + $(".view view-first:last").attr("id"),    // ④ test.html 페이지로 현재보여지는 리스트의 마지막값을 보내고
    function(data){ //⑤ test.html 페이지에서는 마지막값 이외에 다른 값들이 있으면 마지막 콘덴츠 밑에 보여지게 되고
        if (data != "") { 
            $(".view view-first:last").after(data);            
        } 
    });
};

$(window).scroll(function(){
    if  ($(window).scrollTop() == $(document).height() - $(window).height()){
    	lastPostFunc();
    	alert($(".view view-first:last").attr("id"));
    }
});
</script>
<meta charset="utf-8">
<title>레이아웃3 </title>
<link href="layout3.css" rel="stylesheet" type="text/css">
</head>

<body>
<div id="wrap">
<aside>

<div class="sideMenu" style="position:absolute; margin-left:-35px; margin-top:-20px;">
	<ul style="list-style-type: none; text-align: center;">
		<li class="menuArea"><a href="meeting_type.do?lang=영어"><span class="textArea">영어</span></a></li>
		<li class="menuArea"><a href="meeting_type.do?lang=중국어"><span class="textArea">중국어</span></a></li>
		<li class="menuArea"><a href="meeting_type.do?lang=일본어"><span class="textArea">일본어</span></a></li>
		<li class="menuArea"><a href="meeting_type.do?lang=일본어"><span class="textArea">독일어</span></a></li>
		<li class="menuArea"><a href="meeting_type.do?lang=일본어"><span class="textArea">프랑스어</span></a></li>
	</ul>				
</div>
</aside>
<article>
<div id="border_main"
		style="margin-left: 10px; z-index: 900">
		<c:forEach var="dto" items="${list }">
			<div class="view view-first" id="${dto.m_no }" style="background-image: url('images/main/meeting.jpg'); background-repeat: no-repeat;">
			<div class="groupCard--gradient">
				<span id="tit">${dto.m_title }</span>
				<span id="tit1"><br> 모임일 : 2015-11-25 ~ 2015-12-20
				<br>장소: ${dto.m_location}( ${dto.m_place} )</span>
			</div>
				<div class="mask">
					<h2>${dto.m_title }</h2>
					<p sstyle="font-family:다음;">${dto.m_content }</p>
					<ul align=left style="font-size: 12px; list-style: none;" class="detail_list">
						<li>접수마감 : <span>2015-10-30</span></li>
						<li>내아이디 : ${dto.m_email }</li>
						<a href="meeting_detail.do" class="info" style="margin-left:30px; margin-top:10px;">모임참여</a>
						<a href="meeting_zzim.do?mno=${dto.m_no }" class="info" style="background:transparent; !important">
						<img src="images/nowish.png" width="22px" height="26px" />
						</a>
					</ul>
				</div>
			</div>
		</c:forEach>
	</div>

</article>


</body>
</html>