<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Subject</title>
</head>
<%@include file="connect.jsp"%>
<body>
	<%@ include file="sessionfile.jsp"%>
	<%
		int i = 0;

		ResultSet rs = st.executeQuery("select * from subject ");
		//out.print(i);
	%>
	<table align="center" border="1" style="border-collapse: collapse">
		<tr>
			<td align="center" colspan="4"><b>Subjects</b>
			<td>
		</tr>
		<tr>
			<td>Id</td>
			<td>Subject_name</td>
			<td>Edit</td>
			<td>Delete</td>
		</tr>
		<%
			while (rs.next()) {
				i++;
				//out.print(i);
		%>
		<tr>
			<td><%=rs.getString(1)%></td>
			<td><%=rs.getString(2)%></td>
			<td><a href="Subject_edit.jsp?sub_id=<%=rs.getString(1)%>">Edit</a></td>
			<td><a href="subject_delete?sub_id=<%=rs.getString(1)%>">Delete</a></td>
		</tr>
		<%
			} //closing while loop
			if (i == 0) {

				out.println(
						"<script type=text/javascript>alert('Record Not Found!');location='hod_view_teacher.jsp';</script>");
			}
		%>
		<a href="hod_panel.jsp">Back</a>
		<a href="logout">Logout</a>
		<br>
</body>
</html>