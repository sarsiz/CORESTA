

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class add_teacher_2
 */
public class add_teacher_2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public add_teacher_2() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		response.setContentType("text/html");
		PrintWriter out =response.getWriter();
		String t_no = request.getParameter("t_id");
		String t_name = request.getParameter("t_name");
		String t_user = request.getParameter("t_uname");
		String t_pass = request.getParameter("t_pass");
		String t_email = request.getParameter("t_email");
		String t_dep = request.getParameter("t_dep");
		String t_shift = request.getParameter("t_shift");

		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/msit","root","1212");

			Statement st = con.createStatement();

			int i=st.executeUpdate("insert into teacher_data values('"+t_no+"','"+t_name+"','"+t_user+"','"+t_pass+"','"+t_email+"','"+t_dep+"','"+t_shift+"')");
			if(i>0)
			{
				out.println("<script type=text/javascript>alert('Teacher Record Inserted');location='add_teacher.jsp';</script>");
			}

		}
		catch(Exception obj)
		{
			out.print("Error "+ obj.getMessage());
		}
	}

}
