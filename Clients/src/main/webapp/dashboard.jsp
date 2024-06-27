<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.io.IOException"%>
<%@page import="Event.Servlet.AdminDashboardServlet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="dashboard.css">
</head>

<body>
    <div class="sidebar">
        <div class="sidebar-brand">
            <h2>Dreamie</h2>
        </div>

        <div class="sidebar-menu">
            <ul>
                <li><a href="#" class="active"><span>Admin Dashboard</span></a></li>
                <li><a href="pmenu.jsp"><span>Events</span></a></li>
                <li><a href="order.jsp"><span>Orders</span></a></li>
            </ul>
        </div>
    </div>

    <div class="content">
        <div class="cards">
            <div class="card-single">
                <div>
                    <h2><%= request.getAttribute("orderCount") %></h2>
                    <small>Orders</small>
                </div>
            </div>

            <div class="card-single">
                <div>
                    <h2><%= request.getAttribute("eventCount") %></h2>
                    <small>Events</small>
                </div>
            </div>

            <div class="card-single">
                <div>
                    <h2><%= request.getAttribute("customerCount") %></h2>
                    <small>Customers</small>
                </div> 
            </div>

        </div>
    </div>
    <!-- <a href="../logout.php"><input class="logout" type="submit" value="Log Out" name="logout"></a>-->
</body>

</html>
