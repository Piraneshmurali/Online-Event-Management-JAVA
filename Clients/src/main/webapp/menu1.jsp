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


        <div class="centered-content">
            <button class="button platinum-button"><a href="pmenu.jsp">Platinum</a></button>
            <button class="button gold-button"><a href="gmenu.jsp">Gold</a></button>
			<button class="button silver-button"><a href="smenu.jsp">Silver</a></button>
        </div>
</body>

</html>
    