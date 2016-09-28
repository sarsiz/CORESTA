<%@ include file = "sessionfile.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>View Teacher</title>
<meta name="author" content="Sarsiz Chauhan">
<meta name="generator" content="sarsiz chauhan">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="font-awesome.min.css" rel="stylesheet">
<link href="hod_sign_in_page.css" rel="stylesheet">
<link href="hod_view_teacher.css" rel="stylesheet">
<script src="jquery-1.11.3.min.js"></script>
<script src="jquery.ui.effect.min.js"></script>
<script src="wb.panel.min.js"></script>
<script src="scrollspy.min.js"></script>
<script>
$(document).ready(function()
{
   $('a[href*=#contact]').click(function(event)
   {
      event.preventDefault();
      $('html, body').stop().animate({ scrollTop: $('#wb_contact').offset().top }, 600, 'easeOutCubic');
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
<div id="wb_Heading1" style="display:inline-block;width:100%;text-align:center;z-index:0;">
<h1 id="Heading1"><a href="./hod_signin.jsp">CORESTA</a></h1>
</div>
</div>
<div class="col-2">
<div id="wb_Text1">
<% if(name=="null"){ %>
out.print("<script>alert('Please log in first.');location='hod_signin.jsp'</script>");
<span style="color:#FFFFFF;font-family:Arial;font-size:8px;"><br></span><span style="color:#FFFFFF;font-family:Arial;font-size:17px;">Welcome <% out.print(session.getAttribute("user").toString()); %></span>
<%}else{
	
}%>
</div>
</div>
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
<div id="wb_LayoutGrid2">
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
<div id="wb_LayoutGrid3">
<div id="LayoutGrid3">
<div class="row">
<div class="col-1">
</div>
<div class="col-2">
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
<div id="wb_contact" style="display:inline-block;width:100%;z-index:5;">
<a id="contact" style="visibility:hidden">&nbsp;</a>

</div>
</div>
<div class="col-2">
<div id="wb_Image1" style="display:inline-block;width:100%;height:auto;z-index:6;">
<a href="https://www.google.nl/maps/place/40%C2%B043'05.6%22N+73%C2%B059'53.8%22W/@40.718217,-74.0004727,17z/data=!3m1!4b1!4m2!3m1!1s0x0:0x0?hl=en"><img src="images/maps_ny.jpg" id="Image1" alt=""></a>
</div>
</div>
<div class="col-3">
<input type="text" id="Editbox7" style="display:block;width:100%;height:30px;line-height:30px;z-index:7;" name="Editbox1" value="" placeholder="Email">
<textarea name="TextArea1" id="TextArea1" style="display:block;width:100%;height:88px;z-index:8;" rows="4" cols="44"></textarea>
<input type="submit" id="Button2" name="" value="CONTACT US" style="display:inline-block;width:136px;height:34px;z-index:9;">
</div>
</div>
</div>
</div>
<div id="wb_LayoutGrid7">
<div id="LayoutGrid7">
<div class="row">
<div class="col-1">
<hr id="Line3" style="display:block;width:100%;height:1px;z-index:10;">
<div id="wb_Text7">
<span style="color:#C0C0C0;font-family:Arial;font-size:15px;">Copyright &#0169; 2016 Coresta. All Rights Reserved</span><span style="color:#D2691E;font-family:Arial;font-size:15px;"><br></span><span style="color:#000000;font-family:Arial;font-size:8px;"><br></span>
</div>
</div>
</div>
</div>
</div>
<div id="wb_Heading3" style="position:absolute;left:430px;top:130px;width:374px;height:32px;text-align:center;z-index:17;">
<h2 id="Heading3">View Teacher Details</h2></div>

<form action="hod_view_teacher_2.jsp" method = "post" >
<table style="position:absolute;left:420px;top:210px;width:376px;height:154px;z-index:18;" id="Table1">
<tr>
<td class="cell0"><span style="color:#2F4F4F;"><strong>Teacher Name</strong></span></td>
<td class="cell1"><span style="color:#000000;"> </span></td>
</tr>
<tr>
<td class="cell2"><span style="color:#2F4F4F;"><strong>Department</strong></span></td>
<td class="cell3">&nbsp;</td>
</tr>
<tr>
<td class="cell4"><span style="color:#2F4F4F;"><strong>Shift</strong></span></td>
<td class="cell3">&nbsp;</td>
</tr>
</table>
<input type="text" id="Editbox2" style="position:absolute;left:630px;top:220px;width:130px;height:19px;line-height:19px;z-index:19;" name="t_name" value="">
<select name="t_dep" size="1" id="Combobox1" style="position:absolute;left:630px;top:270px;width:90px;height:28px;z-index:22;">
	<option value="CSE">CSE</option>
	<option value="ECE">ECE</option>
	<option value="IT">IT</option>
	<option value="EEE">EEE</option>
</select>

<select name="t_shift" size="1" id="Combobox2" style="position:absolute;left:630px;top:320px;width:90px;height:28px;z-index:23;">
	<option value="M">Morning</option>
	<option value="E">Evening</option>
</select>


<input type="submit" id="Button3" name="" value="View Details" style="position:absolute;left:533px;top:380px;width:150px;height:30px;z-index:20;">
</form>

<div id="wb_CssMenu2" style="position:absolute;left:30px;top:130px;width:140px;height:232px;filter:alpha(opacity=60);opacity:0.60;z-index:21;">
<ul>
<li class="firstmain"><a class="withsubmenu" href="#" target="_self" title="Teacher">Teacher</a>

<ul>
<li class="firstitem"><a class="active" href="./hod_add_teacher.jsp" target="_self" title="Add Teacher Details">Add&nbsp;Teacher&nbsp;Details</a>
</li>
<li class="lastitem"><a href="./hod_view_teacher.jsp" target="_self" title="View Teacher Details">View&nbsp;Teacher&nbsp;Details</a>
</li>
</ul>
</li>
<li><a class="withsubmenu" href="#" target="_self" title="Student">Student</a>

<ul>
<li class="firstitem"><a href="./hod_add_student.jsp" target="_self" title="Add Student Details">Add&nbsp;Student&nbsp;Details</a>
</li>
<li class="lastitem"><a href="./hod_view_student.jsp" target="_self" title="View Student Details">View&nbsp;Student&nbsp;Details</a>
</li>
</ul>
</li>
<li><a class="withsubmenu" href="#" target="_self" title="Subject">Subject</a>

<ul>
<li class="firstitem"><a href="./hod_add_subject.jsp" target="_self" title="Add Subject">Add&nbsp;Subject</a>
</li>
<li class="lastitem"><a href="./hod_view_subject.jsp" target="_self" title="Subject Report">Subject&nbsp;Report</a>
</li>
</ul>
</li>
<li><a class="withsubmenu" href="#" target="_self" title="Report">Report</a>

<ul>
<li class="firstitem"><a href="./hod_add_semester.jsp" target="_self" title="Add Courses">Add&nbsp;Courses</a>
</li>
<li class="lastitem"><a href="./hod_view_semester_2.jsp" target="_self" title="Semester and Subject Report">Semester&nbsp;and&nbsp;Subject&nbsp;Report</a>
</li>
</ul>
</li>
</ul>
</div>


</body>
</html>