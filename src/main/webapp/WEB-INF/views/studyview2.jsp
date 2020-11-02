<%@page import="model.SubjectTO"%>
<%@page import="model.ScategoryTO"%>
<%@page import="model.LcategoryTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<%
	ArrayList<LcategoryTO> LarrayList = (ArrayList<LcategoryTO>)request.getAttribute("LarrayList");
	ArrayList<ScategoryTO> SarrayList = (ArrayList<ScategoryTO>)request.getAttribute("SarrayList");
	ArrayList<SubjectTO> SubarrayList = (ArrayList<SubjectTO>)request.getAttribute("SubarrayList");

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
    <link rel="stylesheet" href="css/board_view.css">
    
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
		
	</ul>
	
</nav>

<br/>


<div class="container">
  <div class="btn-group-vertical">
  
<%
	StringBuffer stringBufferButton = new StringBuffer();
	String SCseq = request.getParameter("SCseq");
		for(SubjectTO to : SubarrayList)	{
			if(SCseq.equals(to.getSseq()))	{
				stringBufferButton.append("<button type='button' class='btn btn-primary'>"+to.getName()+"</button>");
				stringBufferButton.append("<br/>");
			}
		}
	
	out.println(stringBufferButton);

%>

    
  </div>
</div>





<!-- 
<div class="container">
  <br>


  <ul class="nav nav-pills" role="tablist">
    <li class="nav-item" >
      <a class="nav-link active" data-toggle="tab" href="#home">Home</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="tab" href="#menu1">Menu 1</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="tab" href="#menu2">Menu 2</a>
    </li>
  </ul>


  <div class="tab-content">
    <div id="home" class="container tab-pane active"><br>
      <h3>HOME</h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
    </div>
    <div id="menu1" class="container tab-pane fade"><br>
      <h3>Menu 1</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div id="menu2" class="container tab-pane fade"><br>
      <h3>Menu 2</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
  </div>
</div>

 -->



<!-- 댓글  -->
<table>
	<tr>
		<td width="94%" class="coment_re">
			글쓴이 <input type="text" name="writer" maxlength="5" class="coment_input" />&nbsp;&nbsp;
			비밀번호 <input type="password" name="password" class="coment_input pR10" />&nbsp;&nbsp;
		</td>
		<td width="6%" class="bg01"></td>
	</tr>
	
	<tr>
		<td class="bg01">
			<textarea name="content" cols="" rows="" class="coment_input_text"></textarea>
		</td>
		<td align="right" class="bg01">
			<input type="button" value="댓글등록" id="commentsubmit" class="btn_comment_write btn_txt01" />
		</td>
	</tr>
</table>
<!-- /댓글  -->






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