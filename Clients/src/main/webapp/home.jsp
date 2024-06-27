<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dreamie</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <script>
        var x = 0;
        var images = ["wedding4.jpg", "wedding1.jpg","wedding6.jpg"];
        function slideimage() {
            document.getElementById("im").src = images[x];
            x++;
            if (x == images.length) {
                x = 0;
            }

        }
        var y = setInterval(slideimage, 3000);

    </script>
    <section class="menu">
        <div class="nav">
            <div class="logo">
                <h1>Dream<b>ie</b></h1>
            </div>
            <ul>
                <li class="active"><a href="#">Home</a></li>
                <li><a href="events.jsp">Events</a></li>
                <li><a href="gallery.jsp">Gallery</a></li>
                <li><a href="about us.jsp">About Us</a></li>
            </ul>
            <div>
                <a href="login.jsp"><input class="signin" type="submit" value="Sign in" name="signin"></a>
            </div>
        </div>
    </section>
    <hr>
    <section class="grid">
        <div class="content">
            <div class="content-left">
                <div class="info">
                    <h2>Create Your Dream Wedding,</h2><br>
                    <p>Planning your dream wedding? Perfectly Planned<br>
                        We'll ensure every detail is flawlessly executed.</p>

                </div>
                <a href="signup.jsp"><button><b>Find Your Partner!</b></button></a>
            </div>
            <div class="content-right">
                <img src="wedding4.jpg" id="im">
            </div>
        </div>
    </section>
    <hr id="line">
    <section class="category">
        <div class="list-items">
            <h3>Our <span id="pack">Packages</span></h3>
            <div class="card-list">
                <div class="card">
                    <img src="chin.jpg" alt="">
                    <div class="food-title">
                        <h1>Platinum</h1>
                    </div>
                    <div class="desc-food">
                        <p>Our Platinum package is the pinnacle of extravagance, featuring lavish venues, 
                            world-class vendors, and impeccable attention to detail.It's the ultimate choice for couples seeking a wedding day filled with luxury.
                        </p>
                    </div>
                    <div class="price">
                        <span>Rs.2500000</span>
                        <span>
                            <a href="login sign/login.html" target="_blank">
                                <button>Book Now</button>
                            </a>
                        </span>
                    </div>
                </div>
                <div class="card">
                    <img src="wedding2.jpg" alt="">
                    <div class="food-title">
                        <h1>Gold</h1>
                    </div>
                    <div class="desc-food">
                        <p>Elevate your wedding experience with our Gold package. Enjoy premium services, 
                            expert coordination, and a touch of elegance without breaking the bank. It's the perfect blend of affordability and sophistication.</p>
                    </div>
                    <div class="price">
                        <span>Rs.1700000</span>
                        <span>
                            <a href="login sign/login.html" target="_blank">
                                <button>Book Now</button>
                            </a>
                        </span>
                    </div>
                </div>
                <div class="card">
                    <img src="wedding3.jpg" alt="">
                    <div class="food-title">
                        <h1>Silver</h1>
                    </div>
                    <div class="desc-food">
                        <p>Our Silver package offers essential wedding services and stress-free support, ensuring your big day is charming and budget-friendly.
                            Focus on your love story while we handle the details</p>
                    </div>
                    <div class="price">
                        <span>Rs.1300000</span>
                        <span>
                            <a href="login sign/login.html" target="_blank">
                                <button>Book Now</button>
                            </a>
                        </span>
                    </div>
                </div>
            </div>
        </div>
       
    </section>
</body>

</html>