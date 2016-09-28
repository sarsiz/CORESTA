<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Attendance</title>

<%@ include file="sessionfile.jsp" %>
<%@ include file="connect.jsp" %>
<meta name="author" content="Sarsiz Chauhan">
<meta name="generator" content="sarsiz chauhan">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="font-awesome.min.css" rel="stylesheet">
<link href="hod_sign_in_page.css" rel="stylesheet">
<link href="teacher_attendance.css" rel="stylesheet">
<script src="jquery-1.11.3.min.js"></script>
<script src="wb.panel.min.js"></script>
<script src="scrollspy.min.js"></script>
<script>
$(document).ready(function()
{
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
   <li><a href="./hod_panel.jsp#contact"><i class="fa fa-paper-plane-o fa-fw">&nbsp;</i><span>Contact</span></a></li>
</ul>
</div>

</div>
</div>
<div class="col-4">
<div id="wb_Text2">
<a href="logout"></div><span style="color:#FFFFFF;font-family:Arial;font-size:17px;">Log Out</span></a>
</div>
</div>
</div>
</div>
</div>
<div id="wb_Text3" style="position:absolute;left:520px;top:130px;width:242px;height:34px;text-align:center;z-index:18;">
<span style="color:#8A2BE2;font-family:Arial;font-size:29px;"><strong>Attendance</strong></span></div>
<div id="wb_Form1" style="position:absolute;left:480px;top:240px;width:388px;height:278px;z-index:19;">

<form action="teacher_attendance_2.jsp" method="post">
<label for="Combobox1" id="Label1" style="position:absolute;left:19px;top:14px;width:132px;height:20px;line-height:20px;z-index:4;">Department Name</label>
<select name="department" size="1" id="Combobox1" style="position:absolute;left:169px;top:14px;width:200px;height:29px;z-index:5;">
   		<option value="CSE">CSE</option>
   		<option value="ECE">ECE</option>
   		<option value="IT">IT</option>
   		<option value="EEE">EEE</option>
</select>
<label for="Combobox2" id="Label2" style="position:absolute;left:19px;top:49px;width:132px;height:20px;line-height:20px;z-index:6;">Subject Name</label>
<select name="subject_id" size="1" id="Combobox2" style="position:absolute;left:169px;top:47px;width:200px;height:29px;z-index:7;">
			<%
				ResultSet rs = st.executeQuery("select * from subject");
				while (rs.next()) {
			%>
			
			<option value=<%=rs.getString("subject_id")%>>
				<%=rs.getString("subject_name")%>
			</option>
			<% } %>
</select>
<label for="Combobox3" id="Label3" style="position:absolute;left:19px;top:80px;width:132px;height:20px;line-height:20px;z-index:8;">Section</label>
<select name="section" size="1" id="Combobox3" style="position:absolute;left:169px;top:80px;width:200px;height:29px;z-index:9;">
			<option value="1">I</option>
   			<option value="2">II</option>
</select>
<label for="Combobox4" id="Label4" style="position:absolute;left:19px;top:113px;width:132px;height:20px;line-height:20px;z-index:10;">Shift</label>
<select name="shift" size="1" id="Combobox4" style="position:absolute;left:169px;top:113px;width:200px;height:29px;z-index:11;">
			<option value="M">Morning</option>
   			<option value="E">Evening</option>
</select>
<label for="Combobox5" id="Label5" style="position:absolute;left:19px;top:146px;width:132px;height:20px;line-height:20px;z-index:12;">Semester</label>
<select name="semester" size="1" id="Combobox5" style="position:absolute;left:169px;top:146px;width:200px;height:29px;z-index:13;">
   			<option value="1st">1st Semester</option>
   			<option value="2nd">2nd semester</option>
   			<option value="3rd">3rd semester</option>
   			<option value="4th">4th semester</option>
   			<option value="5th">5th semester</option>
   			<option value="6th">6th semester</option>
   			<option value="7th">7th semester</option>
   			<option value="8th">8th semester</option>
</select>
<input type="submit" id="Button1" name="" value="Take Attendance" style="position:absolute;left:84px;top:189px;width:153px;height:37px;z-index:14;">
<input type="reset" id="Button2" name="" value="Reset" style="position:absolute;left:109px;top:239px;width:93px;height:35px;z-index:15;">
</form>
</div>
<div id="wb_LayoutGrid3">
<div id="LayoutGrid3">
<div class="row">
<div class="col-1">
<div id="wb_CssMenu2" style="display:inline-block;width:241px;height:280px;filter:alpha(opacity=60);opacity:0.60;z-index:16;">
<ul>
<li class="firstmain"><a href="./teacher_view_profile.jsp" target="_self" title="View Profile">View&nbsp;Profile</a>
</li>
<li><a href="./teacher_enter_student_detail.jsp" target="_self" title="Add Students Details">Add&nbsp;Students&nbsp;Details</a>
</li>
<li><a href="./teacher_students_report.jsp" target="_self" title="Students Report">Students&nbsp;Report</a>
</li>
<li><a class="active" href="./teacher_attendance.jsp" target="_self" title="Attendance">Attendance</a>
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
</body>
</html>