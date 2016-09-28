<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="sessionfile.jsp" %>
<!-- To check the session (active or not) -->
<head>
<title>HOD panel</title>
<meta name="author" content="Sarsiz Chauhan">
<meta name="generator" content="sarsiz chauhan">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="font-awesome.min.css" rel="stylesheet">
<link href="hod_sign_in_page.css" rel="stylesheet">
<link href="hod_panel.css" rel="stylesheet">
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
<h1 id="Heading1"><a href="./hod_signin.jsp">CORESTA</a></h1>
</div>
</div>
<%if(name!=null){%>
<div class="col-2">
<div id="wb_Text1">
<span style="color:#FFFFFF;font-family:Arial;font-size:8px;"><br></span><span style="color:#FFFFFF;font-family:Arial;font-size:17px;">Welcome <% out.print(session.getAttribute("user").toString()); %></span>
</div>
</div>
<%}%>
<div class="col-3">
<div id="wb_PanelMenu1" style="display:inline-block;width:88px;height:28px;text-align:center;z-index:2;">
<a href="#PanelMenu1_markup" id="PanelMenu1">Menu</a>
<div id="PanelMenu1_markup">
<ul>
   <li><a href="./home_page.jsp"><i class="fa fa-home fa-fw">&nbsp;</i><span>Home</span></a></li>
   <li><a href="./hod_panel.jsp"><i class="fa fa-desktop fa-fw">&nbsp;</i><span>HOD Panel</span></a></li>
   <li><a href="./hod_change_password.jsp" title="Change Password"><i class="fa fa-expeditedssl fa-fw">&nbsp;</i><span>Change Password</span></a></li>
   <li><a href="./home_page.jsp"><i class="fa fa-skyatlas fa-fw">&nbsp;</i><span>About</span></a></li>
   <li><a href="./motive.html"><i class="fa fa-rocket fa-fw">&nbsp;</i><span>Motive</span></a></li>
   <li><a href="./hod_panel.jsp#contact"><i class="fa fa-paper-plane-o fa-fw">&nbsp;</i><span>Contact</span></a></li>
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
<span style="color:#00BFFF;font-family:Arial;font-size:27px;"><br></span><span style="color:#00BFFF;font-family:Arial;font-size:29px;"><strong>Head Of Department Panel</strong></span><span style="color:#00BFFF;font-family:Arial;font-size:27px;"><strong><br></strong></span>
</div>
<hr id="Line2" style="display:block;width:100%;height:34px;z-index:5;">
<div id="wb_FontAwesomeIcon1" style="display:inline-block;width:61px;height:63px;text-align:center;z-index:6;">
<div id="FontAwesomeIcon1"><i class="fa fa-user">&nbsp;</i></div>
</div>
</div>
</div>
</div>
</div>
<div id="wb_LayoutGrid2">
<div id="LayoutGrid2">
<div class="row">
<div class="col-1">
<img src="images/img0001.jpg" id="Banner1" alt="Teacher" style="border-width:0;display:inline-block;width:212px;height:50px;z-index:7;">
<div id="wb_Text3">
<span style="color:#00BFFF;font-family:Arial;font-size:19px;"><a href="./hod_add_teacher.jsp"><strong>Add Teacher Details</strong></a></span><span style="color:#00BFFF;font-family:Arial;font-size:13px;"><strong><br></strong></span>
</div>
<div id="wb_Text4">
<span style="color:#20C8FF;font-family:Arial;font-size:13px;"><strong><br></strong></span><span style="color:#00BFFF;font-family:Arial;font-size:19px;"><a href="./hod_view_teacher.jsp"><strong>View Teacher Details</strong></a></span>
</div>
</div>
<div class="col-2">
<img src="images/img0002.jpg" id="Banner2" alt="Student" style="border-width:0;display:inline-block;width:212px;height:50px;z-index:10;">
<div id="wb_Text7">
<span style="color:#00BFFF;font-family:Arial;font-size:19px;"><a href="./hod_add_student.jsp"><strong>Add Student Details</strong></a></span><span style="color:#00BFFF;font-family:Arial;font-size:13px;"><strong><br></strong></span>
</div>
<div id="wb_Text6">
<span style="color:#00BFFF;font-family:Arial;font-size:13px;"><strong><br></strong></span><span style="color:#00BFFF;font-family:Arial;font-size:19px;"><a href="./hod_view_student.jsp"><strong>View Students Report</strong></a></span>
</div>
</div>
<div class="col-3">
<img src="images/img0003.jpg" id="Banner3" alt="Subject" style="border-width:0;display:inline-block;width:212px;height:50px;z-index:13;">
<div id="wb_Text5">
<span style="color:#00BFFF;font-family:Arial;font-size:19px;"><a href="./hod_add_subject.jsp"><strong>Add Subject</strong></a></span><span style="color:#00BFFF;font-family:Arial;font-size:13px;"><strong><br></strong></span>
</div>
<div id="wb_Text8">
<span style="color:#00BFFF;font-family:Arial;font-size:13px;"><strong><br></strong></span><span style="color:#00BFFF;font-family:Arial;font-size:19px;"><a href="./hod_view_subject.jsp"><strong>Subject Report</strong></a></span><span style="color:#00BFFF;font-family:Arial;font-size:13px;"><strong><br></strong></span>
</div>
</div>
<div class="col-4">
<img src="images/img0004.jpg" id="Banner4" alt="Report" style="border-width:0;display:inline-block;width:212px;height:50px;z-index:16;">
<div id="wb_Text9">
<span style="color:#00BFFF;font-family:Arial;font-size:19px;"><a href="./hod_add_semester.jsp"><strong>Add Courses</strong></a></span><span style="color:#00BFFF;font-family:Arial;font-size:13px;"><strong><br></strong></span>
</div>
<div id="wb_Text10">
<span style="color:#00BFFF;font-family:Arial;font-size:13px;"><strong><br></strong></span><span style="color:#00BFFF;font-family:Arial;font-size:19px;"><a href="./hod_view_semester_2.jsp"><strong>Semester and Subject Report</strong></a></span>
</div>
</div>
</div>
</div>
</div>
<div id="wb_LayoutGrid7">
<div id="LayoutGrid7">
<div class="row">
<div class="col-1">
<hr id="Line6" style="display:block;width:100%;height:1px;z-index:19;">
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
<div id="wb_Bookmark1" style="display:inline-block;width:100%;z-index:21;">
<a id="Bookmark1" style="visibility:hidden">&nbsp;</a>

</div>
</div>
<div class="col-2">
<div id="wb_Image2" style="display:inline-block;width:100%;height:auto;z-index:22;">
<a href="https://www.google.nl/maps/place/40%C2%B043'05.6%22N+73%C2%B059'53.8%22W/@40.718217,-74.0004727,17z/data=!3m1!4b1!4m2!3m1!1s0x0:0x0?hl=en"><img src="images/maps_ny.jpg" id="Image2" alt=""></a>
</div>
</div>
<div class="col-3">
<input type="text" id="Editbox2" style="display:block;width:100%;height:30px;line-height:30px;z-index:23;" name="Editbox1" value="" placeholder="Email">
<textarea name="TextArea1" id="TextArea2" style="display:block;width:100%;height:88px;z-index:24;" rows="4" cols="44"></textarea>
<input type="submit" id="Button2" name="" value="CONTACT US" style="display:inline-block;width:136px;height:34px;z-index:25;">
</div>
</div>
</div>
</div>
<div id="wb_LayoutGrid5">
<div id="LayoutGrid5">
<div class="row">
<div class="col-1">
<hr id="Line3" style="display:block;width:100%;height:1px;z-index:26;">
<div id="wb_Text12">
<span style="color:#C0C0C0;font-family:Arial;font-size:15px;">Copyright &#0169; 2016 Coresta. All Rights Reserved</span><span style="color:#D2691E;font-family:Arial;font-size:15px;"><br></span><span style="color:#000000;font-family:Arial;font-size:8px;"><br></span>
</div>
</div>
</div>
</div>
</div>
</body>
</html>