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

 public class Contactus extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Contactus() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email=request.getParameter("email");
		String name=request.getParameter("name");
		String subject=request.getParameter("subject");
		String phone=request.getParameter("phone");
		String message=request.getParameter("message");
		
		
		

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}
		
		try {
			Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/parts","root","nikshan");
			
			String query= "INSERT INTO contactus (email,name,subject,phone,message) VALUES(?,?,?,?,?)";
			
		    PreparedStatement pst=con.prepareStatement(query);
		    
		     pst.setString(1, email);
	         pst.setString(2, name);
	         pst.setString(3,subject);
	         pst.setString(4,phone);
	         pst.setString(5,message);
	         
	         int rowsAffected = pst.executeUpdate();
	         
	         
					if(rowsAffected>0)
					{
						System.out.println("Data inserted successfully.");
						request.getSession().setAttribute("mail", email);
						response.sendRedirect("Sucess.jsp");
					}
					else
					{
						response.setContentType("text/html");
		                PrintWriter out = response.getWriter();
		                out.println("<script type=\"text/javascript\">");
		                out.println("alert('email Alredy used sent feedback');");
		                out.println("location='Contactus.jsp';"); 
		                out.println("</script>");
					}
				
	         
		    
		}
		catch (SQLException e)
		{
			response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.println("<script type=\"text/javascript\">");
            out.println("alert('email Alredy used sent feedback');");
            out.println("location='Contactus.jsp';"); 
            out.println("</script>");
		}
	}

}
