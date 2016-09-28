<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Attendance Report</title>
<%@ include file="sessionfile.jsp" %>
<%@ include file="connect.jsp" %>
<meta name="author" content="Sarsiz Chauhan">
<meta name="generator" content="sarsiz chauhan">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="font-awesome.min.css" rel="stylesheet">
<link href="hod_sign_in_page.css" rel="stylesheet">
<link href="teacher_view_attendance.css" rel="stylesheet">
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
<div id="wb_Heading1" style="display:inline-block;width:100%;z-index:0;">
<h1 id="Heading1"><a href="./teacher_signin.jsp">CORESTA</a></h1>
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
<div id="wb_LayoutGrid3">
<div id="LayoutGrid3">
<div class="row">
<div class="col-1">
<div id="wb_Text3">
<span style="color:#8A2BE2;font-family:Arial;font-size:27px;"><strong>View Attendance</strong></span>
</div>
</div>
</div>
</div>
</div>
<div id="wb_LayoutGrid2">
<div id="LayoutGrid2">
<div class="row">
<div class="col-1">
</div>
<form action="Calculate" method="post">
<div class="col-2">
<label for="LayoutGrid2" id="Label1" style="display:block;width:100%;height:42px;line-height:42px;z-index:5;">Department Name</label>
<label for="Combobox3" id="Label2" style="display:block;width:100%;height:42px;line-height:42px;z-index:6;">Subject Name</label>
<label for="Label3" id="Label3" style="display:block;width:100%;height:42px;line-height:42px;z-index:7;">Section</label>
<label for="Label4" id="Label4" style="display:block;width:100%;height:42px;line-height:42px;z-index:8;">Shift</label>
<label for="Label5" id="Label5" style="display:block;width:100%;height:42px;line-height:42px;z-index:9;">Semester</label>
</div>
<div class="col-3">
<select name="department" size="1" id="Combobox1" style="display:block;width:100%;height:28px;z-index:10;">
   	<option value="CSE">CSE</option>
   	<option value="ECE">ECE</option>
   	<option value="IT">IT</option>
   	<option value="EEE">EEE</option>
</select>
<select name="subject_id" size="1" id="Combobox2" style="display:block;width:100%;height:28px;z-index:11;">
			<%
				ResultSet rs = st.executeQuery("select * from subject");
				while (rs.next()) {
			%>
			
			<option value=<%=rs.getString("subject_id")%>>
				<%=rs.getString("subject_name")%>
			</option>
			<% } %>
</select>
<select name="section" size="1" id="Combobox3" style="display:block;width:100%;height:28px;z-index:12;">
   			<option value="1">I</option>
   			<option value="2">II</option>
</select>
<select name="shift" size="1" id="Combobox4" style="display:block;width:100%;height:28px;z-index:13;">
   			<option value="M">Morning</option>
   			<option value="E">Evening</option>
</select>
<select name="semester" size="1" id="Combobox5" style="display:block;width:100%;height:28px;z-index:14;">
   		<option value="1st">1st semester</option>
   		<option value="2nd">2nf semester</option>
   		<option value="3rd">3rd semester</option>
   		<option value="4th">4th semester</option>
   		<option value="5th">5th semester</option>
   		<option value="6th">6th semester</option>
   		<option value="7th">7th semester</option>
   		<option value="8th">8th semester</option>
</select>
</div>
<div class="col-4">
</div>
</div>
</div>
</div>
<div id="wb_LayoutGrid4">
<div id="LayoutGrid4">
<div class="row">
<div class="col-1">
<input type="submit" id="Button1" name="" value="Submit" style="display:inline-block;width:103px;height:30px;z-index:15;">
</div>
</div>
</div>
</div>
</form>
<div id="wb_LayoutGrid6">
<div id="LayoutGrid6">
<div class="row">
<div class="col-1">
<div id="wb_Text6">
<span style="color:#C0C0C0;font-family:Arial;font-size:15px;"><strong>ADDRESS</strong><br>C-4 Janak Puri, New Delhi-110058<br><br><strong>CONTACTS</strong><br>Email: director@msit.in<br>Phone: 25528117, 25552667<br></span>
</div>
<div id="wb_contact" style="display:inline-block;width:100%;z-index:17;">
<a id="contact" style="visibility:hidden">&nbsp;</a>

</div>
</div>
<div class="col-2">
<div id="wb_Image1" style="display:inline-block;width:100%;height:auto;z-index:18;">
<a href="https://www.google.nl/maps/place/40%C2%B043'05.6%22N+73%C2%B059'53.8%22W/@40.718217,-74.0004727,17z/data=!3m1!4b1!4m2!3m1!1s0x0:0x0?hl=en"><img src="images/maps_ny.jpg" id="Image1" alt=""></a>
</div>
</div>
<div class="col-3">
<input type="text" id="Editbox1" style="display:block;width:100%;height:30px;line-height:30px;z-index:19;" name="Editbox1" value="" placeholder="Email">
<textarea name="TextArea1" id="TextArea1" style="display:block;width:100%;height:88px;z-index:20;" rows="4" cols="44"></textarea>
<input type="submit" id="Button2" name="" value="CONTACT US" style="display:inline-block;width:136px;height:34px;z-index:21;">
</div>
</div>
</div>
</div>
<div id="wb_LayoutGrid7">
<div id="LayoutGrid7">
<div class="row">
<div class="col-1">
<hr id="Line6" style="display:block;width:100%;height:1px;z-index:22;">
<div id="wb_Text7">
<span style="color:#C0C0C0;font-family:Arial;font-size:15px;">Copyright &#0169; 2016 Coresta. All Rights Reserved</span><span style="color:#D2691E;font-family:Arial;font-size:15px;"><br></span><span style="color:#000000;font-family:Arial;font-size:8px;"><br></span>
</div>
</div>
</div>
</div>
</div>
</body>
</html>