<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%@ include file = "connect.jsp" %>
<body>

<%@ include file = "sessionfile.jsp" %>

<%
   String department = request.getParameter("department");
	String section = request.getParameter("section");
	String shift = request.getParameter("shift");
	String semester = request.getParameter("semester");
	%>
   <table align="center" border="1" style="border-collapse:collapse">
   <tr>
   		<td align="center" colspan="5"><b>Report of Semester and their Subjects</b></td>
   </tr>
   <tr>
   		<td>Department</td>
   		<td>Subject Name</td>
   		<td>Semester</td>
   		<td>Section</td>
   		<td>Shift</td>
   		
   	</tr>
   	<%
   		ResultSet rs= st.executeQuery("select * from semester where semester='"+semester+"' and department='"+department+"' and shift ='"+shift+"' and section='"+section+"'");
   	    int i=0;
   	    while(rs.next())
   	    {
   	    	i++;
   	%>
   	<tr>
   		<td align="center"><%= rs.getString(2)%></td>
   	 	<td align="center"><%=rs.getString(4)%></td>
   	 	<td align="center"><%=rs.getString(7)%></td>
   	 	<td align="center"><%=rs.getString(5)%></td>
   	 	<td align="center"><%=rs.getString(6)%></td>
   	 	
   	</tr>
   	<%
   	}
   	   if(i==0)
   	   {
   		   out.print("<script type=text/javascript>alert('Record Not Found!');location='hod_view_semester_2.jsp';</script>");
   	   }
   	%>
   </table>
   <a href="hod_panel.jsp">Back</a>
		       <a href="logout">Logout</a><br>
   </body>
</html>