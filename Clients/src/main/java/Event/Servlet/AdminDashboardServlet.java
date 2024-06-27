package Event.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AdminDashboardServlet
 */
@WebServlet("/AdminDashboardServlet")
public class AdminDashboardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminDashboardServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int orderCount = 0; 
        int eventCount = 0;  
        int customerCount = 0; 
		try {
		//PrintWriter out = response.getWriter();
        response.setContentType("text/html");
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/oop", "root", "200119000572");
        PreparedStatement ps = con.prepareStatement("select count(*) from userData");
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            customerCount = rs.getInt(1); 
        }
        rs.close();
        ps.close();
       
        PreparedStatement psEvents = con.prepareStatement("SELECT COUNT(*) FROM events");
        ResultSet rsEvents = psEvents.executeQuery();
        if (rsEvents.next()) {
            eventCount = rsEvents.getInt(1);
        }
        rsEvents.close();
        psEvents.close();
        
        PreparedStatement psOrders = con.prepareStatement("SELECT COUNT(*) FROM order");
        ResultSet rsOrders = psOrders.executeQuery();
        if (rsOrders.next()) {
            orderCount = rsOrders.getInt(1);
        }
        rsOrders.close();
        psOrders.close();
        
        con.close();
		} catch (SQLException e) {
			
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}

        request.setAttribute("orderCount", orderCount);
        request.setAttribute("eventCount", eventCount);
        request.setAttribute("customerCount", customerCount);

        // Forward the request to the JSP page
        request.getRequestDispatcher("dashboard.jsp").forward(request, response);
	}

}
