<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>immix - Free CSS Template by ZyPOP</title>


<link rel="stylesheet" href="main/css/reset.css" type="text/css" />
<link rel="stylesheet" href="main/css/styles.css" type="text/css" />
<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">


<!--[if lt IE 9]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->

<script type="text/javascript" src="main/js/jquery.js"></script>
<script type="text/javascript" src="main/js/slider.js"></script>
<script type="text/javascript" src="main/js/superfish.js"></script>

<script type="text/javascript" src="main/js/custom.js"></script>

<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0" />

<!--
immix, a free CSS web template by ZyPOP (zypopwebtemplates.com/)

Download: http://zypopwebtemplates.com/

License: Creative Commons Attribution
//-->
</head>
<body>
<div id="container">
    <header> 
	<div class="width">
    		<h1><a href="main.do">Nadeulmk</a></h1>
		<nav>
    		<ul class="sf-menu dropdown">
            		<li>
					<a href="examples.html">Local</a>
					<ul>
                		<li><a href="three-column.html">Three Column</a></li>
						<li><a href="one-column.html">One Column</a></li>
                    	<li><a href="text.html">Text page</a></li>
                	</ul>
                	
            		</li>
					<li>
					<a href="#">Products</a>
					<ul>
                		<li><a href="#">Product One</a></li>
                   		<li><a href="#">Product Two</a></li>
                   		<li><a href="#">Product Three</a></li>
                	</ul>

            		</li>
            	<li><a href="#">Seminar</a></li>
				<li><a href="#">Custom</a></li>
				<li><a href="login.do">Login</a></li>
       		</ul>
       		 <c:if test="${sessionScope.email==null }">
			<a href="login.do">로그인</a>
			<a href="join.do">회원가입</a>
            <a href="#">고객센터</a>
				  </c:if>
			 <c:if test="${sessionScope.email!=null }">
			    <form method=post action="logout.do" id="logout_frm">
			 	<a href="logout.do" id="logoutBtn">로그아웃</a>
				<a href="join.do">내정보보기</a>
            	<a href="#">고객센터</a>
            	<br>
				${sessionScope.name }(${sessionScope.admin == 'y'?"관리자":"일반" }) 님 로그인중입니다
				</form>
			</c:if>

			
			<div class="clear"></div>
    		</nav>
       	</div>

	<div class="clear"></div>

       
    </header>
    	
 	<div class="middleContent">
		<jsp:include page="${jsp }"></jsp:include>
	</div> 
	

<<<<<<< HEAD
=======

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
>>>>>>> refs/remotes/origin/master

    <footer>
        <div class="footer-content width">
            <ul>
            	<li><h4>Proin accumsan</h4></li>
                <li><a href="#">Rutrum nulla a ultrices</a></li>
                <li><a href="#">Blandit elementum</a></li>
                <li><a href="#">Proin placerat accumsan</a></li>
                <li><a href="#">Morbi hendrerit libero </a></li>
                <li><a href="#">Curabitur sit amet tellus</a></li>
            </ul>
            
            <ul>
            	<li><h4>Condimentum</h4></li>
                <li><a href="#">Curabitur sit amet tellus</a></li>
                <li><a href="#">Morbi hendrerit libero </a></li>
                <li><a href="#">Proin placerat accumsan</a></li>
                <li><a href="#">Rutrum nulla a ultrices</a></li>
                <li><a href="#">Cras dictum</a></li>
            </ul>

 	    <ul>
                <li><h4>Suspendisse</h4></li>
                <li><a href="#">Morbi hendrerit libero </a></li>
                <li><a href="#">Proin placerat accumsan</a></li>
                <li><a href="#">Rutrum nulla a ultrices</a></li>
                <li><a href="#">Curabitur sit amet tellus</a></li>
                <li><a href="#">Donec in ligula nisl.</a></li>
            </ul>
            
            <ul class="endfooter">
            	<li><h4>Suspendisse</h4></li>
                <li>Integer mattis blandit turpis, quis rutrum est. Maecenas quis arcu vel felis lobortis iaculis fringilla at ligula. Nunc dignissim porttitor dolor eget porta. <br /><br />

<div class="social-icons">

<a href="#"><i class="fa fa-facebook fa-2x"></i></a>

<a href="#"><i class="fa fa-twitter fa-2x"></i></a>

<a href="#"><i class="fa fa-youtube fa-2x"></i></a>

<a href="#"><i class="fa fa-instagram fa-2x"></i></a>

</div>

</li>
            </ul>
            
            <div class="clear"></div>
        </div>
        <div class="footer-bottom">
            <p>&copy; YourSite 2015. <a href="http://zypopwebtemplates.com/">Free CSS Web Templates</a> by ZyPOP</p>
         </div>
    </footer>
</div>
</body>
</html>