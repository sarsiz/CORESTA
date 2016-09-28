<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!--<title>processing...</title> -->
</head>
<body>

	<% 
	String name = (String) session.getAttribute("user");
		if (name == null) {
			//out.print("<script>alert('Please login first');</script>");
			%>
			<script type="text/javascript">alert('You have successfully logged out!!');</script>
			<%
			response.sendRedirect("hod_signin.jsp");

		}
	%>
	



</body>
</html>