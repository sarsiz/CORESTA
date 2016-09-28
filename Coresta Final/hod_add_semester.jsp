<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add courses</title>
</head>
<%@ include file="connect.jsp"%>
<body>
	<% 
   String name = (String)session.getAttribute("user");
   if(name == null)
	   {
	     
	     out.print("<script>alert('Please login first');location='hod_signin.jsp';</script>");
	  
	   }
   else{
   out.print("Welcome "+ name );%>
	<form action="add_semester_2" method="post">
		<table align="center">
			<tr>
				<td>Department Name:</td>
				<td><select name="department">
						<option value="CSE">CSE</option>
						<option value="ECE">ECE</option>
						<option value="IT">IT</option>
						<option value="EEE">EEE</option>
				</select></td>
			</tr>
			<tr>
				<td>Subject Name:</td>
				<td><select name="subject_id">


						<%
				ResultSet rs = st.executeQuery("select * from subject");
				while (rs.next()) {
			%>

						<option value=<%=rs.getString("subject_id")%>>
							<%=rs.getString("subject_name")%>
						</option>
						<% } %>
				</select></td>
			</tr>
			<tr>
				<td>Section:</td>
				<td><select name="section">

						<option value="1">I</option>
						<option value="2">II</option>
				</select></td>
			</tr>
			<tr>
				<td>Shift:</td>
				<td><select name="shift">

						<option value="M">Morning</option>
						<option value="E">Evening</option>
				</select></td>
			</tr>
			<tr>
				<td>Semester:</td>
				<td><select name="semester">

						<option value="1st">1st Semester</option>
						<option value="2nd">2nd Semester</option>
						<option value="3rd">3rd Semester</option>
						<option value="4th">4th Semester</option>
						<option value="5th">5th Semester</option>
						<option value="6th">6th Semester</option>
						<option value="7th">7th Semester</option>
						<option value="8th">8th Semester</option>
				</select></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="Add"></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><a href="hod_panel.jsp">Back</a> </td>
			</tr>
		</table>
	</form>
	<% }%>
</body>
</html>