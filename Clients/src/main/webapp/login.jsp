<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
    <title> Login And Sign up</title>
    <link rel="stylesheet" href="login.css">
</head>
<body>
    <div class="aaaa">
        <div class="form-box">
            <div class="button-box">
                <div id="button"></div>
                <button type="button" class="LSbutten" onclick="login()">Log In</button>
                <button type="button" class="LSbutten" onclick="signup()">Sign Up</button>
			
            </div>
            <div>
            <form id="login" class="input-group" method="post" action="loginServlet">
                <input type="email" class="input-field" placeholder="User Name" required name="email">
                <input type="password" class="input-field" placeholder="Password" required name="userpass">
                <button type="submit" class="submit" name="login">Log in</button>
            </form>
            </div>
            <div>
            <form id="signup" class="input-group" method="post" action="signupServlet">
                  <input type="text" class="input-field" placeholder="User Name" name="UserName" required>
                <input type="email" class="input-field" placeholder="Email" name="email" required>
                <input type="password" class="input-field" placeholder="Password" name="userpass" required>
                <input type="text" class="input-field" placeholder="Phone No" name="PhoneNo" required>
                <button type="submit" class="submit">Sign Up</button>
            </form>
            </div>
        </div>
        </div>
    <script>
        var x = document.getElementById("login");
        var y = document.getElementById("signup");
        var z = document.getElementById("button");

        function signup() {
            x.style.left = "-400px";
            y.style.left = "50px";
            z.style.left = "110px";
        }

        function login() {
            x.style.left = "50px";
            y.style.left = "450px";
            z.style.left = "0";
        }

    </script>
</body>
</html>