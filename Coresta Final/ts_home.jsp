<%@ page language="java"%>
<%@ include file="connect.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Star</title>
</head>
<body>
	<%
		String u = request.getParameter("username");
		String p = request.getParameter("password");
		String temp = " ";
		ResultSet rs = st.executeQuery("select * from teacher_data where t_username='" + u + "' and t_password='" + p + "'");
		int i = 0;
		while (rs.next()) {
			i++;
			temp = rs.getString(1);
		}
		if (i > 0) {
			session.setAttribute("t_id", temp); //session created using the teacher id , as stored in db
			session.setAttribute("user", u);
			response.sendRedirect("teacher_panel.jsp");
		}
		else{
			out.print(u + ", you are not yet registered on Star.");
			out.println("<script type=text/javascript>alert('Please Contact your department HOD for your login id and password');location='teacher_signin.jsp';</script>");
		}
	%>
</body>
</html>