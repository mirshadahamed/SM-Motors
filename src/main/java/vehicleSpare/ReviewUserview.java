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


public class ReviewUserview extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public ReviewUserview() {
        super();}
        

	
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
       
        
        response.getWriter().append("Served at: ").append(request.getContextPath());
        
        ArrayList<Review> revi = new ArrayList<>();
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parts", "root", "nikshan");
           
            
            String query = "SELECT * FROM review";
            PreparedStatement pst = con.prepareStatement(query);
            ResultSet rs = pst.executeQuery();
            
            while (rs.next()) {
                String pcode = rs.getString("pcode");
                String rtype = rs.getString("rtype");
                String pname = rs.getString("pname");
                String msg = rs.getString("msg");
                String rate = rs.getString("rate");
                
                
            	
                Review r = new Review(pcode, rtype, pname, msg,rate);
                revi.add(r);
            }
            
            System.out.println("Number of users retrieved: " + revi.size());
            
            request.setAttribute("reviList", revi);
            request.getRequestDispatcher("Userrate.jsp").forward(request, response);         
            
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }


	

}
