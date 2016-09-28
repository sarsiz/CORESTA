

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class change_password_2
 */
public class change_password_2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public change_password_2() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String op = request.getParameter("p");
		String user = (String)session.getAttribute("user");
		String np = request.getParameter("np");

		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/msit","root","1212");

			Statement st = con.createStatement();
			ResultSet rs =  st.executeQuery("select * from admin where a_username='"+user+"' and a_password='"+op+"'");

			int i=0;
			while(rs.next())
			{
				i++;
			}
			//out.println(user+i);
			if(i>0)
			{
				int j= st.executeUpdate("update admin set a_password='"+np+"' where a_username='"+user+"'");
				if(j>0)
				{
					out.print("<script type=text/javascript>alert('Your Password has been changed successfully.'); location='change_password.jsp';</script>");
				}

			}
			else
			{
				out.print("<script type=text/javascript>alert('Your Old Password is Wrong.'); location='change_password.jsp';</script>");
			}
		}
		catch(Exception obj)
		{
			out.print("Error "+ obj.getMessage());

		}

	}
}