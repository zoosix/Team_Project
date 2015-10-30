<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="Elastic Image Slideshow with Thumbnail Preview" />
        <meta name="keywords" content="jquery, css3, responsive, image, slider, slideshow, thumbnails, preview, elastic" />
        <meta name="author" content="Codrops" />
        <link rel="shortcut icon" href="../favicon.ico"> 
    
        <link rel="stylesheet" type="text/css" href="css1/style.css" />
        <link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300|Playfair+Display:400italic' rel='stylesheet' type='text/css' />

</head>
<body>

<div class="container">
            <div class="wrapper">
                <div id="ei-slider" class="ei-slider">
                    <ul class="ei-slider-large">
						
                        <li>
                            <img src="images1/large/1.jpg" alt="image01" />
                            <div class="ei-title">
                                <h2>Make some</h2>
                                <h3>Frieds</h3>
                            </div>
                        </li>
                        <li>
                            <img src="images1/large/2.jpg" alt="image02" />
                            <div class="ei-title">
                                <h2>Friendly</h2>
                                <h3>Devil</h3>
                            </div>
                        </li>
                        <li>
                            <img src="images1/large/3.jpg" alt="image03"/>
                            <div class="ei-title">
                                <h2>Tranquilent</h2>
                                <h3>Compatriot</h3>
                            </div>
                        </li>
                        <li>
                            <img src="images1/large/4.jpg" alt="image04"/>
                            <div class="ei-title">
                                <h2>Insecure</h2>
                                <h3>Hussler</h3>
                            </div>
                        </li>
                        <li>
                            <img src="images1/large/5.jpg" alt="image05"/>
                            <div class="ei-title">
                                <h2>Loving</h2>
                                <h3>Rebel</h3>
                            </div>
                        </li>
                        <li>
                            <img src="images1/large/6.jpg" alt="image06"/>
                            <div class="ei-title">
                                <h2>Passionate</h2>
                                <h3>Seeker</h3>
                            </div>
                        </li>
                        <li>
                            <img src="images1/large/7.jpg" alt="image07"/>
                            <div class="ei-title">
                                <h2>Crazy</h2>
                                <h3>Friend</h3>
                            </div>
                        </li>
                    </ul><!-- ei-slider-large -->
                    <ul class="ei-slider-thumbs">
                        <li class="ei-slider-element">Current</li>
                        <li><a href="#">Slide 1</a><img src="images1/thumbs/1.jpg" alt="thumb01" /></li>
                        <li><a href="#">Slide 2</a><img src="images1/thumbs/2.jpg" alt="thumb02" /></li>
                        <li><a href="#">Slide 3</a><img src="images1/thumbs/3.jpg" alt="thumb03" /></li>
                        <li><a href="#">Slide 4</a><img src="images1/thumbs/4.jpg" alt="thumb04" /></li>
                        <li><a href="#">Slide 5</a><img src="images1/thumbs/5.jpg" alt="thumb05" /></li>
                        <li><a href="#">Slide 6</a><img src="images1/thumbs/6.jpg" alt="thumb06" /></li>
                        <li><a href="#">Slide 7</a><img src="images1/thumbs/7.jpg" alt="thumb07" /></li>
                    </ul><!-- ei-slider-thumbs -->
                </div><!-- ei-slider -->
             
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.0/jquery.min.js"></script>
        <script type="text/javascript" src="js/jquery.eislideshow.js"></script>
        <script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
        <script type="text/javascript">
            $(function() {
                $('#ei-slider').eislideshow({
					animation			: 'center',
					autoplay			: true,
					slideshow_interval	: 3000,
					titlesFactor		: 0
                });
            });
        </script>
</body>
</html>