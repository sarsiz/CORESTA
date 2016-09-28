<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit</title>
</head>
<body>
	<script language="javascript">
		function validate(form) {
			if (form.t_name.value == "") {
				alert("Teacher Name should not be null.");
				form.t_name.focus();
				return false;
			}
			if (form.t_pass.value != form.t_cpass.value) {
				alert("Password and confirm password should be same.");
				form.t_pass.focus();
				return false;
			}
			if (form.t_uname.value == "") {
				alert("Teacher Username should not be null.");
				form.t_uname.focus();
				return false;
			}
			if (form.t_email.value == "") {
				alert("Teacher email-id should not be null.");
				form.t_email.focus();
				return false;
			}
			if (form.t_pass.value.length < 7) {
				alert("Password lenght should more than 7.");
				form.t_pass.focus();
				return false;
			}
		}
	</script>
	<%
		String name = (String) session.getAttribute("user");
		String tuname = request.getParameter("t_uname");
		Class.forName("com.mysql.jdbc.Driver");
		//session.setAttribute("t_uname", tuname); //this session will be creating a problem
		
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/msit", "root", "1212");

		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select * from teacher_data where t_username='" + tuname + "'");
		if (name == null) {

			out.print("<script>alert('Please login first');location='hod_signin.jsp';</script>");

		} else {

			out.print("Hello! " + name);
			while (rs.next()) {
	%>
	<form action="edit" method="post" onsubmit="return validate(this)">
		<table>
			<tr>
				<td colspan="2" align="center">Enter Teacher Details</td>
			</tr>
			<tr>
				<td>Teacher Id:</td>
				<td><input type="text" name="t_id"
					value="<%=rs.getString(1)%>"></td>
			</tr>
			<tr>
				<td>Teacher Name:</td>
				<td><input type="text" name="t_name"
					value="<%=rs.getString(2)%>"></td>
			</tr>
			<tr>
				<td>Teacher Username:</td>
				<td><input type="text" name="t_uname"
					value="<%=rs.getString(3)%>" readonly></td>
			</tr>
			<tr>
				<td>Teacher Password:</td>
				<td><input type="text" name="t_pass"
					value="<%=rs.getString(4)%>"></td>
			</tr>
			<tr>
				<td>Teacher Confirm Password:</td>
				<td><input type="text" name="t_cpass"
					value="<%=rs.getString(4)%>"></td>
			</tr>
			<tr>
				<td>Teacher Email:</td>
				<td><input type="text" name="t_email"
					value="<%=rs.getString(5)%>"></td>
			</tr>
			<tr>
				<td>Teacher Department:</td>
				<td><select name="t_dep">
						<option value="CSE">CSE</option>
						<option value="ECE">ECE</option>
						<option value="IT">IT</option>
						<option value="EEE">EEE</option>
				</select></td>
			</tr>
			<tr>
				<td>Teacher Shift:</td>
				<td><select name="t_shift">
						<option value="M">Morning</option>
						<option value="E">Evening</option>
				</select></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					name="submit"></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><a href="hod_view_teacher_2.jsp">Back</a></td>
			</tr>
			<tr>
				<td><a href="logout">Logout</a><br></td>
			</tr>
		</table>
	</form>
	<% } }%>
</body>
</html>