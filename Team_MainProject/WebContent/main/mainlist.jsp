<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

    <div id="intro">

	<div class="width">
      
		<div class="intro-content" >
		
                    <h2>Meetups are </h2>
                    <p>다양한 친구들과 만나보세요.</p>
                                  	
			<p><a href="#" class="button button-slider">개설하기</a>
			<a href="#" class="button button-reversed button-slider">만들기</a>
			<a href="#" class="button button-reversed button-slider">만들기</a></p>
                    
            	</div>
            </div>
	</div>

    <div id="body">



	<div class="width">
		<section id="content" >
			<%
				for(int i=0;i<7;i++)
				{
			%>
           		 <div class="box">
				<p><a href=""><img src="../images/back.jpg" alt="썸네일" width=300 height=306 /></a></p>
				<a href="" class="titleCover">
					<span class="title">쿨하게 생존하라 워크샵</span>
					<span class="lang">한국어 ↔ 영어</span>
					<span class="place">서울파트너스 하우스(추후약도제공)</span>
					<span class="date">2015-10-31 ~ 2015-10-31</span>
				</a>
				<ul>
					<li>접수마감 : <span>2015-10-31</span></li>
					<li>모집인원 : <span>20</span>명</li>
				</ul>
			</div>
			<%
				}
			%>
        </section>
       
    	<div class="clear"></div>
    </div>
</div>
</body>
</html>