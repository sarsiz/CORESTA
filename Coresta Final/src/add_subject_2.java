

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
 * Servlet implementation class add_subject_2
 */
public class add_subject_2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public add_subject_2() {
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
		String subject = request.getParameter("subject");
		
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/msit","root","1212");
			 
			  Statement st = con.createStatement();
			  //subject already stored in database
			  ResultSet rs= st.executeQuery("select subject_name from subject where subject_name='"+subject+"'");
			  
			  int already=0;
			  while(rs.next())
			  {
				  already++;
			  }
			  
			  if(already>0)
			  {
				  out.println("<script type=text/javascript>alert('Subject Already stored');location='add_subject.jsp';</script>");
			  }
			  
			  else
			  {
				 // new subject add in database 
			  int i=st.executeUpdate("insert into subject(subject_name) values('"+subject+"')");
			if(i>0)
			{
				out.println("<script type=text/javascript>alert('Subject Added');location='add_subject.jsp';</script>");
			}
			  
			  }
		}
		catch(Exception obj)
		{
			out.print("Error "+ obj.getMessage());
		}
	}

}
