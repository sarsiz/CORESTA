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
import javax.servlet.http.HttpSession;

public class add_student_2 extends HttpServlet {

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		response.setContentType("text/html");
		PrintWriter out =response.getWriter();
		String department = request.getParameter("department");
		String section = request.getParameter("section");
		String shift = request.getParameter("shift");
		String semester = request.getParameter("semester");
		String enroll = request.getParameter("s_eno");
		String name = request.getParameter("s_name");
		String username = request.getParameter("s_uname");
		String password = request.getParameter("s_pass");
		String email = request.getParameter("s_email");
		String phone = request.getParameter("s_ph");
		String date = session.getAttribute("date").toString();

		//out.print(semester+department+shift+enroll+name+username+password+email+phone+date);

		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/msit","root","1212");

			Statement st = con.createStatement();

			ResultSet rs= st.executeQuery("select sem_id from semester where semester='"+semester+"' and shift='"+shift+"' and section='"+section+"' and department='"+department+"'");


			String sem_id="";
			while(rs.next())
			{
				sem_id=rs.getString(1);
			}
			//out.print(sem_id);
			int i=st.executeUpdate("insert into student(s_enrollment_number,sem_id,s_name,s_username,s_password,s_email,s_phone_number,date,s_dept,s_section,s_shift,s_semester) values('"+enroll+"','"+sem_id+"','"+name+"','"+username+"','"+password+"','"+email+"','"+phone+"','"+date+"','"+department+"','"+section+"','"+shift+"','"+semester+"')");


			if(i>0)
			{
				out.println("<script type=text/javascript>alert('Student Data has been entered Successfully!!');location='teacher_enter_student_detail.jsp';</script>");
			}

			else
			{
				out.println("<script type=text/javascript>alert('course is not available for student. Student details not Entered');location='teacher_enter_student_detail.jsp';</script>");
			}
		}
		catch(Exception obj)
		{
			out.print("Error " +obj.getMessage());
		}
	}

}
