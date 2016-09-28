<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="Select.js">
	
</script>
</head>
<body>

	<form action="forget_password_2" method="post">
		<table>
			<tr>
				<td>Username:</td>
				<td><input type="text" name="a_name"
					onKeyUp="showUser(this.value);"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">Your password will be sent to
					your email id.</td>
			</tr>
			<tr>

				<td>Email-Id:</td>
				<td><div id="txtHint">
						<input type="text" name="a_email" id="em">
					</div></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="submit"></td>
			</tr>
		</table>
	</form>
</body>
</html>