package vehicleSpare;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class Userupdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public Userupdate() {
        super();}
       
	
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		String uname=request.getParameter("uname");
		String mail=request.getParameter("mail");
		String password=request.getParameter("password");
		String num=request.getParameter("num");
		
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/parts","root","nikshan");
			
			String query = "UPDATE users SET uname=?,password=?,num=? WHERE mail=? ";
			PreparedStatement pst=con.prepareStatement(query);
			
			 pst.setString(1, uname);
	         pst.setString(2, password);
	         pst.setString(3,num);
	         pst.setString(4,mail);
			 
	         int rowsUpdated = pst.executeUpdate();
	         
	         if (rowsUpdated > 0) {
	        	 
	        	 
	        	 response.setContentType("text/html");
	                PrintWriter out = response.getWriter();
	                out.println("<script type=\"text/javascript\">");
	                out.println("alert('User details Updated Sucessfully ');");
	                out.println("location='Userdashboard';"); 
	                out.println("</script>");

             } else {
                 response.getWriter().write("Error in update task ");
             }
			  
	                
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
         catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}
		
		
	}


}