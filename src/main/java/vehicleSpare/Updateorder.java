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
	       

	        public class Updateorder extends HttpServlet {
	        	private static final long serialVersionUID = 1L;
	               
	          
	            public Updateorder() {
	                super();}
	               
	        	
	        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	        		
	        		String o_id=request.getParameter("o_id");
	        		String name=request.getParameter("name");
	        		String address=request.getParameter("address");
	        		String email=request.getParameter("email");
	        		String phone=request.getParameter("phone");
	        		String o_date=request.getParameter("o_date");
	        		String o_time=request.getParameter("o_time");
	        		
	        		
	        		try {
	        			Class.forName("com.mysql.cj.jdbc.Driver");
	        			Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/parts","root","nikshan");
	        			
	        			String query = "UPDATE orders SET name=?,address=?,email=?,phone=?,o_date=?,o_time=? WHERE o_id=? ";
	        			PreparedStatement pst=con.prepareStatement(query);
	        			
	        			 pst.setString(1, name);
	        	         pst.setString(2, address);
	        	         pst.setString(3,email);
	        	         pst.setString(4,phone);
	        	         pst.setString(5,o_date);
	        	         pst.setString(6,o_time);
	        	         pst.setString(7,o_id);
	        	       
	        			 
	        	         int rowsUpdated = pst.executeUpdate();
	        	         
	        	         if (rowsUpdated > 0) {
	        	        	 response.sendRedirect("Orderdetails");

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