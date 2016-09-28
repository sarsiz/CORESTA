
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
 * Servlet implementation class add_semester_2
 */
public class add_semester_2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public add_semester_2() {
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

		response.setContentType("text/html");
		PrintWriter out =response.getWriter();
		String department = request.getParameter("department");
		String section = request.getParameter("section");
		String shift = request.getParameter("shift");
		String semester = request.getParameter("semester");
		String subject_id = request.getParameter("subject_id");

		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/msit","root","1212");

			Statement st = con.createStatement();

			ResultSet rs= st.executeQuery("select subject_name from subject where subject_id='"+subject_id+"'");


			String subject_name="";
			while(rs.next())
			{
				subject_name=rs.getString(1);
			}

			int i=st.executeUpdate("insert into semester(department,subject_id,subject_name,section,shift,semester) values('"+department+"','"+subject_id+"','"+subject_name+"','"+section+"','"+shift+"','"+semester+"')");


			if(i>0)
			{
				out.println("<script type=text/javascript>alert('Course has been entered Sucssusfully!');location='add_semester.jsp';</script>");
			}
		}
		catch(Exception obj)
		{
			out.print("Error " +obj.getMessage());
		}
	}

}
