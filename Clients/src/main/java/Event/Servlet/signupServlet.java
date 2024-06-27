package Event.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/signupServlet")
public class signupServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            PrintWriter out = response.getWriter();
            response.setContentType("text/html");
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/oop", "root", "200119000572");
            String e = request.getParameter("email");
            String p = request.getParameter("userpass");
            int ph = Integer.parseInt(request.getParameter("PhoneNo")); 
            String n = request.getParameter("UserName");

            PreparedStatement ps = con.prepareStatement("INSERT INTO userData (email, password, phone, name) VALUES (?, ?, ?, ?)");
            ps.setString(1, e);
            ps.setString(2, p);
            ps.setInt(3, ph); 
            ps.setString(4, n);


            int rowsAffected = ps.executeUpdate();

            if (rowsAffected > 0) {
                RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                rd.forward(request, response);
            } else {
                out.println("Registration failed."); 
                RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                rd.forward(request, response);
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}


