<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="sessionfile.jsp" %>
<!-- To check the session (active or not) -->
<head>
<title>Teacher Panel</title>
<meta name="author" content="Sarsiz Chauhan">
<meta name="generator" content="sarsiz chauhan">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="font-awesome.min.css" rel="stylesheet">
<link href="hod_sign_in_page.css" rel="stylesheet">
<link href="teacher_panel.css" rel="stylesheet">
<script src="jquery-1.11.3.min.js"></script>
<script src="wb.parallax.min.js"></script>
<script src="jquery.ui.effect.min.js"></script>
<script src="wb.panel.min.js"></script>
<script src="scrollspy.min.js"></script>
<script>
$(document).ready(function()
{
   $('#wb_LayoutGrid2').parallax();
   $('a[href*=#Bookmark1]').click(function(event)
   {
      event.preventDefault();
      $('html, body').stop().animate({ scrollTop: $('#wb_Bookmark1').offset().top }, 600, 'easeOutCubic');
   });
   $("#PanelMenu1").panel({animate: true, animationDuration: 400, animationEasing: 'linear', dismissible: true, display: 'overlay', position: 'left'});
});
</script>
</head>
<body data-spy="scroll">
<div id="wb_LayoutGrid1">
<div id="LayoutGrid1">
<div class="row">
<div class="col-1">
<div id="wb_Heading1" style="display:inline-block;width:100%;z-index:0;">
<h1 id="Heading1"><a href="./home_page.jsp">CORESTA</a></h1>
</div>
</div>
<div class="col-2">
<div id="wb_Text1">
<span style="color:#FFFFFF;font-family:Arial;font-size:8px;"><br></span><span style="color:#FFFFFF;font-family:Arial;font-size:17px;">Welcome <% out.print(session.getAttribute("user").toString());%></span></span>
</div>
</div>
<div class="col-3">
<div id="wb_PanelMenu1" style="display:inline-block;width:88px;height:28px;text-align:center;z-index:2;">
<a href="#PanelMenu1_markup" id="PanelMenu1">Menu</a>
<div id="PanelMenu1_markup">
<ul>
   <li><a href="./home_page.jsp"><i class="fa fa-home fa-fw">&nbsp;</i><span>Home</span></a></li>
   <li><a href="./teacher_panel.jsp"><i class="fa fa-desktop fa-fw">&nbsp;</i><span>Teacher Panel</span></a></li>
   <li><a href="./teacher_change_password.jsp" title="Change Password"><i class="fa fa-expeditedssl fa-fw">&nbsp;</i><span>Change Password</span></a></li>
   <li><a href="./home_page.jsp"><i class="fa fa-skyatlas fa-fw">&nbsp;</i><span>About</span></a></li>
   <li><a href="./motive.html"><i class="fa fa-rocket fa-fw">&nbsp;</i><span>Motive</span></a></li>
   <li><a href="./teacher_panel.jsp#contact"><i class="fa fa-paper-plane-o fa-fw">&nbsp;</i><span>Contact</span></a></li>
</ul>
</div>

</div>
</div>
<div class="col-4">
<div id="wb_Text2">
<a href="logout"><span style="color:#FFFFFF;font-family:Arial;font-size:17px;">Log Out</span></a>
</div>
</div>
</div>
</div>
</div>
<div id="wb_LayoutGrid3">
<div id="LayoutGrid3">
<div class="row">
<div class="col-1">
<div id="wb_Text11">
<span style="color:#8A2BE2;font-family:Arial;font-size:27px;"><br></span><span style="color:#8A2BE2;font-family:Arial;font-size:29px;"><strong>Teacher's Panel</strong></span><span style="color:#8A2BE2;font-family:Arial;font-size:27px;"><strong><br></strong></span>
</div>
<hr id="Line2" style="display:block;width:100%;height:34px;z-index:5;">
<div id="wb_FontAwesomeIcon2" style="display:inline-block;width:53px;height:57px;text-align:center;z-index:6;">
<div id="FontAwesomeIcon2"><i class="fa fa-users">&nbsp;</i></div>
</div>
</div>
</div>
</div>
</div>
<div id="wb_LayoutGrid2">
<div id="LayoutGrid2">
<div class="row">
<div class="col-1">
<div id="wb_Text4">
<span style="color:#8A2BE2;font-family:Arial;font-size:13px;"><strong><br></strong></span><a href="./teacher_view_profile.jsp"><span style="color:#8A2BE2;font-family:Arial;font-size:20px;"><strong>View Profile</strong></a></span>
</div>
</div>
<div class="col-2">
<div id="wb_Text6">
<span style="color:#8A2BE2;font-family:Arial;font-size:13px;"><strong><br></strong></span><a href="./teacher_enter_student_detail.jsp"><span style="color:#8A2BE2;font-family:Arial;font-size:20px;"><strong>Add Students Details</strong></a></span>
</div>
</div>
<div class="col-3">
<div id="wb_Text8">
<span style="color:#00BFFF;font-family:Arial;font-size:13px;"><strong><br></strong></span><a href="./teacher_students_report.jsp"><span style="color:#8A2BE2;font-family:Arial;font-size:20px;"><strong>Students Report</strong></span></a><span style="color:#00BFFF;font-family:Arial;font-size:13px;"><strong><br></strong></span>
</div>
</div>
<div class="col-4">
<div id="wb_Text10">
<span style="color:#00BFFF;font-family:Arial;font-size:13px;"><strong><br></strong></span><a href="./teacher_attendance.jsp"><span style="color:#8A2BE2;font-family:Arial;font-size:20px;"><strong>Attendance</strong></span></a>
</div>
</div>
<div class="col-5">
<div id="wb_Text3">
<span style="color:#00BFFF;font-family:Arial;font-size:13px;"><strong><br></strong></span><a href="./teacher_view_attendance.jsp"><span style="color:#8A2BE2;font-family:Arial;font-size:20px;"><strong>View Attendance</strong></span></a>
</div>
</div>
</div>
</div>
</div>
<div id="wb_LayoutGrid4">
<div id="LayoutGrid4">
<div class="row">
<div class="col-1">
<div id="wb_Text14">
<span style="color:#C0C0C0;font-family:Arial;font-size:15px;"><strong>ADDRESS</strong><br>C-4 Janak Puri, New Delhi-110058<br><br><strong>CONTACTS</strong><br>Email: director@msit.in<br>Phone: 25528117, 25552667<br></span>
</div>
<div id="wb_Bookmark1" style="display:inline-block;width:100%;z-index:13;">
<a id="Bookmark1" style="visibility:hidden">&nbsp;</a>

</div>
</div>
<div class="col-2">
<div id="wb_Image2" style="display:inline-block;width:100%;height:auto;z-index:14;">
<a href="https://www.google.nl/maps/place/40%C2%B043'05.6%22N+73%C2%B059'53.8%22W/@40.718217,-74.0004727,17z/data=!3m1!4b1!4m2!3m1!1s0x0:0x0?hl=en"><img src="images/maps_ny.jpg" id="Image2" alt=""></a>
</div>
</div>
<div class="col-3">
<input type="text" id="Editbox2" style="display:block;width:100%;height:30px;line-height:30px;z-index:15;" name="Editbox1" value="" placeholder="Email">
<textarea name="TextArea1" id="TextArea2" style="display:block;width:100%;height:88px;z-index:16;" rows="4" cols="44"></textarea>
<input type="submit" id="Button2" name="" value="CONTACT US" style="display:inline-block;width:136px;height:34px;z-index:17;">
</div>
</div>
</div>
</div>
<div id="wb_LayoutGrid5">
<div id="LayoutGrid5">
<div class="row">
<div class="col-1">
<hr id="Line3" style="display:block;width:100%;height:1px;z-index:18;">
<div id="wb_Text12">
<span style="color:#C0C0C0;font-family:Arial;font-size:15px;">Copyright &#0169; 2016 Coresta. All Rights Reserved</span><span style="color:#D2691E;font-family:Arial;font-size:15px;"><br></span><span style="color:#000000;font-family:Arial;font-size:8px;"><br></span>
</div>
</div>
</div>
</div>
</div>
</body>
</html>