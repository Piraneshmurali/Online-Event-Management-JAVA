<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gallery</title>
    <link rel="stylesheet" href="gallery.css">

</head>

<body>
    <section class="menu">
        <div class="nav">
            <div class="logo">
                <h1>Dream<b>ie</b></h1>
            </div>
            <ul>
                <li><a href="home.jsp">Home</a></li>
                <li><a href="events.jsp">Events</a></li>
                <li class="active"><a href="#">Gallery</a></li>
                <li><a href="about us.jsp">About Us</a></li>

            </ul>
            <div>
                <a href="../logout.php"><input class="logout" type="submit" value="Log Out" name="logout"></a>
            </div>
        </div>
    </section>
    <hr>
    <h1 id="gallery">Our <span>Events</span> Gallery</h1>
    <div class="full-img" id="fullImgBox">
        <img src="../images/Briyani.jpg">

    </div>
    <div class="img-gallery">
        <img src="../images/biriyani.jpg" onclick="openFullImg(this.src)">
        <img src="../images/burger.jpg" onclick="openFullImg(this.src)">
        <img src="../images/burger1.jpeg" onclick="openFullImg(this.src)">
        <img src="../images/cake.jpg" onclick="openFullImg(this.src)">
        <img src="../images/Chicken-Lollipop.jpg" onclick="openFullImg(this.src)">
        <img src="../images/chicken65.jpg" onclick="openFullImg(this.src)">
        <img src="../images/fried-rice.jpg" onclick="openFullImg(this.src)">
        <img src="../images/icecream.jpg" onclick="openFullImg(this.src)">
        <img src="../images/pizza.jpg" onclick="openFullImg(this.src)">
        <img src="../images/baked potatoes.jpg" onclick="openFullImg(this.src)">
        <img src="../images/Beef tacos.jpg" onclick="openFullImg(this.src)">
        <img src="../images/Chili with crackers.jpg" onclick="openFullImg(this.src)">
        <img src="../images/fish sticks.jpg" onclick="openFullImg(this.src)">
        <img src="../images/fried chicken sandwich.jpg" onclick="openFullImg(this.src)">
        <img src="../images/Hot-Dogs.jpg" onclick="openFullImg(this.src)">
        <img src="../images/kottu1.jpg" onclick="openFullImg(this.src)">
        <img src="../images/mac and cheese.jpg" onclick="openFullImg(this.src)">
        <img src="../images/Spaghetti with tomato sauce.jpg" onclick="openFullImg(this.src)">
        <img src="../images/brownie.jpeg" onclick="openFullImg(this.src)">
        <img src="../images/muffin.jpg" onclick="openFullImg(this.src)">
        <img src="../images/popcorn2.jpg" onclick="openFullImg(this.src)">
    </div>



    <script>
        var fullImgBox = document.getElementById("fullImgBox");
        var fullImg = document.getElementById("fullImg");

        function openFullImg(pic) {
            fullImgBox.style.display = "flex";
            fullImg.src = pic;
            fullImg.style.maxWidth = "800px";
            fullImg.style.maxHeight = "800px";
            fullImg.style.objectFit = "contain";
        }

        fullImgBox.addEventListener("click", function() {
            fullImgBox.style.display = "none";
            fullImg.style.maxWidth = "";
            fullImg.style.maxHeight = "";
        });
    
    </script>
</body>

</html>