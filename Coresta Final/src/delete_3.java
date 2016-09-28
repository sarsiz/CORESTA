

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
 * Servlet implementation class delete_3
 */
public class delete_3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public delete_3() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		response.setContentType("text/html");
		PrintWriter out =response.getWriter();
		
		//It is the username which is being passed on
		String t_user = request.getParameter("t_uname");
		
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/msit","root","1212");
			 
			  Statement st = con.createStatement();
			  
			  int i = st.executeUpdate("delete from teacher_data where t_username='"+t_user+"'");
			  
			if(i>0)
			{
				out.println("<script type=text/javascript>alert('Record Deleted!');location='admin_panel.jsp';</script>");
			}
			else
			{
				out.println("<script type=text/javascript>alert('Teacher Username does not found in DataBase!!');location='admin_panel.jsp';</script>");
			}
		      
		}
		catch(Exception obj)
		{
			out.print("Error "+ obj.getMessage());
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
/*	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out =response.getWriter();
		
		String t_user = request.getParameter("t_name");
		
		
		out.print(t_user);
		try{
			Class.forName("com.mysql.jdbc.Driver");
			  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/msit","root","1212");
			 
			  Statement st = con.createStatement();
			  
			  int i = st.executeUpdate("delete from teacher_data where t_username='"+t_user+"'");
			  
			if(i>0)
			{
				out.println("<script type=text/javascript>alert('Record Deleted!');location='admin_panel.jsp';</script>");
			}
			else
			{
				out.println("<script type=text/javascript>alert('Teacher Username not Found in DataBase!');location='admin_panel.jsp';</script>");
			}
		      
		}
		catch(Exception obj)
		{
			out.print("Error "+ obj.getMessage());
		}
	}*/
}
