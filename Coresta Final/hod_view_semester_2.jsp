<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Semester and Subject Report</title>
</head>
<%@ include file="connect.jsp"%>
<body>
	<%@ include file="sessionfile.jsp"%>
	<form action="hod_view_semester_3.jsp" method="post">
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
						<option value="2nd">2nd semester</option>
						<option value="3rd">3rd semester</option>
						<option value="4th">4th semester</option>
						<option value="5th">5th semester</option>
						<option value="6th">6th semester</option>
						<option value="7th">7th semester</option>
						<option value="8th">8th semester</option>
				</select></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="Show"></td>
			</tr>
		</table>
	</form>
	<a href="hod_view_semester.jsp">All subject and Semester Report</a>
	<a href="hod_panel.jsp">Back</a>
	<a href="logout">Logout</a>
	<br>
</body>
</html>