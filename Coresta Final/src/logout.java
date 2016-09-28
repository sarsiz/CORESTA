import java.io.IOException;  
import java.io.PrintWriter;  

import javax.servlet.ServletException;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
import javax.servlet.http.HttpSession;  
public class logout extends HttpServlet {  
	protected void doGet(HttpServletRequest request, HttpServletResponse response)  
			throws ServletException, IOException {  
		response.setContentType("text/html");  
		PrintWriter out=response.getWriter();  

		request.getRequestDispatcher("admin.jsp").include(request, response);  

		HttpSession session=request.getSession();  
		session.removeAttribute("user");
		session.invalidate();  		

		out.print("<script type=text/javascript>alert('You have successfully Logged Out.');location='admin.jsp';</script>");  

		/*
		 * response.setHeader("Cache-Control", "no-cache");
response.setHeader("Pragma", "no-cache");
response.setDateHeader("Expires", 0); 
		 */

		out.close();  
	}  
}  