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
import java.util.ArrayList;

public class Orderdetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Orderdetails() {
        super();}
        

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().append("Served at: ").append(request.getContextPath());
        
        ArrayList<P_Order> orders = new ArrayList<>();
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parts", "root", "nikshan");
           
            
            String query = "SELECT * FROM orders";
            PreparedStatement pst = con.prepareStatement(query);
            ResultSet rs = pst.executeQuery();
            
            while (rs.next()) {
                String o_id = rs.getString("o_id");
                String name = rs.getString("name");
                String address = rs.getString("address");
                String email = rs.getString("email");
                String phone = rs.getString("phone");
                String o_date = rs.getString("o_date");
                String o_time = rs.getString("o_time");
                
                
                System.out.println("Order ID: " + o_id + ", Name: " + name + ", Address: " + address + 
                        ", Email: " + email + ", Phone: " + phone + 
                        ", Date: " + o_date + ", Time: " + o_time);

                P_Order p = new P_Order(o_id, name, address, email, phone, o_date, o_time);
                          orders.add(p);
            }
            
            System.out.println("Number of orders retrieved: " + orders.size());
            
            request.setAttribute("ordersList", orders);
            request.getRequestDispatcher("orderpage.jsp").forward(request, response);         
            
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

		
		
	}

	
	


