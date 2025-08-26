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


public class Addreview extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public Addreview() {
        super();}
       
    

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());}
	

protected void doPost(HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {

		
		String pcode=request.getParameter("pcode");
		String rtype=request.getParameter("rtype");
		String pname=request.getParameter("pname");
		String msg=request.getParameter("msg");
		String rate=request.getParameter("rate");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}
		
		try {
			Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/parts","root","nikshan");
			
			String query= "INSERT INTO review (pcode,rtype,pname,msg,rate) VALUES(?,?,?,?,?)";
			
		    PreparedStatement pst=con.prepareStatement(query);
		    
		     pst.setString(1, pcode);
	         pst.setString(2, rtype);
	         pst.setString(3,pname);
	         pst.setString(4,msg);
	         pst.setString(5,rate);
	         
	         int rowsAffected = pst.executeUpdate();
	         
	         
					if(rowsAffected>0)
					{
						System.out.println("Data inserted successfully.");
						request.getSession().setAttribute("pcode", pcode);
						response.sendRedirect("Reviewsubmit.jsp");
					}
					else
					{
						System.out.println("Data  not updated.");
						response.sendRedirect("Review.jsp");
					}
				
	         
		    
		}
		catch (SQLException e)
		{
			response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Review  code Alredy used');");
            out.println("location='Review.jsp';"); 
            out.println("</script>");
		
			
		}
	
		

	}

}
