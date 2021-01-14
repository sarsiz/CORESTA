

import java.io.IOException;
import java.io.PrintWriter;

import javax.mail.Session;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;

/**
 * Servlet implementation class Admin_login
 */


public class Admin_login extends HttpServlet {
	private static final long serialVersionUID = 1L;
  

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		response.setContentType("text/html");
		PrintWriter out =response.getWriter();
		String a_user = request.getParameter("a_username");
		String a_pass = request.getParameter("a_password");
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/msit",username,password);
			 
			  Statement st = con.createStatement();
			  
			ResultSet rs =  st.executeQuery("select * from admin where a_username='"+a_user+"' and a_password='"+a_pass+"'");
			int i=0;
			while(rs.next())
			{
				i++;
			}
			if(i>0)
			{	
				session.setAttribute("user",a_user);
				response.sendRedirect("hod_panel.jsp");
			}
			else
			{
			        response.sendRedirect("invalid.jsp");
			}
		}
		  catch(Exception obj)
		  {
			  out.print("Error "+ obj.getMessage());
		  }
		
	}

}
