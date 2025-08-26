package vehicleSpare;

import java.io.IOException;
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

public class UpdateReview extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public UpdateReview() {
        super();}
       
	
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		String pcode=request.getParameter("pcode");
		String rtype=request.getParameter("rtype");
		String pname=request.getParameter("pname");
		String msg=request.getParameter("msg");
		String rate=request.getParameter("rate");
		
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/parts","root","nikshan");
			
			String query = "UPDATE review SET rtype=?,pname=?,msg=?,rate=? WHERE pcode=? ";
			PreparedStatement pst=con.prepareStatement(query);
			
			 pst.setString(1, rtype);
	         pst.setString(2, pname);
	         pst.setString(3,msg);
	         pst.setString(4,rate);
	         pst.setString(5,pcode);
			 
	         int rowsUpdated = pst.executeUpdate();
	         
	         if (rowsUpdated > 0) {
	        	 response.sendRedirect("ReviewPage");

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