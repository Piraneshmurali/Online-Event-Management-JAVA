<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<link rel="stylesheet" href="date.css">
</head>

<body>
	<section class="container">
		<h3>Registration</h3>
		<form>
			<div class="gender">
				<label for="gender">Gender :</label>
				<input type="radio" name="gender" value="male" required> Male
				<input type="radio" name="gender" value="female" required> Female
			</div>
			<br>
			<br>
			<input type="number" name="age" placeholder="Enter Your Age" class="box" required><br>
			<textarea name="hobbies_interests" placeholder="Enter Your Hobbies and Interests" rows="4" cols="45"
				class="box" required></textarea><br>
			<input type="tel" name="phone" placeholder="Enter Your Phone Number" class="box" required><br>

			<input type="text" name="social_link" placeholder="Paste Your Social Media Link (e.g., Instagram, Facebook)"
				class="box" required><br>

			<center><input type="submit" name="sub" value="Register" class="btn"></center>
		</form>
		<p>Already have an account? <a href="signin.html">Sign In</a></p>
	</section>
</body>
</html>
    