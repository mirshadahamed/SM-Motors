package vehicleSpare;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class Systemlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public Systemlogin() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
		String mail_id=request.getParameter("mail_id");
		String pasdword=request.getParameter("pasdword");
		
		
		
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/parts","root","nikshan");
			
			String query= "SELECT *  FROM Systemusers WHERE  mail_id=? AND pasdword=?";
			PreparedStatement pst=con.prepareStatement(query);
			 pst.setString(1, mail_id);
			 pst.setString(2, pasdword);
			 
			  ResultSet rs = pst.executeQuery();
	            
	            if (rs.next()) {  
	                System.out.println("Login successful");
	                response.sendRedirect("admin.jsp");
	            } else {
	                System.out.println("Invalid credentials");
	                response.sendRedirect("error.jsp");
	            }
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
         catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}
		
		
		
		
		
	}

}
