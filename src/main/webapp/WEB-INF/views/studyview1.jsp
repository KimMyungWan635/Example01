<%@page import="model.ScategoryTO"%>
<%@page import="model.LcategoryTO"%>
<%@page import="java.util.Iterator"%>
<%@page import="model.BoardTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	ArrayList<LcategoryTO> LarrayList = (ArrayList<LcategoryTO>)request.getAttribute("LarrayList");
	ArrayList<ScategoryTO> SarrayList = (ArrayList<ScategoryTO>)request.getAttribute("SarrayList");

%>    
   

<!Doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>StartUp</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	
	<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>  -->
	<!-- 하단의 <script src="js/vendor/jquery-1.12.4.min.js"></script> 와 겹침. 둘중에 하나는 지워야 하는데-->
	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


    <!-- <link rel="manifest" href="site.webmanifest"> -->
    <!-- Place favicon.ico in the root directory -->

    <!-- CSS here -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/themify-icons.css">
    <link rel="stylesheet" href="css/nice-select.css">
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/gijgo.css">
    <link rel="stylesheet" href="css/animate.min.css">
    <link rel="stylesheet" href="css/slick.css">
    <link rel="stylesheet" href="css/slicknav.css">
    <link rel="stylesheet" href="css/style.css">
    <!-- <link rel="stylesheet" href="css/responsive.css"> -->

	
    
</head>

<body>
    <!--[if lte IE 9]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
        <![endif]-->
        
        
<!-- Youtube Gallery Admin Login -->





    <!-- header-start -->
    <header>
        <div class="header-area ">
            <div id="sticky-header" class="main-header-area">
                <div class="container-fluid p-0">
                    <div class="row align-items-center no-gutters">
                        <div class="col-xl-2 col-lg-2">
                            <div class="logo-img">
                                <a href="studyview1.jsp">
                                    <img src="img/A1.png" alt="">
                                </a>
                            </div>
                        </div>
                        <div class="col-xl-8 col-lg-8">
                            <div class="main-menu  d-none d-lg-block text-center">
                                <nav>
                                    <ul id="navigation">
                                        <li><a class="active" href="https://www.youtube.com/channel/UCdtzVv7J1ls4s338lzfmjjQ" target="_blank">Youtube</a></li>
                                        <li><a href="service.html">Gallery</a></li>
                                        <li><a href="Portfolio.html">Admin Login</a></li>
                                       
                                    </ul>
                                </nav>
                            </div>
                        </div>
                        <div class="col-lg-2 d-none d-lg-block">
                            <div class="log_chat_area d-flex align-items-end">
                                <a href="#" data-scroll-nav="0" class="say_hi">Say Hello</a>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="mobile_menu d-block d-lg-none"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- header-end -->


        <div class="header-area ">
            <div id="sticky-header" class="main-header-area">
                <div class="container-fluid p-0">
                    <div class="row align-items-center no-gutters">
                        <div class="col-xl-2 col-lg-2">
                            <div class="logo-img">
                                <a href="studyview1.jsp">
                                    <img src="img/A1.png" alt="">
                                </a>
                            </div>
                        </div>
                        <div class="col-xl-8 col-lg-8">
                            <div class="main-menu  d-none d-lg-block text-center">
                                <nav>
                                    <ul id="navigation">
                                        <li><a class="active" href="https://www.youtube.com/channel/UCdtzVv7J1ls4s338lzfmjjQ" target="_blank">Youtube</a></li>
                                        <li><a href="service.html">Gallery</a></li>
                                        <li><a href="Portfolio.html">Admin Login</a></li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                        <div class="col-lg-2 d-none d-lg-block">
                            <div class="log_chat_area d-flex align-items-end">
                                <a href="#" data-scroll-nav="0" class="say_hi">Say Hello</a>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="mobile_menu d-block d-lg-none"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>



    <!-- slider_area_start -->
    <div class="slider_area">
        <div class="single_slider  d-flex align-items-center slider_bg_1 overlay">
            <div class="container">
                <div class="row align-items-center justify-content-start">
                    <div class="col-lg-10 col-md-10">
                        <div class="slider_text">
                            <h3 class="wow fadeInLeft" data-wow-duration="1s" data-wow-delay=".1s">
                                 	
                            </h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- slider_area_end -->



<!--  <ul class="nav nav-tabs centered">  -->



<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	<!-- Brand -->
	<a class="navbar-brand" href="#">무얼 넣을까</a>

	<!-- Links -->
	<ul class="navbar-nav">
<%
	StringBuffer stringBuffer = new StringBuffer();
	
	for(LcategoryTO to : LarrayList)	{
		
		stringBuffer.append("	<li class='nav-item dropdown'>");
		stringBuffer.append("		<a class='nav-link dropdown-toggle' href='./studyview11.do' id='navbardrop1' data-toggle='dropdown'>");
		stringBuffer.append(to.getName());
		stringBuffer.append("		</a>");
		stringBuffer.append("		<div class='dropdown-menu'>");
		
		
		for(ScategoryTO sto : SarrayList)	{
			if(to.getSeq().equals(sto.getLseq()))	{
				String seq = sto.getSeq();
				stringBuffer.append("			<a class='dropdown-item' href='./studyview2.do?SCseq="+seq+"'>"+sto.getName()+"</a>");
			}
		}
		
		
		
		stringBuffer.append("		</div>");
		stringBuffer.append("	</li>");
	}
	
	out.println(stringBuffer);


%>
	
	<!-- 
	<ul class="navbar-nav">
		<li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" href="https://www.naver.com" id="navbardrop1" data-toggle="dropdown">
				대분류1
				</a>
			<div class="dropdown-menu">
				<a class="dropdown-item" href="./studyview2.jsp">소분류 1</a>
				<a class="dropdown-item" href="./studyview2.jsp">소분류 2</a>
				<a class="dropdown-item" href="./studyview2.jsp">소분류 3</a>
			</div>
		</li>
		
		<li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" href="#" id="navbardrop2" data-toggle="dropdown">
				대분류2
				</a>
			<div class="dropdown-menu">
				<a class="dropdown-item" href="./studyview2.jsp">소분류 1</a>
				<a class="dropdown-item" href="./studyview2.jsp">소분류 2</a>
				<a class="dropdown-item" href="./studyview2.jsp">소분류 3</a>
			</div>
		</li>


		<li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" href="#" id="navbardrop3" data-toggle="dropdown">
				대분류3
				</a>
			<div class="dropdown-menu">
				<a class="dropdown-item" href="./studyview2.jsp">소분류 1</a>
				<a class="dropdown-item" href="./studyview2.jsp">소분류 2</a>
				<a class="dropdown-item" href="./studyview2.jsp">소분류 3</a>
			</div>
		</li>
		
	</ul>
	
</nav>
 -->
	</ul>
</nav>



<br>



    <!-- footer start -->
    <footer class="footer">
        <div class="footer_top">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-2 col-md-3">
                        <div class="footer_logo wow fadeInRight" data-wow-duration="1s" data-wow-delay=".3s">
                            <a href="index.html">
                                <img src="img/logo.png" alt="">
                            </a>
                        </div>
                    </div>
                    <div class="col-xl-7 col-lg-7 col-md-9">
                        <div class="menu_links">
                            <ul>
                                <li><a class="wow fadeInDown" data-wow-duration="1s" data-wow-delay=".2s" href="#">About</a class="wow fadeInUp" data-wow-duration="1s" data-wow-delay=".3s"></li>
                                <li><a class="wow fadeInDown" data-wow-duration="1s" data-wow-delay=".4s" href="#">Services</a></li>
                                <li><a class="wow fadeInDown" data-wow-duration="1s" data-wow-delay=".6s" href="#">Portfolio</a></li>
                                <li><a class="wow fadeInDown" data-wow-duration="1s" data-wow-delay=".8s" href="#">Pages</a></li>
                                <li><a class="wow fadeInDown" data-wow-duration="1s" data-wow-delay="1s" href="#">Blog</a></li>
                                <li><a class="wow fadeInDown" data-wow-duration="1s" data-wow-delay="1.1s" href="#">Contact</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-12">
                        <div class="socail_links">
                            <ul>
                                <li><a class="wow fadeInUp" data-wow-duration="1s" data-wow-delay=".3s" href="#"> <i class="fa fa-facebook"></i> </a></li>
                                <li><a class="wow fadeInUp" data-wow-duration="1s" data-wow-delay=".4s" href="#"> <i class="fa fa-twitter"></i> </a></li>
                                <li><a class="wow fadeInUp" data-wow-duration="1s" data-wow-delay=".5s" href="#"> <i class="fa fa-instagram"></i> </a></li>
                                <li><a class="wow fadeInUp" data-wow-duration="1s" data-wow-delay=".6s" href="#"> <i class="fa fa-google-plus"></i> </a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="copy-right_text">
            <div class="container">
                <div class="footer_border"></div>
                <div class="row">
                    <div class="col-xl-12">
                        <p class="copy_right text-center wow fadeInUp" data-wow-duration="1s" data-wow-delay="1.3s">
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!--/ footer end  -->






    <!-- JS here -->
    <script src="js/vendor/modernizr-3.5.0.min.js"></script>
    <script src="js/vendor/jquery-1.12.4.min.js"></script>	
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/isotope.pkgd.min.js"></script>
    <script src="js/ajax-form.js"></script>
    <script src="js/waypoints.min.js"></script>
    <script src="js/jquery.counterup.min.js"></script>
    <script src="js/imagesloaded.pkgd.min.js"></script>
    <script src="js/scrollIt.js"></script>
    <script src="js/jquery.scrollUp.min.js"></script>
    <script src="js/wow.min.js"></script>
    <script src="js/nice-select.min.js"></script>
    <script src="js/jquery.slicknav.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/plugins.js"></script>
    <script src="js/gijgo.min.js"></script>

    <!--contact js-->
    <script src="js/contact.js"></script>
    <script src="js/jquery.ajaxchimp.min.js"></script>
    <script src="js/jquery.form.js"></script>
    <script src="js/jquery.validate.min.js"></script>
    <script src="js/mail-script.js"></script>

    <script src="js/main.js"></script>
</body>

</html>