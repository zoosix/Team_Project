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
<style type="text/css">
.form-wrapper {
    width: 450px;
    padding: 8px;
    margin: 100px auto;
    overflow: hidden;
    border-width: 1px;
    border-style: solid;
    border-color: #dedede #bababa #aaa #bababa;
    box-shadow: 0 3px 3px rgba(255,255,255,.1), 0 3px 0 #bbb, 0 4px 0 #aaa, 0 5px 5px #444;
    border-radius: 10px;    
    background-color: #f6f6f6;
    background-image: linear-gradient(top, #f6f6f6, #eae8e8);
}

.form-wrapper #search {
    width: 330px;
    height: 20px;
    padding: 10px 5px;
    float: left;    
    font: bold 16px 'lucida sans', 'trebuchet MS', 'Tahoma';
    border: 1px solid #ccc;
    box-shadow: 0 1px 1px #ddd inset, 0 1px 0 #fff;
    border-radius: 3px;      
}

.form-wrapper #search:focus {
    outline: 0; 
    border-color: #aaa;
    box-shadow: 0 1px 1px #bbb inset;  
}

.form-wrapper #search::-webkit-input-placeholder {
   color: #999;
   font-weight: normal;
}

.form-wrapper #search:-moz-placeholder {
    color: #999;
    font-weight: normal;
}

.form-wrapper #search:-ms-input-placeholder {
    color: #999;
    font-weight: normal;
} 

.form-wrapper #submit {
    float: right;    
    border: 1px solid #00748f;
    height: 42px;
    width: 100px;
    padding: 0;
    cursor: pointer;
    font: bold 15px Arial, Helvetica;
    color: #fafafa;
    text-transform: uppercase;    
    background-color: red;
    background-image: linear-gradient(top, #31b2c3, #0483a0);
    -moz-border-radius: 3px;
    -webkit-border-radius: 3px;
    border-radius: 3px;      
    text-shadow: 0 1px 0 rgba(0, 0 ,0, .3);
    box-shadow: 0 1px 0 rgba(255, 255, 255, 0.3) inset, 0 1px 0 #fff;
}
  
.form-wrapper #submit:hover,
.form-wrapper #submit:focus {       
    background-color: #31b2c3;
    background-image: linear-gradient(top, #0483a0, #31b2c3);
}   
  
.form-wrapper #submit:active {
    outline: 0;    
    box-shadow: 0 1px 4px rgba(0, 0, 0, 0.5) inset;    
}
  
.form-wrapper #submit::-moz-focus-inner {
    border: 0;
}
</style>

</head>
<body>
<div id="container">
    <header> 
	<div class="width">
    		<h1><a href="main.do">Nadeulmok</a></h1>
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
 		<jsp:include page="${slide }"></jsp:include>

		<jsp:include page="${jsp }"></jsp:include>

	</div>  
	

    <div id="intro">

	<div class="width">
      
		<div class="intro-content" >
			
                    <h2>Meetups are </h2>
                    <p>neighbors getting together to learn something, do something, share something… </p>
                                  	
			<p><a href="#" class="button button-slider">개설하기</a>
			<a href="#" class="button button-reversed button-slider">만들기</a>
			<a href="#" class="button button-reversed button-slider">만들기</a></p>

            	</div>
            </div>
	</div>

    <footer>
        <div class="footer-content width">
            <ul>
            	<li><h4>Proin accumsan</h4></li>
                <li><a href="#">Rutrum nulla a ultrices</a></li>
                <li><a href="#">Blandit elementum</a></li>
 
            </ul>
            
            <ul>
            	<li><h4>Condimentum</h4></li>
                <li><a href="#">Curabitur sit amet tellus</a></li>
                <li><a href="#">Morbi hendrerit libero </a></li>

            </ul>

 	    <ul>
                <li><h4>Suspendisse</h4></li>
                <li><a href="#">Morbi hendrerit libero </a></li>
                <li><a href="#">Proin placerat accumsan</a></li>
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