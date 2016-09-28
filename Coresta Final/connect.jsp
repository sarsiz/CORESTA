<%@ page language = "java" import = "java.sql.*" %>

<html>
<body>

<%
  Class.forName("com.mysql.jdbc.Driver");
  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/msit","root","1212");
  Statement st = con.createStatement();
%>
</body>
</html>