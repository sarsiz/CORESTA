

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class subject_edit
 */
public class subject_edit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public subject_edit() {
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
		HttpSession session = request.getSession();
		String sub_id =session.getAttribute("sub_id").toString();
		String subject = request.getParameter("subject");
		
		//out.print(sub_id);
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/msit","root","1212");
			 
			  Statement st = con.createStatement();
			  
			  int i = st.executeUpdate("update subject set subject_name='"+subject+"' where subject_id='"+sub_id+"'");
			  
			if(i>0)
			{
				out.println("<script type=text/javascript>alert('Subject Updated!');location='view_subject.jsp';</script>");
			}
			
		}
		catch(Exception obj)
		{
			out.print("Error "+ obj.getMessage());
		}
	}

}
