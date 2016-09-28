import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Calculate
 */
public class Calculate extends HttpServlet {
	private static final long serialVersionUID = 1L;


	String recieve = "";

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Calculate() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int status(String enroll,String semester_id){
		int yes=0;

		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/msit","root", "1212");
			Statement st = con.createStatement();

			ResultSet res3 =st.executeQuery("select * from attendance where sem_id ='"+semester_id+"' and s_enrollment_number='"+enroll+"'");

			while(res3.next())
			{
				recieve=res3.getString(8);
				if(recieve.equals("Present")){
					yes++;
				}
			}



		}
		catch(Exception obj){
			System.out.print("Error "+ obj.getMessage());}
		return yes;
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();


		String department = request.getParameter("department");
		String section = request.getParameter("section");
		String shift = request.getParameter("shift");
		String subject_id = request.getParameter("subject_id");
		String semester = request.getParameter("semester");
		String subject_name = "";
		String semester_id="";

		//out.print(department + section + shift + semester + subject_id +"<br>");




		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/msit","root", "1212");
			Statement st = con.createStatement();

			ResultSet res = st.executeQuery("select subject_name from subject where subject_id='"+subject_id+"'");

			while(res.next())
			{
				subject_name=res.getString(1);
			}

			session.setAttribute("subject_name", subject_name);
			ResultSet rs1=st.executeQuery("select * from attendance where subject_name='"+subject_name+"'");
			String lcno="";
			int k=0;
			while(rs1.next())
			{
				k++;
				lcno=rs1.getString(6); 
			}
			int lc=0;
			if((k==0) && lcno.equals(""))
			{
				//out.println("k = "+k);
				lc=1;

			}
			else
			{

				lc=Integer.parseInt(lcno);  
			}
			String lct =Integer.toString(lc);
			session.setAttribute("lecture_number",lct);
			out.println("Total Number of Lecture = " +lcno);
			ResultSet rs= st.executeQuery("select sem_id from semester where shift='"+shift+"' and section='"+section+"' and semester='"+semester+"' and department='"+department+"' and subject_name='"+subject_name+"'");

			java.text.DateFormat df = new java.text.SimpleDateFormat("yyyy-MM-dd");
			String dat = df.format(new java.util.Date());

			int count=0;
			String enroll="";
			int present=0;
			String sname="";


			if(rs!=null){
				int i=1;
				int ct=0;
				while(rs.next())
				{  
					semester_id = rs.getString(1);
				}
				session.setAttribute("sem_id",semester_id);
				ResultSet resu = st.executeQuery("select * from student where sem_id='"+semester_id+"'");

				
				while(resu.next())
				{
					count++;
					enroll=resu.getString(1);
					sname=resu.getString(3);
					out.print("<tr>");
					int total_present=status(enroll,semester_id); 
					out.print("<td> "+ i +"</td><td>" + enroll + "</td><td>" + sname + "</td><td>" + total_present + "</td>");
					out.print("</tr>");

					i++;
					ct++;
				}

				out.print("</table>");
			}

		}
		catch(Exception obj){
			out.print("Error "+ obj.getMessage());
		}
	}
}
