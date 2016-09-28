<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%@ include file="connect.jsp"%>
<body>
	<%@ include file="sessionfile.jsp"%>
	<%
	String department = request.getParameter("department");
	String section = request.getParameter("section");
	String shift = request.getParameter("shift");
	String semester = request.getParameter("semester");
	
%>
	<table align="center" border="1" style="border-collapse: collapse">
		<tr>
			<td align="center" colspan="7"><b>Report of Students</b></td>
		</tr>
		<tr>
			<td>Department</td>
			<td>Student Name</td>
			<td>Enrollment Number</td>
			<td>Username</td>
			<td>Email</td>
			<td>Phone Number</td>

		</tr>
		<%
   		ResultSet rs= st.executeQuery("select sem_id from semester where semester='"+semester+"' and department='"+department+"' and shift ='"+shift+"' and section='"+section+"'");
   	    int i=0;
   	    int j=0;
   	    String sem_id="";
   	    
   	    while(rs.next())
   	    {
   	    	i++;
   	    	sem_id=rs.getString(1);
   	    }
   	    if(i>0)
   	    {
   	    	ResultSet res= st.executeQuery("select * from student where sem_id='"+sem_id+"'");
   	    	
   	    	while(res.next())
   	    	{
   	    	j++;	
   	    	
   	%>
		<tr>
			<td align="center"><%= department%></td>
			<td align="center"><%=res.getString(3)%></td>
			<td align="center"><%=res.getString(1)%></td>
			<td align="center"><%=res.getString(4)%></td>
			<td align="center"><%=res.getString(6)%></td>
			<td align="center"><%=res.getString(7)%></td>
		</tr>
		<%
   	}// while close
   	    }//if close
   	   if(i==0 || j==0)
   	   {
   		   out.print("<script type=text/javascript>alert('Record Not Found!');location='view_student.jsp';</script>");
   	   }
   	%>
	</table>
	<a href="teacher_panel.jsp">Back</a>
	<a href="logout">Logout</a>
	<br>
</body>
</html>