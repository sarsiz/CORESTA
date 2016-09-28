<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Subject</title>
</head>
<%@ include file="connect.jsp"%>
<body>
	<form action="subject_edit" method="post">
		<table align="center">
			<tr>
				<%
					String sub_id = request.getParameter("sub_id");
					session.setAttribute("sub_id", sub_id);

					ResultSet rs = st.executeQuery("select subject_name from subject where subject_id='" + sub_id + "'");

					while (rs.next()) {
				%>

				<td>Subject Name:</td>
				<td><input type="text" value="<%=rs.getString(1)%>"
					name="subject"></td>

				<%
					}
				%>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="update"></td>
			</tr>
		</table>
	</form>
</body>
</html>