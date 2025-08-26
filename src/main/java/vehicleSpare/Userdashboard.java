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


public class Userdashboard extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Userdashboard() {
        super();}
        

	
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
       
        
        response.getWriter().append("Served at: ").append(request.getContextPath());
        
        ArrayList<User> users = new ArrayList<>();
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parts", "root", "nikshan");
           
            
            String query = "SELECT * FROM users";
            PreparedStatement pst = con.prepareStatement(query);
            ResultSet rs = pst.executeQuery();
            
            while (rs.next()) {
                String uname = rs.getString("uname");
                String mail = rs.getString("mail");
                String password = rs.getString("password");
                String num = rs.getString("num");
                
                User u = new User(uname, mail, password, num);
                users.add(u);
            }
            
            System.out.println("Number of users retrieved: " + users.size());
            
            request.setAttribute("userList", users);
            request.getRequestDispatcher("UserDashboard.jsp").forward(request, response);         
            
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }


	

}
