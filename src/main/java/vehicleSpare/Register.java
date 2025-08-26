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


public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public Register() {
        super();}
       
    

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());}
	

protected void doPost(HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {

		
		String uname=request.getParameter("uname");
		String mail=request.getParameter("mail");
		String password=request.getParameter("password");
		String num=request.getParameter("num");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}
		
		try {
			Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/parts","root","nikshan");
			
			String query= "INSERT INTO users (uname,mail,password,num) VALUES(?,?,?,?)";
			
		    PreparedStatement pst=con.prepareStatement(query);
		    
		     pst.setString(1, uname);
	         pst.setString(2, mail);
	         pst.setString(3,password);
	         pst.setString(4,num);
	         
	         int rowsAffected = pst.executeUpdate();
	         
	         
					if(rowsAffected>0)
					{
						System.out.println("Data inserted successfully.");
						request.getSession().setAttribute("uname", uname);
						
						 response.setContentType("text/html");
	                     PrintWriter out = response.getWriter();
	                     out.println("<script type=\"text/javascript\">");
	                     out.println("alert('Account Created successfully');");
	                     out.println("location='log.jsp';");
	                     out.println("</script>");
						;
					}
					else
					{
						System.out.println("Data  not updated.");
						response.sendRedirect("Home.jsp");
					}
				
	         
		    
		}
		catch (SQLException e)
		{
			response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Alredy used this email');");
            out.println("location='log.jsp';"); 
            out.println("</script>");
		
			
		}
	
		

	}

}
