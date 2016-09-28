<%@ page language="java" import="java.sql.*"%>
<html>
<body>
	<%
		String l = request.getParameter("q");
		out.print(l);
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/msit", "root", "1212");
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select * from admin where a_username = '" + l + "' ");

		while (rs.next()) {
	%>
	<input type="text" name="a_email" id="em"
		value="<%=rs.getString(3)%>" readonly>
	<%
		}
	%>

</body>
</html>