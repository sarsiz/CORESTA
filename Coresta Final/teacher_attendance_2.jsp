<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Take Attendance</title>
<%@ include file="connect.jsp"%>
<%@ include file="sessionfile.jsp"%>
<meta name="author" content="Sarsiz Chauhan">
<meta name="generator" content="sarsiz chauhan">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="font-awesome.min.css" rel="stylesheet">
<link href="hod_sign_in_page.css" rel="stylesheet">
<link href="teacher_attendance_2.css" rel="stylesheet">
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
<a href="logout"><span style="color:#FFFFFF;font-family:Arial;font-size:17px;">Log Out</span></a>
</div>
</div>
</div>
</div>
</div>

<%
		String department = request.getParameter("department");
		String section = request.getParameter("section");
		String shift = request.getParameter("shift");
		String subject_id = request.getParameter("subject_id");
		String semester = request.getParameter("semester");
		String subject_name = "";
		String semester_id = "";

		ResultSet res = st.executeQuery("select subject_name from subject where subject_id='" + subject_id + "'");

		while (res.next()) {
			subject_name = res.getString(1);
		}

		session.setAttribute("subject_name", subject_name);
		ResultSet rs1 = st.executeQuery("Select * from attendance where subject_name='" + subject_name + "'");
		String lcno = "";
		int k = 0;
		while (rs1.next()) {
			k++;
			lcno = rs1.getString(6);
		}
		int lc = 0;
		if ((k == 0) && lcno.equals("")) {
			out.println("k = " + k);
			lc = 1;

		} else {

			lc = Integer.parseInt(lcno) + 1;
		}
		String lct = Integer.toString(lc);
		session.setAttribute("lacture_number", lct);
		//out.println("Lecture no = " +lcno);
		ResultSet rs = st.executeQuery("select sem_id from semester where shift='" + shift + "' and section='"
				+ section + "' and semester='" + semester + "' and department='" + department
				+ "' and subject_name='" + subject_name + "'");

		java.text.DateFormat df = new java.text.SimpleDateFormat("yyyy-MM-dd");
		String dat = df.format(new java.util.Date());
	%>

<div id="wb_Form1" style="position:absolute;left:500px;top:90px;width:370px;height:220px;z-index:19;">
<form action="attendance_3" method="post">
<label for="Label2" id="Label1" style="position:absolute;left:40px;top:30px;width:132px;height:20px;line-height:20px;z-index:4;">Department</label>
<label for="" id="Label2" style="position:absolute;left:210px;top:30px;width:112px;height:20px;line-height:20px;z-index:5;"><%=department%></label>
<label for="" id="Label5" style="position:absolute;left:210px;top:60px;width:112px;height:20px;line-height:20px;z-index:6;"><%=section%></label>
<label for="Label7" id="Label6" style="position:absolute;left:40px;top:90px;width:132px;height:20px;line-height:20px;z-index:7;">Shift</label>
<label for="Label5" id="Label4" style="position:absolute;left:40px;top:60px;width:132px;height:20px;line-height:20px;z-index:8;">Section</label>
<label for="Label11" id="Label8" style="position:absolute;left:40px;top:120px;width:132px;height:20px;line-height:20px;z-index:9;">Semester</label>
<label for="Label12" id="Label9" style="position:absolute;left:40px;top:150px;width:132px;height:20px;line-height:20px;z-index:10;">Subject</label>
<label for="Label13" id="Label10" style="position:absolute;left:40px;top:180px;width:132px;height:20px;line-height:20px;z-index:11;">Lecture No. </label>
<label for="" id="Label7" style="position:absolute;left:210px;top:90px;width:112px;height:19px;line-height:19px;z-index:12;"><%=shift%></label>
<label for="" id="Label11" style="position:absolute;left:210px;top:120px;width:112px;height:19px;line-height:19px;z-index:13;"><%=semester%></label>
<label for="" id="Label12" style="position:absolute;left:210px;top:150px;width:112px;height:19px;line-height:19px;z-index:14;"><%=subject_name%></label>
<label for="" id="Label13" style="position:absolute;left:210px;top:180px;width:112px;height:19px;line-height:19px;z-index:15;"><%=lc%></label>
<label for="Label14" id="Label3" style="position:absolute;left:40px;top:0px;width:93px;height:20px;line-height:20px;z-index:16;">Date</label>
<label for="" id="Label14" style="position:absolute;left:210px;top:0px;width:112px;height:20px;line-height:20px;z-index:17;"><%=dat %></label>
</div>
<table style="position:absolute;left:357px;top:380px;width:646px;height:101px;z-index:20;" id="Table1">
<tr>
<td class="cell0"><span style="color:#000000;font-family:Arial;font-size:15px;line-height:16px;"><strong> S. No</strong></span></td>
<td class="cell1"><span style="color:#000000;font-family:Arial;font-size:15px;line-height:16px;"><strong> Enrollment Number</strong></span></td>
<td class="cell0"><span style="color:#000000;font-family:Arial;font-size:15px;line-height:16px;"><strong>Name</strong></span></td>
<td class="cell2"><span style="color:#000000;font-family:Arial;font-size:15px;line-height:16px;"><strong> Attendance</strong></span></td>
</tr>
<%
				int count = 0;
				if (rs != null) {
					int i = 1;
					int ct = 0;
					while (rs.next()) {
						semester_id = rs.getString(1);
					}
					session.setAttribute("sem_id", semester_id);
					ResultSet resu = st.executeQuery("select * from student where sem_id='" + semester_id + "'");

					while (resu.next()) {
						count++;
			%>
<tr>
<td class="cell3"><span style="color:#000000;font-family:Arial;font-size:13px;line-height:16px;"><input type="text" value="<%=i%>" readonly="readonly"> </span></td>
<td class="cell4"><span style="color:#000000;font-family:Arial;font-size:13px;line-height:16px;"><input type="text" name="st<%=ct%>" value="<%=resu.getString(1)%>"> </span></td>
<td class="cell3"><span style="color:#000000;font-family:Arial;font-size:13px;line-height:16px;"><input type="text" name="stnm<%=ct%>" value="<%=resu.getString(3)%>" readonly> </span></td>
<td class="cell5"><span style="color:#000000;font-family:Arial;font-size:13px;line-height:16px;"><input type="checkbox" name="ab" value="<%=resu.getString(1)%>"> </span></td>
</tr>
			<%
				i++;
						ct++;
					}

				}
		%>
		<tr><td></td>
		</tr>
		<tr><td></td>
		</tr>
<tr>
<td colspan="4" align="center"><input type="hidden" name="count" value="<%=count%>"> <input
			type="submit" value="Submit"></td>
</tr>
</table>

	</form>
	<a href="teacher_panel.jsp">Back</a>
</form>
<div id="wb_Text3" style="position:absolute;left:380px;top:330px;width:540px;height:19px;z-index:21;text-align:left;">
<span style="color:#8A2BE2;font-family:Arial;font-size:16px;"><strong>&nbsp; Check&nbsp; the box if the student is <em><u>PRESENT</u></em>&nbsp; and uncheck if <em><u>ABSENT</u></em>&nbsp;&nbsp; </strong></span></div>
<div id="wb_CssMenu2" style="position:absolute;left:60px;top:110px;width:241px;height:280px;filter:alpha(opacity=60);opacity:0.60;z-index:22;">
<ul>
<li class="firstmain"><a href="./teacher_view_profile.jsp" target="_self" title="View Profile">View&nbsp;Profile</a>
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
</body>
</html>