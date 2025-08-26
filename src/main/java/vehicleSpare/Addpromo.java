package vehicleSpare;

import java.io.IOException;

import java.io.PrintWriter;
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


public class Addpromo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public Addpromo() {
        super();
    }
       
    

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {

		
		String pcode=request.getParameter("pcode");
		String promoTitle=request.getParameter("promoTitle");
		String promoDescription=request.getParameter("promoDescription");
		String promoDate=request.getParameter("promoDate");
		String promoend=request.getParameter("promoend");
		
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}
		
		try {
			Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/parts","root","nikshan123");
			
			String query= "INSERT INTO promo (pcode,promoTitle,promoDescription,promoDate,promoend) VALUES(?,?,?,?,?)";
			
		    PreparedStatement pst=con.prepareStatement(query);
		    
		     pst.setString(1, pcode);
	         pst.setString(2, promoTitle);
	         pst.setString(3,promoDescription);
	         pst.setString(4,promoDate);
	         pst.setString(5, promoend);
	         
	         int rowsAffected = pst.executeUpdate();
	         
	         
					if(rowsAffected>0)
					{
						System.out.println("Data inserted successfully.");
						request.getSession().setAttribute("pcode", pcode);
						 response.setContentType("text/html");
	                     PrintWriter out = response.getWriter();
	                     out.println("<script type=\"text/javascript\">");
	                     out.println("alert('Promo Created successfully');");
	                     out.println("location='Addpromo.jsp';");
	                     out.println("</script>");
					}
					else
					{
						response.setContentType("text/html");
		                PrintWriter out = response.getWriter();
		                out.println("<script type=\"text/javascript\">");
		                out.println("alert('Promo code Already used');");
		                out.println("location='Addpromo.jsp';"); 
		                out.println("</script>");
					}
				
	         
		    
		}
		catch (SQLException e)
		{
			response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Promo code Alredy used');");
            out.println("location='Addpromo.jsp';"); 
            out.println("</script>");
			
		}
	
		

	}

}
