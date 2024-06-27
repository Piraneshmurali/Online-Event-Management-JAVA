<%@page import="java.util.ArrayList"%>
<%@page import="Event.Model.Event"%>
<%@page import="Event.Model.IEvents"%>
<%@page import="EventService.EventImpl"%>
<%@page import="Event.Servlet.AddEventServlet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.io.IOException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Menu Page</title>
    <link rel="stylesheet" href="admin2.css">
</head>

<body>
    <div class="sidebar">
        <div class="sidebar-brand">
            <h2>Dreamie</h2>
        </div>
        <div class="sidebar-menu">
            <ul>
                <li><a href="AdminDashboardServlet"><span>Admin Dashboard</span></a></li>
                <li><a href="#" class="active"><span>Events</span></a></li>
                <li><a href="order.jsp"><span>Orders</span></a></li>
            </ul>
        </div>
    </div>

    <main>
        <div class="form-container">
            <form method="post" action="AddEventServlet" >
                <div class="form-group">
                    <label for="eventid">Event ID:</label>
                    <input type="text" id="eventid" name="eventid" required>
                </div>
                <div class="form-group">
                    <label for="eventName">Event Name:</label>
                    <input type="text" id="eventName" name="eventName" required>
                </div>
                <div class="form-group">
                    <label for="eventDescription">Event Description:</label>
                    <textarea id="eventDescription" name="eventDescription" required></textarea>
                </div>
                
                <div class="form-group">
                    <label for="eventType">Event Type:</label>
                    <input type="text" id="eventType" name="eventType" required>
                </div>
                <div class="form-group">
                    <label for="eventPrice">Event Price:</label>
                    <input type="number" id="eventPrice" name="eventPrice" required>
                </div>
                <button type="submit" name="addEvent">Add</button>
            </form>
        </div>
 
        <div class="menu-container">
        
    <h1>Event List</h1>
    <div class="menu-list">
        <%
            // Retrieve events from the database
            IEvents ievent = new EventImpl();
            ArrayList<Event> list = ievent.getEvents();
            for (Event event : list) {
        %>
        <div class="menu-item">
            <h3><%= event.getEname() %></h3>
            <p><%= event.getEtype() %></p>
            
            <p><%= event.getEprice() %></p>
            <form method="post" action="UpdateEventServlet" >
                <input type="hidden" name="eventid" value="<%= event.getEventId() %>">
                Event Name: <input type="text" name="eventName" value="<%= event.getEname() %>">
                Type: <input type="text" name="eventType" value="<%= event.getEtype() %>">
                Price: <input type="number" name="eventPrice" value="<%= event.getEprice() %>">
                
                <button type="submit" name="updateEvent">Update</button>
            </form>
            <h3>Remove Event</h3>
        <form method="POST" action="DeleteEventServlet">
                <input type="hidden" name="eventid" value="<%=event.getEventId()%>" /> 
                       <button type="submit" name="removeEvent">Remove</button>
                       </form>
                       <hr>
        </div>
        <%
            }
        %>
    </div>
</div>

    </main>
</body>
</html>
