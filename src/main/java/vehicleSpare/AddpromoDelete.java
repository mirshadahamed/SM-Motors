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


public class AddpromoDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AddpromoDelete() {
        super();
    }
    
    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String pcode = request.getParameter("pcode");
		
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");

			
			try (Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parts", "root", "nikshan");
			     PreparedStatement pst = con.prepareStatement("DELETE FROM promo WHERE pcode=?")) {
				
			
				pst.setString(1, pcode);
				int rowsDeleted = pst.executeUpdate();

			
				if (rowsDeleted > 0) {
					
					 response.setContentType("text/html");
                     PrintWriter out = response.getWriter();
                     out.println("<script type=\"text/javascript\">");
                     out.println("alert('Promo deleted successfully');");
                     out.println("location='Addpromoviews';");
                     out.println("</script>");
					
				} else {
					response.getWriter().write("No promo found with the provided code: " + pcode);
				}
			}
		} catch (SQLException | ClassNotFoundException e) {
		
			e.printStackTrace();
			response.getWriter().write("Error occurred: " + e.getMessage());
		}
	}
}
