<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<title>Add Student Details</title>
<%@ include file="sessionfile.jsp" %>
<meta name="author" content="Sarsiz Chauhan">
<meta name="generator" content="sarsiz chauhan">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="font-awesome.min.css" rel="stylesheet">
<link href="hod_sign_in_page.css" rel="stylesheet">
<link href="teacher_enter_student_detail.css" rel="stylesheet">
<script src="jquery-1.11.3.min.js"></script>
<script src="wb.panel.min.js"></script>
<script src="scrollspy.min.js"></script>
<script>
$(document).ready(function()
{
   $("#PanelMenu1").panel({animate: true, animationDuration: 400, animationEasing: 'linear', dismissible: true, display: 'overlay', position: 'left'});
});
</script>

<script language="javascript">
   function validate(form){
	   if(form.s_name.value=="")
		   {
		     alert("Student Name should not be null.");
		     form.s_name.focus();
		     return false;
		   }
	   if(form.s_pass.value!=form.s_cpass.value)
	   {
	     alert("Password and confirm password should be same.");
	     form.s_pass.focus();
	     return false;
	   }
	   if(form.s_uname.value=="")
	   {
	     alert("Student Username should not be null.");
	     form.s_uname.focus();
	     return false;
	   }
	   if(form.s_email.value=="")
	   {
	     alert("Student email-id should not be null.");
	     form.s_email.focus();
	     return false;
	   }
	   if(form.s_pass.value.length < 7)
	   {
	     alert("Password lenght should more than 7.");
	     form.s_pass.focus();
	     return false;
	   }
	   if(form.s_eno.value.length != 11)
	   {
	     alert("Enrollement Number Should Be 11 Digit.");
	     form.s_eno.focus();
	     return false;
	   }
	   if(IsNaN(form.s_ph.value))
	   {
	     alert("Phone Number should not be numerical.");
	     form.s_ph.focus();
	     return false;
	   }
   }
   
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
<div class="col-2">
<div id="wb_Text1">
<% if(name!=null){ %>
<span style="color:#FFFFFF;font-family:Arial;font-size:8px;"><br></span><span style="color:#FFFFFF;font-family:Arial;font-size:17px;">Welcome <% out.print(session.getAttribute("user").toString()); %> </span>
<%}else{
response.sendRedirect("teacher_signin.jsp");
}%>
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
<div id="wb_LayoutGrid2">
<div id="LayoutGrid2">
<div class="row">
<div class="col-1">
<div id="wb_CssMenu2" style="display:inline-block;width:241px;height:280px;filter:alpha(opacity=60);opacity:0.60;z-index:4;">
<ul>
<li class="firstmain"><a href="./teacher_view_profile.jsp" target="_self" title="View Profile">View&nbsp;Profile</a>
</li>
<li><a class="active" href="./teacher_enter_student_detail.jsp" target="_self" title="Add Students Details">Add&nbsp;Students&nbsp;Details</a>
</li>
<li><a href="./teacher_students_report.jsp" target="_self" title="Students Report">Students&nbsp;Report</a>
</li>
<li><a href="./teacher_attendance.jsp" target="_self" title="Attendance">Attendance</a>
</li>
<li><a href="./teacher_view_attendance.jsp" target="_self" title="View Attendance">View&nbsp;Attendance</a>
</li>
</ul>

</div>
</div>
<div class="col-2">
</div>
</div>
</div>
</div>
<div id="wb_Form1" style="position:absolute;left:360px;top:230px;width:518px;height:478px;z-index:31;">
<%
		   java.text.DateFormat df = new java.text.SimpleDateFormat("yyyy-MM-dd");
			  String dat = df.format(new java.util.Date());
			  
			  session.setAttribute("date", dat);
			  %>
	Date:<%=dat %>
<form action="add_student_2" method="post" onsubmit="return validate(this)">
<label for="Label1" id="Label1" style="position:absolute;left:39px;top:14px;width:168px;height:20px;line-height:20px;z-index:5;">Enrollment Number</label>
<input type="tel" id="Editbox1" style="position:absolute;left:225px;top:14px;width:190px;height:20px;line-height:20px;z-index:6;" name="s_eno" value="">
<label for="Label2" id="Label2" style="position:absolute;left:39px;top:49px;width:168px;height:20px;line-height:20px;z-index:7;">Student Name</label>
<input type="text" id="Editbox2" style="position:absolute;left:225px;top:49px;width:190px;height:20px;line-height:20px;z-index:8;" name="s_name" value="">
<label for="Label3" id="Label3" style="position:absolute;left:39px;top:84px;width:168px;height:20px;line-height:20px;z-index:9;">Student Username</label>
<input type="text" id="Editbox3" style="position:absolute;left:225px;top:84px;width:190px;height:18px;line-height:18px;z-index:10;" name="s_uname" value="" placeholder="username">
<label for="Label4" id="Label4" style="position:absolute;left:39px;top:117px;width:168px;height:20px;line-height:20px;z-index:11;">Password</label>
<input type="password" id="Editbox4" style="position:absolute;left:225px;top:117px;width:190px;height:20px;line-height:20px;z-index:12;" name="s_pass" value="" placeholder="password">
<label for="Label5" id="Label5" style="position:absolute;left:39px;top:152px;width:168px;height:20px;line-height:20px;z-index:13;">Confirm Password</label>
<input type="password" id="Editbox5" style="position:absolute;left:225px;top:152px;width:190px;height:18px;line-height:18px;z-index:14;" name="s_cpass" value="" placeholder="confirm password">
<label for="Label7" id="Label7" style="position:absolute;left:39px;top:185px;width:168px;height:20px;line-height:20px;z-index:15;">Email ID</label>
<input type="text" id="Editbox6" style="position:absolute;left:225px;top:185px;width:190px;height:20px;line-height:20px;z-index:16;" name="s_email" value="">
<label for="Label8" id="Label7" style="position:absolute;left:39px;top:220px;width:168px;height:20px;line-height:20px;z-index:17;">Phone number</label>
<input type="tel" id="Editbox7" style="position:absolute;left:225px;top:220px;width:190px;height:20px;line-height:20px;z-index:18;" name="s_ph" value="">
<label for="Label9" id="Label8" style="position:absolute;left:39px;top:255px;width:168px;height:20px;line-height:20px;z-index:19;">Department</label>
<select name="department" size="1" id="Combobox1" style="position:absolute;left:225px;top:255px;width:200px;height:30px;z-index:20;">
<option selected value="Select">Select your Department</option>
		<option value="CSE">CSE</option>
		<option value="ECE">ECE</option>
		<option value="IT">IT</option>
		<option value="EEE">EEE</option>
</select>
<label for="Label10" id="Label9" style="position:absolute;left:39px;top:290px;width:168px;height:20px;line-height:20px;z-index:20;">Semester</label>
<select name="semester" size="1" id="Combobox2" style="position:absolute;left:225px;top:290px;width:200px;height:28px;z-index:21;">
			<option value="1st">1st Semester</option>
			<option value="2nd">2nd Semester</option>
			<option value="3rd">3rd Semester</option>
			<option value="4th">4th Semester</option>
			<option value="5th">5th Semester</option>
			<option value="6th">6th Semester</option>
			<option value="7th">7th Semester</option>
			<option value="8th">8th Semester</option>
</select>
<label for="Label11" id="Label10" style="position:absolute;left:39px;top:323px;width:168px;height:20px;line-height:20px;z-index:22;">Section</label>
<select name="section" size="1" id="Combobox3" style="position:absolute;left:225px;top:323px;width:200px;height:28px;z-index:23;">
			<option value="1">I</option>
			<option value="2">II</option>
</select>
<label for="Button1" id="Label11" style="position:absolute;left:39px;top:356px;width:168px;height:20px;line-height:20px;z-index:24;">Shift</label>
<select name="shift" size="1" id="Combobox4" style="position:absolute;left:225px;top:356px;width:200px;height:28px;z-index:25;">
		<option value="M">Morning</option>
		<option value="E">Evening</option>
</select>
<input type="submit" id="Button1" name="" value="Save" style="position:absolute;left:219px;top:409px;width:96px;height:25px;z-index:26;">

<input type="reset" id="Button2" name="" value="Reset" style="position:absolute;left:219px;top:439px;width:96px;height:25px;z-index:28;">
</form>
</div>
<div id="wb_Text3" style="position:absolute;left:470px;top:120px;width:940px;height:34px;z-index:32;text-align:left;">
<span style="color:#8A2BE2;font-family:Arial;font-size:29px;"><strong>Enter Students Details</strong></span></div>
</body>
</html>