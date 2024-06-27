<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Menu page</title>
    <link rel="stylesheet" href="events.css">

</head>
<body>
    <section class="menu">
        <div class="nav">
            <div class="logo"><h1>Dream<b>ie</b></h1></div>
            <ul>
                <li><a href="home.jsp">Home</a></li>
                <li class="active"><a href="#">Events</a></li>
                <li><a href="gallery.jsp">Gallery</a></li>
                <li><a href="about us.jsp">About Us</a></li>
            </ul>
            <div>
                <a href="../logout.php"><input class="logout" type="submit" value="Log Out" name="logout"></a>
            </div>
        </div>
    </section>
    <hr>
    <div class="container">
        <div class="title">
            <h2>
                Our <span id="menu">Events</span>
            </h2>
        </div>
       

        <div class="content">
            <div class="box All Featured">
                <div class="image">
                    <img src="../images/chicken65.jpg" alt="">
                </div>
                <div class="text">
                    <h3>Chicken65</h3>
                    <hr>
                    <section>Rs 880</section>
                    <artical>Category: Featured</artical><br>
                    <label for="item1-qty">Quantity:</label>
                    <input type="number" id="quantity" min="0" value="0">
                    <div class="button">
                    <button>Add to cart</button>
                    </div>     
                </div>
            </div>
            <div class="box All Featured">
                <div class="image">
                    <img src="../images/popcorn2.jpg" alt="">
                </div>
                <div class="text">
                    <h3>Popcorn</h3>
                    <hr>
                    <section>Rs 260</section>
                    <artical>Category: Featured</artical><br>
                    <label for="item1-qty">Quantity:</label>
                    <input type="number" id="quantity" min="0" value="0">
                    <div class="button">
                        <button>Add to cart</button>
                    </div> 
                </div>
            </div>
            <div class="box All Featured">
                <div class="image">
                    <img src="../images/fish sticks.jpg" alt="">
                </div>
                <div class="text">
                    <h3>Fish Sticks</h3>
                    <hr>
                    <section>Rs 680</section>
                    <artical>Category: Featured</artical><br>
                    <label for="item1-qty">Quantity:</label>
                    <input type="number" id="quantity" min="0" value="0">
                    <div class="button">
                        <button>Add to cart</button>
                    </div> 
                
                </div>
            </div>
            <div class="box All Special">
                <div class="image">
                    <img src="../images/baked potatoes.jpg" alt="">
                </div>
                <div class="text">
                    <h3>Baked potatoes</h3>
                    <hr>
                    <section>Rs 470</section>
                    <artical>Category: Special</artical><br>
                    <label for="item1-qty">Quantity:</label>
                    <input type="number" id="quantity" min="0" value="0">
                    <div class="button">
                        <button>Add to cart</button>
                    </div> 
                
                </div>
            </div>
            <div class="box All Special">
                <div class="image">
                    <img src="../images/fried-rice.jpg" alt="">
                </div>
                <div class="text">
                    <h3>Fried Rice</h3>
                    <hr>
                    <section>Rs 1150</section>
                    <artical>Category: Special</artical><br>
                    <label for="item1-qty">Quantity:</label>
                    <input type="number" id="quantity" min="0" value="0">
                    <div class="button">
                        <button>Add to cart</button>
                    </div> 
                </div>
            </div>
            <div class="box All Special">
                <div class="image">
                    <img src="../images/icecream.jpg" alt="">
                </div>
                <div class="text">
                    <h3>Ice-Cream</h3>
                    <hr>
                    <section>Rs 690</section>
                    <artical>Category: Special</artical><br>
                    <label for="item1-qty">Quantity:</label>
                    <input type="number" id="quantity" min="0" value="0">
                    <div class="button">
                        <button>Add to cart</button>
                    </div> 
                
                </div>
            </div>
            <div class="box All Arrivals">
                <div class="image">
                    <img src="../images/mac and cheese.jpg" alt="">
                </div>
                <div class="text">
                    <h3>Mac and Cheese</h3>
                    <hr>
                    <section>Rs 2120</section>
                    <artical>Category: Arrivals</artical><br>
                    <label for="item1-qty">Quantity:</label>
                    <input type="number" id="quantity" min="0" value="0">
                    <div class="button">
                        <button>Add to cart</button>
                    </div> 
                
                </div>
            </div>
            <div class="box All Arrivals">
                <div class="image">
                    <img src="../images/Beef tacos.jpg" alt="">
                </div>
                <div class="text">
                    <h3>Beef tacos</h3>
                    <hr>
                    <section>Rs 970</section>
                    <artical>Category: Arrivals</artical><br>
                    <label for="item1-qty">Quantity:</label>
                    <input type="number" id="quantity" min="0" value="0">
                    <div class="button">
                        <button>Add to cart</button>
                    </div> 
                
                </div>
            </div>
            <div class="box All Special">
                <div class="image">
                    <img src="../images/biriyani.jpg" alt="">
                </div>
                <div class="text">
                    <h3>Biriyani</h3>
                    <hr>
                    <section>Rs 950</section>
                    <artical>Category: special</artical><br>
                    <label for="item1-qty">Quantity:</label>
                    <input type="number" id="quantity" min="0" value="0">
                    <div class="button">
                        <button>Add to cart</button>
                    </div> 
                
                </div>
            </div>
            <div class="box All Special">
                <div class="image">
                    <img src="../images/burger.jpg" alt="">
                </div>
                <div class="text">
                    <h3>Burger</h3>
                    <hr>
                    <section>Rs 550</section>
                    <artical>Category: special</artical><br>
                    <label for="item1-qty">Quantity:</label>
                    <input type="number" id="quantity" min="0" value="0">
                    <div class="button">
                        <button>Add to cart</button>
                    </div> 
                
                </div>
            </div>
            <div class="box All Special">
                <div class="image">
                    <img src="../images/pizza.jpg" alt="">
                </div>
                <div class="text">
                    <h3>Pizza</h3>
                    <hr>
                    <section>Rs 1250</section>
                    <artical>Category: special</artical><br>
                    <label for="item1-qty">Quantity:</label>
                    <input type="number" id="quantity" min="0" value="0">
                    <div class="button">
                        <button>Add to cart</button>
                    </div> 
                
                </div>
            </div>
            <div class="box All Special">
                <div class="image">
                    <img src="../images/Hot-Dogs.jpg" alt="">
                </div>
                <div class="text">
                    <h3>Hot-Dogs</h3>
                    <hr>
                    <section>Rs 850</section>
                    <artical>Category: special</artical><br>
                    <label for="item1-qty">Quantity:</label>
                    <input type="number" id="quantity" min="0" value="0">
                    <div class="button">
                        <button>Add to cart</button>
                    </div> 
                
                </div>
            </div>
            <div class="box All Featured">
                <div class="image">
                    <img src="../images/kottu1.jpg" alt="">
                </div>
                <div class="text">
                    <h3>Kottu</h3>
                    <hr>
                    <section>Rs 890</section>
                    <artical>Category: Featured</artical><br>
                    <label for="item1-qty">Quantity:</label>
                    <input type="number" id="quantity" min="0" value="0">
                    <div class="button">
                        <button>Add to cart</button>
                    </div> 
                
                </div>
            </div>
            <div class="box All Special">
                <div class="image">
                    <img src="../images/salad.jpg" alt="">
                </div>
                <div class="text">
                    <h3>Salad</h3>
                    <hr>
                    <section>Rs 570</section>
                    <artical>Category: Special</artical><br>
                    <label for="item1-qty">Quantity:</label>
                    <input type="number" id="quantity" min="0" value="0">
                    <div class="button">
                        <button>Add to cart</button>
                    </div> 
                
                </div>
            </div>
            <div class="box All Special">
                <div class="image">
                    <img src="../images/Chicken-Lollipop.jpg" alt="">
                </div>
                <div class="text">
                    <h3>Chicken-Lollipop</h3>
                    <hr>
                    <section>Rs 490</section>
                    <artical>Category: Special</artical><br>
                    <label for="item1-qty">Quantity:</label>
                    <input type="number" id="quantity" min="0" value="0">
                    <div class="button">
                        <button>Add to cart</button>
                    </div> 
                
                </div>
            </div>
            <div class="box All Special">
                <div class="image">
                    <img src="../images/fried chicken sandwich.jpg" alt="">
                </div>
                <div class="text">
                    <h3>Fried chicken sandwich</h3>
                    <hr>
                    <section>Rs 780</section>
                    <artical>Category: Special</artical><br>
                    <label for="item1-qty">Quantity:</label>
                    <input type="number" id="quantity" min="0" value="0">
                    <div class="button">
                        <button>Add to cart</button>
                    </div> 
                
                </div>
            </div>
            <div class="box All Arrivals">
                <div class="image">
                    <img src="../images/brownie.jpeg" alt="">
                </div>
                <div class="text">
                    <h3>Brownie</h3>
                    <hr>
                    <section>Rs 560</section>
                   <artical>Category: Arrivals</artical><br>
                   <label for="item1-qty">Quantity:</label>
                    <input type="number" id="quantity" min="0" value="0">
                    <div class="button">
                        <button>Add to cart</button>
                    </div> 
                
                </div>
            </div>
            <div class="box All Featured">
                <div class="image">
                    <img src="../images/cake.jpg" alt="">
                </div>
                <div class="text">
                    <h3>Cake</h3>
                    <hr>
                    <section>Rs 1000</section>
                    <artical>Category: Featured</artical><br>
                    <label for="item1-qty">Quantity:</label>
                    <input type="number" id="quantity" min="0" value="0">
                    <div class="button">
                        <button>Add to cart</button>
                    </div> 
                
                </div>
            </div>
            <div class="box All Special">
                <div class="image">
                    <img src="../images/Chili with crackers.jpg" alt="">
                </div>
                <div class="text">
                    <h3>Chili with crackers</h3>
                    <hr>
                    <section>Rs 1350</section>
                   <artical>Category: Special</artical><br>
                   <label for="item1-qty">Quantity:</label>
                    <input type="number" id="quantity" min="0" value="0">
                    <div class="button">
                        <button>Add to cart</button>
                    </div> 
                
                </div>
            </div>
            <div class="box All Special">
                <div class="image">
                    <img src="../images/muffin.jpg" alt="">
                </div>
                <div class="text">
                    <h3>Muffin</h3>
                    <hr>
                    <section>Rs 450</section>
                    <artical>Category: Special</artical><br>
                    <label for="item1-qty">Quantity:</label>
                    <input type="number" id="quantity" min="0" value="0">
                    <div class="button">
                        <button>Add to cart</button>
                    </div> 
                
                </div>
            </div>
            <div class="box All Special">
                <div class="image">
                    <img src="../images/Spaghetti with tomato sauce.jpg" alt="">
                </div>
                <div class="text">
                    <h3>Spaghetti with tomato sauce</h3>
                    <hr>
                    <section>Rs 2300</section>
                   <artical>Category: Special</artical><br>
                   <label for="item1-qty">Quantity:</label>
                   <input type="number" id="quantity" min="0" value="0">
                    <div class="button">
                        <button>Add to cart</button>
                    </div> 
                </div>
            </div>
        </div>
    </div>
</body>
</html>