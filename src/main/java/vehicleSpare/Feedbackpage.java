package vehicleSpare;
import vehicleModel.Feedback;
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
import java.util.ArrayList;

 



public class Feedbackpage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Feedbackpage() {
        super();}
  

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		
		 ArrayList<Contact> feedback = new ArrayList<Contact>();
	        
	        try {
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parts", "root", "nikshan");
	           
	            
	            String query = "SELECT * FROM contactus";
	            PreparedStatement pst = con.prepareStatement(query);
	            ResultSet rs = pst.executeQuery();
	            
	            while (rs.next()) {
	                String email = rs.getString("email");
	                String name = rs.getString("name");
	                String subject = rs.getString("subject");
	                String phone = rs.getString("phone");
	                String message = rs.getString("message");
	                   
	                Contact k = new Contact(email, name, subject, phone,message);
	                feedback.add(k);
	            }
	            
	            System.out.println("Number of Feedback retrieved: " + feedback.size());
	            
	            request.setAttribute("feedbackList", feedback);
	            request.getRequestDispatcher("feddbackview.jsp").forward(request, response);         
	            
	        } catch (SQLException e) {
	            e.printStackTrace();
	        } catch (ClassNotFoundException e) {
	            e.printStackTrace();
	        }
	        
	        
	        
	        
	        
	    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
