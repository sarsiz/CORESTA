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

/**
 * Servlet implementation class attendance_3
 */
public class attendance_3 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public attendance_3() {
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

		String sem_id = session.getAttribute("sem_id").toString();
		String name = (String) session.getAttribute("user");
		String subject_name = session.getAttribute("subject_name").toString();
		String lecture_number = session.getAttribute("lacture_number").toString();


		java.text.DateFormat df = new java.text.SimpleDateFormat("yyyy-MM-dd");
		String dat = df.format(new java.util.Date());

		String ab[] = request.getParameterValues("ab");

		String depart="";

		//out.print(sem_id);




		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/msit","root", "1212");
			Statement st = con.createStatement();

			String getEn="";
			String status="jdgsh";
			String stname="";


			//out.println("done: <br>");
			int count=Integer.parseInt(request.getParameter("count"));

			if(ab != null)
			{


				//out.println(count+"<hr>");
				for (int i = 0; i<count; i++)
				{
					//out.println(i + "<br>"); 
					status="Present";
					getEn="st"+i;
					stname="stnm"+i;


					String sn=request.getParameter(getEn);
					String sname=request.getParameter(stname);
					for (int j=0;j<ab.length;j++)
					{

						if(sn.equals(ab[j]))
						{
							status="Present";
							break;
						}
						else
						{
							status="Absent";
						}

					}//out.println(i+"**"+sn+"-----------------"+ab[i]+"<br><br>");

					st.executeUpdate("insert into attendance values('"+sem_id+"','"+sn+"','"+sname+"','"+name+"','"+subject_name+"','"+lecture_number+"','"+dat+"','"+status+"')");
				}
			}
			else{
				out.print("All Absent");

				for (int i = 0; i<count; i++)
				{
					//out.println(i + "<br>"); 
					status="Absent";
					getEn="st"+i;
					stname="stnm"+i;


					String sn=request.getParameter(getEn);
					String sname=request.getParameter(stname);
					//out.println(i+"**"+sn+"-----------------"+ab[i]+"<br><br>");

					st.executeUpdate("insert into attendance values('"+sem_id+"','"+sn+"','"+sname+"','"+name+"','"+subject_name+"','"+lecture_number+"','"+dat+"','"+status+"')");

				}
			}

			out.print("<script type=text/javascript>alert('Attendance taken!');location='teacher_panel.jsp';</script>");
		}
		catch(Exception obj){
			out.print("Error "+ obj.getMessage());
		}
	}

}