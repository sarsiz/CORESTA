<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Teacher</title>
<%@ include file="sessionfile.jsp"%>
<meta name="author" content="Sarsiz Chauhan">
<meta name="generator" content="sarsiz chauhan">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="font-awesome.min.css" rel="stylesheet">
<link href="hod_sign_in_page.css" rel="stylesheet">
<link href="hod_view_teacher_2.css" rel="stylesheet">
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
<span style="color:#FFFFFF;font-family:Arial;font-size:8px;"><br></span><span style="color:#FFFFFF;font-family:Arial;font-size:17px;">Welcome <% out.print(session.getAttribute("user").toString()); %></span>
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
<div id="wb_Heading3" style="position:absolute;left:450px;top:130px;width:374px;height:32px;text-align:center;z-index:7;">
<h2 id="Heading3">Teacher Details</h2></div>

<%
		String t_name = request.getParameter("t_name"); //this will be empty if the user does not enter the name
		String t_dep = request.getParameter("t_dep");
		String t_shift = request.getParameter("t_shift");

		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/msit", "root", "1212");
		Statement st = con.createStatement();

		int i = 0;
		/*
		if the user enters the department and shift and not the name
		*/
		if (t_name == "") {
			ResultSet rs = st.executeQuery(
					"select * from teacher_data where t_department='" + t_dep + "' and t_shift='" + t_shift + "'");
	%>

<table style="position:absolute;left:70px;top:240px;width:1194px;height:119px;z-index:9;" id="Table2">

<tr>
<td class="cell0"><span style="color:#2F4F4F;"><strong>ID</strong></span></td>
<td class="cell0"><span style="color:#2F4F4F;"><strong>NAME</strong></span></td>
<td class="cell0"><span style="color:#2F4F4F;"><strong>USERNAME</strong></span></td>
<td class="cell1"><span style="color:#2F4F4F;"><strong>EMAIL-ID</strong></span></td>
<td class="cell2"><span style="color:#2F4F4F;"><strong>DEPARTMENT</strong></span></td>
<td class="cell0"><span style="color:#2F4F4F;"><strong>SHIFT</strong></span></td>
<td class="cell3">&nbsp;</td>
<td class="cell4">&nbsp;</td>
</tr>

<%
      while (rs.next()) {
		i++;
%>
<!-- All the cell name should be same... -->
<tr>
<td class="cell5"><%=rs.getString(1)%></td>
<td class="cell5"><%=rs.getString(2)%></td>
<td class="cell5"><%=rs.getString(3)%></td>
<td class="cell6"><%=rs.getString(5)%></td>
<td class="cell5"><%=rs.getString(6)%></td>
<td class="cell5"><%=rs.getString(7)%></td>
<td class="cell5"><a href="edit_1.jsp?t_uname=<%=rs.getString(3)%>">Edit</a></td>
<td class="cell7"><a href="delete_3?t_uname=<%=rs.getString(3)%>">Delete</a></td>
</tr>
	<%
		} //closing while loop
			if (i == 0) {
				out.println(
					"<script type=text/javascript>alert('Record Not Found!');location='hod_view_teacher.jsp';</script>");
			}

		}
		else {
				ResultSet res = st.executeQuery("select * from teacher_data where t_name='" + t_name
						+ "' and t_department='" + t_dep + "' and t_shift='" + t_shift + "'");
		%>

<table style="position:absolute;left:70px;top:240px;width:1194px;height:119px;z-index:9;" id="Table2">
<tr>
<td class="cell0"><span style="color:#2F4F4F;"><strong>ID</strong></span></td>
<td class="cell0"><span style="color:#2F4F4F;"><strong>NAME</strong></span></td>
<td class="cell0"><span style="color:#2F4F4F;"><strong>USERNAME</strong></span></td>
<td class="cell1"><span style="color:#2F4F4F;"><strong>EMAIL-ID</strong></span></td>
<td class="cell2"><span style="color:#2F4F4F;"><strong>DEPARTMENT</strong></span></td>
<td class="cell0"><span style="color:#2F4F4F;"><strong>SHIFT</strong></span></td>
<td class="cell3">&nbsp;</td>
<td class="cell4">&nbsp;</td>
</tr>

<%
      while (res.next()) {
		i++;
%>

<tr>
<td class="cell5"><%=res.getString(1)%></td>
<td class="cell5"><%=res.getString(2)%></td>
<td class="cell5"><%=res.getString(3)%></td>
<td class="cell6"><%=res.getString(5)%></td>
<td class="cell5"><%=res.getString(6)%></td>
<td class="cell5"><%=res.getString(7)%></td>
<td class="cell5"><a href="edit_1.jsp?t_uname=<%=res.getString(3)%>">Edit</a></td>
<td class="cell7"><a href="delete_3?t_uname=<%=res.getString(3)%>">Delete</a></td>
</tr>
<%
	}
		if (i == 0) {
			out.println(
					"<script type=text/javascript>alert('Record Not Found!');location='hod_view_teacher.jsp';</script>");
		}
	}
%>
<tr>
<td align=center colspan=8> <a href="hod_view_teacher.jsp" style="text-align:center"> <input type="submit" id="Button1" name="" value="Back" style="display:inline-block;width:103px;height:33px;z-index:4;"> </a> </td>
</tr>


</table>
	</body>
</html>