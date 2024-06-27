<%@page import="java.util.ArrayList"%>
<%@page import="Event.Model.Event"%>
<%@page import="Event.Model.IEvents"%>
<%@page import="EventService.EventImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="order.css">
</head>

<body>
    <div class="sidebar">
        <div class="sidebar-brand">
            <h2>Dreamie</h2>
        </div>

        <div class="sidebar-menu">
            <ul>
                <li><a href="AdminDashboardServlet"><span>Admin Dashboard</span></a></li>
                <li><a href="pmenu.jsp"><span>Events</span></a></li>
                <li><a href="#" class="active"><span>Orders</span></a></li>
            </ul>
        </div>
    </div>
    <div class="table-container">
        <table>
      
            <thead>
                <tr>
                    <th>Order ID</th>
                    <th>Event</th>
                
                    <th>Customer Name</th>
                    <th>Type</th>
                   
                </tr>
            </thead>
            
        	     
            <tbody>
            	 <%
            // Retrieve events from the database
            IEvents ievent = new EventImpl();
            ArrayList<Event> list = ievent.getEvents();
            for (Event event : list) {
        %>
                <tr>
                    <td><%= event.getEname() %></td>
                    <td><%= event.getEname() %></td>
                    
                    <td><%= event.getEname() %></td>
                    <td><%= event.getEtype() %></td>
                  </tr>
                 <%
            }
        %>
            </tbody>
        </table>
        
    </div>
</body>

</html>
