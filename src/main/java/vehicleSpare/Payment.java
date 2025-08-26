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



public class Payment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Payment() {
        super();}
      
    

	
	

	
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String payname = request.getParameter("payname");
        String mail = request.getParameter("mail");
        String remark = request.getParameter("remark");
        String amount = request.getParameter("amount");
        String cnum = request.getParameter("cnum");
        String cname = request.getParameter("cname");
        String cmonth = request.getParameter("cmonth");
        String cyear = request.getParameter("cyear");
        String cvv = request.getParameter("cvv");

        System.out.println("Received payment info: " + payname + ", " + mail + ", " + remark + ", " + amount);

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            System.out.println("JDBC Driver not found.");
            e.printStackTrace();
        }

        try {
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parts", "root", "nikshan123");

            String query = "INSERT INTO pay (payname,mail,remark,amount,cnum,cname,cmonth,cyear,cvv) VALUES(?,?,?,?,?,?,?,?,?)";
            PreparedStatement pst = con.prepareStatement(query);
            pst.setString(1, payname);
            pst.setString(2, mail);
            pst.setString(3, remark);
            pst.setString(4, amount);
            pst.setString(5, cnum);
            pst.setString(6, cname);
            pst.setString(7, cmonth);
            pst.setString(8, cyear);
            pst.setString(9, cvv);

            System.out.println("Executing query: " + query);
           
            int rowsAffected = pst.executeUpdate();

            if (rowsAffected > 0) {
                System.out.println("Data inserted successfully.");
                request.getSession().setAttribute("uname", payname);
                response.sendRedirect("payconfirm.jsp");
            } else {
                System.out.println("Data not inserted.");
                response.sendRedirect("error.jsp");
            }

        } catch (SQLException e) {
        	System.out.println("Data not inserted.");
            response.sendRedirect("error.jsp");
            e.printStackTrace();
        }
    }

	


}
