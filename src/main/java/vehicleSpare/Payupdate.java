package vehicleSpare;

import java.io.IOException;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


public class Payupdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Payupdate() {
        super();}
   

	


    Connection con = null;
    PreparedStatement pst = null;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String payname=request.getParameter("payname");
		String mail=request.getParameter("mail");
		String remark=request.getParameter("remark");
		String amount=request.getParameter("amount");
		String cnum=request.getParameter("cnum");
		String cname=request.getParameter("cname");
		String cmonth=request.getParameter("cmonth");
		String cyear=request.getParameter("cyear");
		String cvv=request.getParameter("cvv");
	         
		
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/parts","root","nikshan123");
			
			String query = "UPDATE pay SET payname=?,remark=?, amount=?, cnum=?, cname=?, cmonth=?, cyear=?, cvv=? WHERE mail=?";

			PreparedStatement pst=con.prepareStatement(query);
			
			 pst.setString(1, payname);
	      
	         pst.setString(2,remark);
	         pst.setString(3,amount);
	         pst.setString(4,cnum);
	         pst.setString(5,cname);
	         pst.setString(6,cmonth);
	         pst.setString(7,cyear);
	         pst.setString(8,cvv);
	         pst.setString(9, mail);
	         int rowsUpdated = pst.executeUpdate();
//			  
			  pst.executeUpdate();
			  response.sendRedirect("Paymentboard");          
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
         catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}
		
		
	}

}
