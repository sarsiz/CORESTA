<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add subject</title>
</head>
<body>
	<%@ include file="sessionfile.jsp"%>
	<form action="add_subject_2" method="post">
		<table align="center">
			<tr>
				<td>Enter the subject Name:</td>
				<td><input type="text" name="subject"></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="Add"></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><a href="hod_panel.jsp">back</a></td>
			</tr>
		</table>
	</form>
</body>
</html>