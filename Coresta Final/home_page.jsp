<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Coresta</title>
<meta name="author" content="Sarsiz Chauhan">
<meta name="generator" content="sarsiz chauhan">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="font-awesome.min.css" rel="stylesheet">
<link href="hod_sign_in_page.css" rel="stylesheet">
<link href="home_page.css" rel="stylesheet">
<script src="jquery-1.11.3.min.js"></script>
<script src="affix.min.js"></script>
<script src="jquery.ui.effect.min.js"></script>
<script src="jquery.ui.effect-fade.min.js"></script>
<script src="wb.carousel.effects.min.js"></script>
<script src="scrollspy.min.js"></script>
<script>
$(document).ready(function()
{
   var Carousel1Opts =
   {
      delay: 3800,
      duration: 500,
      easing: 'linear',
      mode: 'fade',
      direction: '',
      scalemode: 1,
      pagination: true,
      pagination_img_default: 'images/page_default.png',
      pagination_img_active: 'images/page_active.png',
      start: 0
   };
   $("#Carousel1").carouseleffects(Carousel1Opts);
   $("#Carousel1_back a").click(function()
   {
      $('#Carousel1').carouseleffects('prev');
   });
   $("#Carousel1_next a").click(function()
   {
      $('#Carousel1').carouseleffects('next');
   });
   $('a[href*=#sign_in]').click(function(event)
   {
      event.preventDefault();
      $('html, body').stop().animate({ scrollTop: $('#wb_sign_in').offset().top }, 600, 'linear');
   });
   $('a[href*=#contact]').click(function(event)
   {
      event.preventDefault();
      $('html, body').stop().animate({ scrollTop: $('#wb_contact').offset().top }, 600, 'easeOutCubic');
   });
   $("#wb_TextMenu1").affix({offset:{top: $("#wb_TextMenu1").offset().top}});
});
</script>
</head>
<body data-spy="scroll">
<div id="wb_LayoutGrid1">
<div id="LayoutGrid1">
<div class="row">
<div class="col-1">
<div id="wb_Shape1" style="display:inline-block;width:55px;height:50px;z-index:0;position:relative;">
<img src="images/img0005.png" id="Shape1" alt="" style="width:55px;height:50px;">
</div>
</div>
<div class="col-2">
<div id="wb_Heading1" style="display:inline-block;width:100%;z-index:1;">
<h1 id="Heading1"><a href="./hod_signin.jsp">CORESTA</a></h1>
</div>
</div>
<div class="col-3">
<div id="wb_TextMenu1" style="display:inline-block;width:363px;height:35px;text-align:center;z-index:2;">
<span><a href="./home_page.jsp" class="menu_style" title="Home">Home</a></span>
<span><a href="#sign_in" class="menu_style">Sign In</a></span>
<span><a href="./home_page.jsp" class="menu_style">About</a></span>
<span><a href="./motive.html" class="menu_style">Motive</a></span>
<span><a href="#contact" class="menu_style">Contact</a></span>
</div>
</div>
</div>
</div>
</div>


<div id="wb_Carousel1" style="position:absolute;left:0px;top:93px;width:970px;height:400px;z-index:29;overflow:hidden;position:relative;">
<div id="Carousel1" style="position:absolute">
<div class="frame frame-1">
</div>
<div class="frame frame-2" style="display:none">
</div>
</div>
<div id="Carousel1_back" style="position:absolute;left:4px;top:46%;width:30px;height:30px;z-index:999"><a style="cursor:pointer"><img alt="Back" style="border-width:0" src="images/carousel_back.png"></a></div>
<div id="Carousel1_next" style="position:absolute;right:4px;top:46%;width:30px;height:30px;z-index:999"><a style="cursor:pointer"><img alt="Next" style="border-width:0" src="images/carousel_next.png"></a></div>
</div>
<div id="wb_LayoutGrid2">
<div id="LayoutGrid2">
<div class="row">
<div class="col-1">
<hr id="DummyLine1" style="display:block;width:100%;height:49px;z-index:3;">
<div id="wb_FontAwesomeIcon1" style="display:inline-block;width:61px;height:63px;text-align:center;z-index:4;">
<a href="./hod_signin.jsp"><div id="FontAwesomeIcon1"><i class="fa fa-user">&nbsp;</i></div></a>
</div>
<div id="wb_Text1">
<span style="color:#808080;font-family:Arial;font-size:13px;"><br></span><span style="color:#00BFFF;font-family:Arial;font-size:19px;"><strong>Head Of Department<br><br><br></strong></span><span style="color:#00BFFF;font-family:Arial;font-size:13px;"><br></span>
</div>
</div>
<div class="col-2">
<hr id="Line1" style="display:block;width:100%;height:49px;z-index:6;">
<div id="wb_FontAwesomeIcon2" style="display:inline-block;width:53px;height:57px;text-align:center;z-index:7;">
<a href="./teacher_signin.jsp"><div id="FontAwesomeIcon2"><i class="fa fa-users">&nbsp;</i></div></a>
</div>
<div id="wb_Text2">
<span style="color:#808080;font-family:Arial;font-size:13px;"><br></span><span style="color:#8A2BE2;font-family:Arial;font-size:19px;"><strong>Teacher</strong></span><span style="color:#7FFF00;font-family:Arial;font-size:19px;"><strong><br></strong></span><span style="color:#DCDCDC;font-family:Arial;font-size:13px;"><br></span><span style="color:#000000;font-family:Arial;font-size:13px;"><br><br></span>
</div>
</div>
<div class="col-3">
<hr id="Line2" style="display:block;width:100%;height:49px;z-index:9;">
<div id="wb_FontAwesomeIcon3" style="display:inline-block;width:49px;height:63px;text-align:center;z-index:10;">
<a href="./student_signin.jsp"><div id="FontAwesomeIcon3"><i class="fa fa-child">&nbsp;</i></div></a>
</div>
<div id="wb_Text3">
<span style="color:#808080;font-family:Arial;font-size:13px;"><br></span><span style="color:#B00016;font-family:Arial;font-size:19px;"><strong>Student</strong></span><span style="color:#000000;font-family:Arial;font-size:13px;"><br><br></span>
</div>
</div>
</div>
</div>
</div>
<div id="wb_LayoutGrid3">
<div id="LayoutGrid3">
<div class="row">
<div class="col-1">
<div id="wb_sign_in" style="display:inline-block;width:100%;z-index:12;">
<a id="sign_in" style="visibility:hidden">&nbsp;</a>

</div>
<div id="wb_Text4">
<span style="color:#2F4F4F;font-family:Arial;font-size:21px;"><strong>More Features for Teachers and Students will be added soon<br></strong></span><span style="color:#2F4F4F;font-family:Arial;font-size:13px;"><strong><br></strong></span>
</div>
</div>
</div>
</div>
</div>
<div id="wb_LayoutGrid4">
<div id="LayoutGrid4">
<div class="row">
<div class="col-1">
</div>
<div class="col-2">
</div>
<div class="col-3">
</div>
<div class="col-4">
</div>
</div>
</div>
</div>
<div id="wb_LayoutGrid5">
<div id="LayoutGrid5">
<div class="row">
<div class="col-1">
<div id="wb_Text5">
<span style="color:#000000;font-family:Arial;font-size:29px;"><strong>FOLLOW US</strong></span>
</div>
</div>
<div class="col-2">
<div id="wb_FontAwesomeIcon4" style="display:inline-block;width:38px;height:38px;text-align:center;z-index:15;">
<div id="FontAwesomeIcon4"><i class="fa fa-facebook-f">&nbsp;</i></div>
</div>
<div id="wb_FontAwesomeIcon5" style="display:inline-block;width:38px;height:38px;text-align:center;z-index:16;">
<div id="FontAwesomeIcon5"><i class="fa fa-twitter">&nbsp;</i></div>
</div>
<div id="wb_FontAwesomeIcon6" style="display:inline-block;width:38px;height:38px;text-align:center;z-index:17;">
<div id="FontAwesomeIcon6"><i class="fa fa-google-plus">&nbsp;</i></div>
</div>
</div>
</div>
</div>
</div>
<div id="wb_LayoutGrid6">
<div id="LayoutGrid6">
<div class="row">
<div class="col-1">
<div id="wb_Text6">
<span style="color:#C0C0C0;font-family:Arial;font-size:15px;"><strong>ADDRESS</strong><br>C-4 Janak Puri, New Delhi-110058<br><br><br><strong>CONTACTS</strong><br>Email: director@msit.in<br>Phone: 25528117, 25552667<br></span><span style="color:#C0C0C0;font-family:Arial;font-size:13px;"><br></span>
</div>
<div id="wb_contact" style="display:inline-block;width:100%;z-index:19;">
<a id="contact" style="visibility:hidden">&nbsp;</a>

</div>
</div>
<div class="col-2">
<div id="wb_Image1" style="display:inline-block;width:100%;height:auto;z-index:20;">
<a href="https://www.google.nl/maps/place/40%C2%B043'05.6%22N+73%C2%B059'53.8%22W/@40.718217,-74.0004727,17z/data=!3m1!4b1!4m2!3m1!1s0x0:0x0?hl=en"><img src="images/maps_ny.jpg" id="Image1" alt=""></a>
</div>
</div>
<div class="col-3">
<input type="text" id="Editbox1" style="display:block;width:100%;height:30px;line-height:30px;z-index:21;" name="Editbox1" value="" placeholder="Email">
<textarea name="TextArea1" id="TextArea1" style="display:block;width:100%;height:88px;z-index:22;" rows="4" cols="44"></textarea>
<input type="submit" id="Button1" name="" value="CONTACT US" style="display:inline-block;width:136px;height:34px;z-index:23;">
</div>
</div>
</div>
</div>
<div id="wb_LayoutGrid7">
<div id="LayoutGrid7">
<div class="row">
<div class="col-1">
<hr id="Line3" style="display:block;width:100%;height:1px;z-index:24;">
<div id="wb_Text7">
<span style="color:#C0C0C0;font-family:Arial;font-size:15px;">Copyright &#0169; 2016 Coresta. All Rights Reserved</span><span style="color:#D2691E;font-family:Arial;font-size:15px;"><br></span><span style="color:#000000;font-family:Arial;font-size:8px;"><br></span>
</div>
</div>
</div>
</div>
</div>
<script>
   $("#wb_PageHeader").affix({offset:{top: $("#wb_PageHeader").offset().top}});
</script></body>
</html>