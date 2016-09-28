<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Student</title>
</head>
<body>
	<script language="javascript">
   function validate(form){
	   if(form.s_name.value=="")
		   {
		     alert("Student Name should not be null.");
		     form.s_name.focus();
		     return false;
		   }
	   if(form.s_pass.value!=form.s_cpass.value)
	   {
	     alert("Password and confirm password should be same.");
	     form.s_pass.focus();
	     return false;
	   }
	   if(form.s_uname.value=="")
	   {
	     alert("Student Username should not be null.");
	     form.s_uname.focus();
	     return false;
	   }
	   if(form.s_email.value=="")
	   {
	     alert("Student email-id should not be null.");
	     form.s_email.focus();
	     return false;
	   }
	   if(form.s_pass.value.length < 7)
	   {
	     alert("Password length should more than 7.");
	     form.s_pass.focus();
	     return false;
	   }
	   if(form.s_eno.value.length != 11)
	   {
	     alert("Enrollement Number Should Be 11 Digit.");
	     form.s_eno.focus();
	     return false;
	   }
	   if(IsNaN(form.s_ph.value))
	   {
	     alert("Phone Number should not be numerical.");
	     form.s_ph.focus();
	     return false;
	   }
   }
   
</script>
	<%@ include file="sessionfile.jsp"%>
	<%     java.text.DateFormat df = new java.text.SimpleDateFormat("yyyy-MM-dd");
			  String dat = df.format(new java.util.Date());
			  
			  session.setAttribute("date", dat);
			  %>
	Date:<%=dat %>
	<form action="hod_add_student_2" method="post"
		onsubmit="return validate(this)">
		<table>
			<tr>
				<td colspan="2" align="center">Enter Student Details</td>
			</tr>
			<tr>
				<td>Student Enrollment number</td>
				<td><input type="text" name="s_eno"></td>
			</tr>
			<tr>
				<td>Student Name:</td>
				<td><input type="text" name="s_name"></td>
			</tr>
			<tr>
				<td>Student Username:</td>
				<td><input type="text" name="s_uname"></td>
			</tr>
			<tr>
				<td>Student Password:</td>
				<td><input type="text" name="s_pass"></td>
			</tr>
			<tr>
				<td>Student Confirm Password:</td>
				<td><input type="text" name="s_cpass"></td>
			</tr>
			<tr>
				<td>Student Email-Id:</td>
				<td><input type="text" name="s_email"></td>
			</tr>
			<tr>
				<td>Student Phone Number</td>
				<td><input type="text" name="s_ph"></td>
			</tr>
			<tr>
				<td>Student Department:</td>
				<td><select name="department">

						<option value="CSE">CSE</option>
						<option value="ECE">ECE</option>
						<option value="IT">IT</option>
						<option value="EEE">EEE</option>
				</select></td>
			</tr>
			<tr>
				<td>Student Semester:</td>
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
				<td>Student Section:</td>
				<td><select name="section">

						<option value="1">I</option>
						<option value="2">II</option>
				</select></td>
			</tr>
			<tr>
				<td>Student Shift:</td>
				<td><select name="shift">

						<option value="M">Morning</option>
						<option value="E">Evening</option>
				</select></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="Save"></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><a href="hod_panel.jsp">Back</a></td>
			</tr>
			<tr>
				<td><a href="logout">Logout</a><br></td>
			</tr>
		</table>
	</form>
</body>
</html>