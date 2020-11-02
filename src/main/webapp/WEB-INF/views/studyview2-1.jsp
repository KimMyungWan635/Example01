<%@page import="model.CommentTO"%>
<%@page import="model.ViewSubjectTO"%>
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
	ArrayList<ViewSubjectTO> ViewSubarrayList = (ArrayList<ViewSubjectTO>)request.getAttribute("ViewSubarrayList");
	ArrayList<CommentTO> CommentViewarrayList = (ArrayList<CommentTO>)request.getAttribute("CommentViewarrayList");
	System.out.println("adaadaadadadada " + CommentViewarrayList);
	int CommentFlag = -10;
	if(request.getAttribute("CommentFlag") != null)	{
		CommentFlag = (int)request.getAttribute("CommentFlag");		
	}
	
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

<style>
* {
  box-sizing: border-box;
}

body {
  font-family: Arial, Helvetica, sans-serif;
}



/* Create two columns/boxes that floats next to each other */
.viewnav {
  float: left;
  width: 20%;
  height: 300px; /* only for demonstration, should be removed */
  background: #ccc;
  background-color: #ffffff;
  padding: 20px;
}

/* Style the list inside the menu */
.viewnav ul {
  list-style-type: none;
  padding: 0;
}

/*동영상 출력 부분*/
article {
  float: left;
  padding: 20px;
  width: 80%;
  background-color: #ffffff;
  height: 300px; /* only for demonstration, should be removed */
}

/* Clear floats after the columns */
section:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - makes the two columns/boxes stack on top of each other instead of next to each other, on small screens */
@media (max-width: 600px) {
  .viewnav, article {
    width: 100%;
    height: auto;
  }
}


ul{
	text-align:center;
}

li{
	display:inline-block;
}

.viewli a:hover {
    color:red;
}

.SubCon { text-align: center; }
.SubCon1 { text-align: justify; }



  
/* 동영상 관련 style */
  .youtubevideowrapperdiv1-1 {
position: relative;
padding-bottom: 50%; /* 영상비율에 따른 수치 */
padding-top: 25px;
height: 0;
}
  
  .youtubevideowrapperdiv4-3 {
position: relative;
padding-bottom: 75%; /* 영상비율에 따른 수치 */
padding-top: 25px;
height: 0;
}

  
  .youtubevideowrapperdiv16-9blind {
position: relative;
padding-bottom: 83%; /* 영상비율에 따른 수치 */
padding-top: 0%;
height: 0;    
}

  .youtubevideowrapperdiv16-9 {
position: relative;
padding-bottom: 56.25%; /* 영상비율에 따른 수치 */
padding-top: 3%;
height: 0;
}
  
.youtubevideowrapperdiv17-9 {
position: relative;
padding-bottom: 52.94%; /* 영상비율에 따른 수치 */
padding-top: 25px;
height: 0;
}

.youtubevideowrapperdiv18-9 {
position: relative;
padding-bottom: 50%; /* 영상비율에 따른 수치 */
padding-top: 25px;
height: 0;
}


.youtubevideowrapperdiv19-9 {
position: relative;
padding-bottom: 47.37%; /* 영상비율에 따른 수치 */
padding-top: 25px;
height: 0;  
}


.youtubevideowrapperdiv20-9 {
position: relative;
padding-bottom: 45%; /* 영상비율에 따른 수치 */
padding-top: 25px;
height: 0;
}

.youtubevideowrapperdiv25-9 {
position: relative;
padding-bottom: 10%; /* 영상비율에 따른 수치 */
padding-top: 25px;
height: 0;
}


.youtubevideowrapperdiv iframe {
position: absolute;
top: 0;
left: 0;
width: 640px;
height: 350px;
}

.youtubevideowrapper 
{max-width: 900px;
  margin:auto;
  }
/* /동영상 관련 style */

</style>


<script type="text/javascript">
window.onload = function() {
	document.getElementById('commentsubmit').onclick = function() {
		if(document.commentfrm.writer.value.trim() == "") {
			alert('이름을 입력하셔야 합니다.');
			return false;				
		}
		if(document.commentfrm.password.value.trim() == "") {
			alert('비밀번호를 입력하셔야 합니다.');
			return false;				
		}
		if(document.commentfrm.content.value.trim() == "") {
			alert('내용을 입력하셔야 합니다.');
			return false;				
		}
		document.commentfrm.submit();
	};
};

</script>


</head>

<body>

    <header>
        <div class="header-area ">
            <div id="sticky-header" class="main-header-area">
                <div class="container-fluid p-0">
                    <div class="row align-items-center no-gutters">
                        <div class="col-xl-2 col-lg-2">
                            <div class="logo-img">
                                <a href="index.html">
                                    <img src="img/A1.png" alt="">
                                </a>
                            </div>
                        </div>
                        <div class="col-xl-8 col-lg-8">
                            <div class="main-menu  d-none d-lg-block text-center">
                                <nav>
                                    <ul id="navigation">
                           
<!-- 대분류 목록 -->         
<%
	StringBuffer stringBuffer = new StringBuffer();
	
	for(LcategoryTO to : LarrayList)	{
		
		stringBuffer.append("			<li><a href='#'>"+to.getName()+" <i class='ti-angle-down'></i></a>");
		stringBuffer.append("				<ul class='submenu'>");
		
		for(ScategoryTO sto : SarrayList)	{
			if(to.getSeq().equals(sto.getLseq()))	{
				String seq = sto.getSeq();
				stringBuffer.append("				<li><a href='./studyview21.do?SCseq="+seq+"'>"+sto.getName()+"</a></li>");
			}
		}
		
		stringBuffer.append("				</ul>");
		stringBuffer.append("			</li>");
		
	}
	
	out.println(stringBuffer);

%>
                                        
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

<br/><br/><br/>



<section>
  <nav class='viewnav'>
    <ul>

<!-- 
<div class="container">
  <div class="btn-group-vertical">
 -->

<!-- 왼쪽 라인의 제목 -->
<%
	StringBuffer stringBufferButton = new StringBuffer();
	String SCseq = request.getParameter("SCseq");
		for(SubjectTO to : SubarrayList)	{
			if(SCseq.equals(to.getSseq()))	{
				//stringBufferButton.append("<li><a href='./studyview21.do?SCseq="+to.getSseq()+"'>"+to.getName()+"</a></li>");
				stringBufferButton.append("<li style='font-size:20px' class='viewli'><a href='./studyview21.do?SCseq="+to.getSseq()+"&viewseq="+to.getSeq()+"'>"+to.getName()+"</a></li><br/><br/>");
			}
		}
	
	out.println(stringBufferButton);

%>

    </ul>
  </nav>

<!-- 제목 , 내용 , 동영상 -->
  <article>

<%
	StringBuffer stringBufferView = new StringBuffer();
	String viewseq = request.getParameter("viewseq");
	
	if(ViewSubarrayList!=null)	{
		for(ViewSubjectTO to : ViewSubarrayList)	{
			/*
			System.out.println("link주소 = " + to.getLink());
			String URL = to.getLink();
			String[] mainURL = URL.split("=");
			System.out.println("### : " + mainURL[1]);
			*/
			stringBufferView.append("<h1 class='SubCon' style='font-size:30px'>"+to.getName()+"</h1><hr>");
			
			/*
			stringBufferView.append("<div style='text-align:center;'>");
			stringBufferView.append("	<div class='youtubevideowrapper'>");
			stringBufferView.append("		<div class='youtubevideowrapperdiv youtubevideowrapperdiv16-9blind' >");
			stringBufferView.append("			<iframe width='781' height='439' src='https://www.youtube.com/embed/eTx8F3mo4og' frameborder='0' allow='accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture' allowfullscreen></iframe>");
			stringBufferView.append("		</div>");
			stringBufferView.append("	</div>");
			stringBufferView.append("</div>");
			*/
			
			stringBufferView.append("<p class='SubCon'>"+to.getContent()+"</p>");
			
			
		}
	}
    out.println(stringBufferView);

%>


    
    
  </article>
</section>


<!-- 댓글 view -->


<% 
System.out.println("CommentViewarrayList = " + CommentViewarrayList);
if(CommentViewarrayList!=null)	{
	System.out.println("study2-1 commentview if문 실행 ----");
	StringBuffer stringBufferCommentView = new StringBuffer();
	for( CommentTO cto : CommentViewarrayList ) {
		String seq = cto.getSeq();
		String writer = cto.getWriter();
		String content = cto.getContent();
		String cdate = cto.getCdate();
			
		stringBufferCommentView.append( "<tr>" );
		stringBufferCommentView.append( "<td class='coment_re'>" );
		stringBufferCommentView.append( "	<strong>" + writer + "</strong> (" + cdate + ")" );
		stringBufferCommentView.append( "	<div class='coment_re_txt'>" );
		stringBufferCommentView.append( content );
		stringBufferCommentView.append( "	</div>" );
		stringBufferCommentView.append( "</td>" );
		stringBufferCommentView.append( "</tr>" );
	}
	
	out.println(stringBufferCommentView);
}


%>

<!-- /댓글 view -->

<!-- 댓글 작성  -->
<%
String subseq = null;
int CommentOk = -1;

if(ViewSubarrayList!=null)	{
	System.out.println("study2-1 if(ViewSubarrayList!=null) 실행");
	for(ViewSubjectTO to : ViewSubarrayList)	{
		subseq = to.getSeq();
		System.out.println("ViewSubjectTO.getContent() = " + to.getContent());
		System.out.println("study2-1 300Line subseq = " + subseq);

	}
	System.out.println(request.getParameter("SCseq"));
%>	

<form action="./studyview21.do" method="post" name="commentfrm">
	<input type="hidden" name="subseq" value="<%=subseq %>" />
	<input type="hidden" name="viewseq" value="<%=viewseq %>" />
	<input type="hidden" name="CommentOk" value="<%=CommentOk %>" />
	<input type="hidden" name="SCseq" value="<%=request.getParameter("SCseq") %>" />
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
</form>
	
<%
}
if(request.getAttribute("CommentOk") != null)	{
	

if( ( (String)request.getAttribute("CommentOk") ).equals("0") )	{

	if(CommentFlag==1)	{
		out.println("<script type='text/javascript'>");
		out.println("alert('댓글작성 완료')");
		out.println("</script>");
	} else	{
		out.println("<script type='text/javascript'>");
		out.println("alert('댓글작성 실패')");
		out.println("</script>");
	}
}


}
%>

		
<!-- /댓글 작성  -->


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