<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Profile</title>
<%@ include file="connect.jsp"%>
<%@ include file="sessionfile.jsp"%>
<meta name="author" content="Sarsiz Chauhan">
<meta name="generator" content="sarsiz chauhan">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="font-awesome.min.css" rel="stylesheet">
<link href="hod_sign_in_page.css" rel="stylesheet">
<link href="teacher_view_profile.css" rel="stylesheet">
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
<h1 id="Heading1"><a href="./home_page.jsp">CORESTA</a></h1>
</div>
</div>
<%if(name!=null){%>
<div class="col-2">
<div id="wb_Text1">
<span style="color:#FFFFFF;font-family:Arial;font-size:8px;"><br></span><span style="color:#FFFFFF;font-family:Arial;font-size:17px;">Welcome <% out.print(session.getAttribute("user").toString()); %></span>
</div>
</div>
<%}else{
response.sendRedirect("teacher_signin.jsp");
}%>
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
<div id="wb_CssMenu2" style="display:inline-block;width:241px;height:280px;filter:alpha(opacity=60);opacity:0.60;z-index:4;">
<ul>
<li class="firstmain"><a class="active" href="./teacher_view_profile.jsp" target="_self" title="View Profile">View&nbsp;Profile</a>
</li>
<li><a href="./teacher_enter_student_detail.jsp" target="_self" title="Add Students Details">Add&nbsp;Students&nbsp;Details</a>
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
<div id="wb_Heading3" style="position:absolute;left:450px;top:130px;width:374px;height:32px;text-align:center;z-index:8;">
<h2 id="Heading3">Your Profile</h2></div>

<%
		String id = (String) session.getAttribute("t_id");
		ResultSet rs = st.executeQuery("select * from teacher_data where t_no=" + id);
		if(rs.next()){
	%>

<table style="position:absolute;left:285px;top:257px;width:943px;height:119px;z-index:9;" id="Table1">
<tr>
<td class="cell0"><span style="color:#8A2BE2;"><strong>TEACHER ID</strong></span></td>
<td class="cell0"><span style="color:#8A2BE2;"><strong>NAME</strong></span></td>
<td class="cell0"><span style="color:#8A2BE2;"><strong>USERNAME</strong></span></td>
<td class="cell1"><span style="color:#8A2BE2;"><strong>EMAIL-ID</strong></span></td>
<td class="cell2"><span style="color:#8A2BE2;"><strong>DEPARTMENT</strong></span></td>
<td class="cell3"><span style="color:#8A2BE2;"><strong>SHIFT</strong></span></td>
</tr>
<tr>
<td class="cell4"><%= rs.getString(1) %></td>
<td class="cell4"><%= rs.getString(2) %></td>
<td class="cell4"><%= rs.getString(3) %></td>
<td class="cell5"><%= rs.getString(5) %></td>
<td class="cell4"><%= rs.getString(6) %></td>
<td class="cell6"><%= rs.getString(7) %></td>
</tr>
</table>
<%} else {
		out.print("Profile doesn't exist");
	}%>

</body>
</html>