

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class forget_password_2
 */
public class forget_password_2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public forget_password_2() {
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
		HttpSession session=request.getSession(); 
		response.setContentType("text/html");
		PrintWriter out =response.getWriter();
		String a_user = request.getParameter("a_name");
		String a_email = request.getParameter("a_email");

		out.print(a_user  +  a_email);
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/msit","root","1212");
			Statement st = con.createStatement();

			ResultSet rs = st.executeQuery("select a_password from admin where a_username='"+a_user+"'and a_email='"+a_email+"'");
			int i = 0;
			while(rs.next())
			{
				i++;
			}
			if(i>0)
			{   
				session.setAttribute("password", rs.getString(2));
				session.setAttribute("email",a_email);
				response.sendRedirect("Newmail.jsp");
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

