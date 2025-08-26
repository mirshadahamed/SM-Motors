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


public class Paymentboard extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Paymentboard() {
        super();}
        

	
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        System.out.println("Paymentboard doGet method called.");
        
        response.getWriter().append("Served at: ").append(request.getContextPath());
        
        ArrayList<Pay> payment = new ArrayList<>();
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parts", "root", "nikshan123");
            System.out.println("Database connection established successfully.");
            
            String query = "SELECT * FROM pay";
            PreparedStatement pst = con.prepareStatement(query);
            ResultSet rs = pst.executeQuery();
            
            while (rs.next()) {
                String payname = rs.getString("payname");
                String mail = rs.getString("mail");
                String remark = rs.getString("remark");
                String amount = rs.getString("amount");
                String cnum = rs.getString("cnum");
                String cname = rs.getString("cname");
                String cmonth = rs.getString("cmonth");
                String cyear = rs.getString("cyear");
                String cvv = rs.getString("cvv");
                
                Pay k = new Pay(payname, mail, remark, amount,cnum, cname, cmonth, cyear,cvv);
                payment.add(k);
            }
            
            System.out.println("Number of users retrieved: " + payment.size());
            
            request.setAttribute("paymentList", payment);
            request.getRequestDispatcher("Paymentboard.jsp").forward(request, response);         
            
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }


	

}
