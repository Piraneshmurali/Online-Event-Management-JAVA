<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                <li><a href="dashboard.jsp"><span>Admin Dashboard</span></a></li>
                <li><a href="#" class="active"><span>Events</span></a></li>
                <li><a href="order.jsp"><span>Orders</span></a></li>
            </ul>
        </div>
    </div>

    <main>
        <div class="form-container">
            <form method="post" action="#" enctype="multipart/form-data">
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
                    <label for="eventImage">Event Image:</label>
                    <input type="file" id="eventImage" name="eventImage" required>
                </div>
                <div class="form-group">
                    <label for="eventPrice">Event Price:</label>
                    <input type="number" id="eventPrice" name="eventPrice" required>
                </div>
                <button type="submit" name="addEvent">Add</button>
            </form>
        </div>

        <div class="menu-list">
            <h2>Events List</h2>
            <!-- Your menu list items would go here -->
        </div>
    </main>
</body>
</html>
