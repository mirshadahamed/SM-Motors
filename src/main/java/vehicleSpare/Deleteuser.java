package vehicleSpare;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.annotation.WebServlet;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


public class Deleteuser extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public Deleteuser() {
        super();}
        
    

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        String mail = request.getParameter("mail");

	        try {
	            Class.forName("com.mysql.cj.jdbc.Driver");

	            try (Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parts", "root", "nikshan");
	                 PreparedStatement pst = con.prepareStatement("DELETE FROM users WHERE mail=?")) {

	                pst.setString(1, mail);
	                int rowsDeleted = pst.executeUpdate();

	                if (rowsDeleted > 0) {
	                    
	                    
	                    response.setContentType("text/html");
		                PrintWriter out = response.getWriter();
		                out.println("<script type=\"text/javascript\">");
		                out.println("alert('User Data Deleted Sucessfully ');");
		                out.println("location='Userdashboard';"); 
		                out.println("</script>");
	                } else {
	                    response.getWriter().write("No user found with the provided email.");
	                }
	            }
	        } catch (SQLException | ClassNotFoundException e) {
	            e.printStackTrace();
	            response.getWriter().write("Error: " + e.getMessage());
	        }
	    }
}
