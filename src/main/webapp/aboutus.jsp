<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

	<style type="text/css">
		.img{
			width: 200px;
			height: 200px;
			padding-top: 50px;
		}
		.line{
			color: lightblue;
			width: 600px;
		}
		.nav-link{
			margin-left: 20px;
		}
        .card {
          box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
          max-width: 700px;
          padding-top: 30px;
          padding-bottom: 30px;
          padding-left: 20px;
          padding-right: 20px;
          text-align: center;
          font-family: arial;
        }
        .social-icon {
  font-size: 24px; /* Adjust the size as needed */
  margin: 0 10px; /* Adjust the spacing between icons */
  color: #333; /* Adjust the icon color */
  text-decoration: none; /* Remove underline on hover */
}

.social-icon:hover {
  color: #007bff; /* Change color on hover if desired */
}
	</style>
	<title>Home Page</title>
</head>
<body style="background-color:	#bcedaf;">
<div class="home">
	<nav class="navbar navbar-expand-lg navbar-light bg-light" style="background-color: #2f4973; position: fixed; width: 100%;">
  <a class="navbar-brand" href="#"><img src="images/logo1.jpg" height="40px;" width="40px;"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto" style="font-size: 20px;">
      <li>
        <a class="nav-link" style="color: black;" href="index.jsp">Home</a>
      </li>
      <li >
        <a class="nav-link"style="color: black;  text-decoration: underline;" href="aboutus.jsp">About Us</a>
      </li>
      
      <li>
        <a class="nav-link"style="color: black;" href="training.jsp">Training</a>
      </li>
      <li>
        <a class="nav-link" style="color: black;" href="Blogs.jsp">Blog</a>
      </li>
      <li>
        <a class="nav-link"style="color: black;" href="contactus.jsp">Contact</a>
      </li>
    </ul>
    
    <div class="nav-item dropdown" style="padding-right: 30px; font-size: 20px; ">
        <a class="nav-link dropdown-toggle"  id="navbarDropdown" role="button" data-toggle="dropdown">
          Login
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown" >
          <a class="dropdown-item" href="farmer.jsp">Farmer</a>
          <a class="dropdown-item" href="seller.jsp">Wholeseller</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="admin.jsp">Admin</a>
        </div>
      </div>
  </div>
</nav>
<div style="height: 400px; padding-top: 200px; padding-left: 400px;">
<div class="card">
    <h3>About Us</h3>
    <p>Smart Farming Solutions: 
        We provide a comprehensive suite of smart farming solutions that combine real-time data collection, predictive analytics, and automation. Our aim is to enable farmers to make informed decisions, manage resources efficiently, and achieve higher crop quality.

        Community and Collaboration:
        It is more than just a platform; it's a community. We encourage farmers, experts, and enthusiasts to connect, share knowledge, and collaborate. Together, we're driving forward a movement towards sustainable and progressive farming practices.
        
        Education and Empowerment: 
        We're dedicated to educating farmers about the latest advancements in e-farming. Through webinars, workshops, and online resources, we empower farmers to harness the potential of digital tools and techniques. </p>
  </div>
 
</div>

</div>
<div style="padding-top:150px;">
<footer class="py-3 my-4" style="background-color: #dee6dc;" >
    <ul class="nav justify-content-center border-bottom pb-3 mb-3">
      <li class="nav-item"><a href="index.jsp" class="nav-link px-2 text-muted">Home</a></li>
      <li class="nav-item"><a href="Blogs.jsp" class="nav-link px-2 text-muted">Blog</a></li>
      <li class="nav-item"><a href="training.jsp" class="nav-link px-2 text-muted">Training</a></li>
      <li class="nav-item"><a href="contactus.jsp" class="nav-link px-2 text-muted">Contact Us</a></li>
      <li class="nav-item"><a href="aboutus.jsp" class="nav-link px-2 text-muted">About</a></li>
    </ul>
   
   <div style="padding-left:650px; "> 
   <div class="social-icons" >
        <a href="https://www.facebook.com/login" class="social-icon"><i class="fab fa-facebook"></i></a>
         <a href="https://www.instagram.com/accounts/login" class="social-icon"><i class="fab fa-instagram"></i></a>
          <a href="https://twitter.com/i/flow/login?lang=en" class="social-icon"><i class="fab fa-twitter"></i></a>
           <a href="https://www.linkedin.com/login"  class="social-icon"><i class="fab fa-linkedin"></i></a>
          
     </div>
         <p class="text-center text-muted" style="padding-right:700px;">© 2023 CDAC, Inc</p>
    </div>
  </footer>
</div>
</body>
</html>