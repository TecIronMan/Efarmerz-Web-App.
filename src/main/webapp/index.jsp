

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Farmerz</title>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
         <link rel="icon" type="images/x-icon" href="images/logo1.jpg" />
          <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	   <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	   <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	   <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

	<style type="text/css">
	.carousel-inner img {
    width: 100%;
    height: 100%;
  }
		.img{
			width: 200px;
			height: 200px;
			padding-top: 135px;
			margin-left: 330px;
			
   
		}
		.line{
			color: #34eb86;
			width: 600px;
		}
		.nav-link{
			margin-left: 20px;
		}
		.footer{
			background-color: black;	
		}
		.social-icons {
			  text-align: center;
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
    </head>
   <body style="background-color: white;">
<div class="home">
	<nav class="navbar navbar-expand-lg navbar-light bg-light" style="background-color: #2f4973; position: fixed; width: 100%; z-index: 1200">
  <a class="navbar-brand" href="#"><img src="images/logo1.jpg" height="40px" width="40px"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto" style="font-size: 20px;">
      <li>
        <a class="nav-link" style="color: black; text-decoration: underline;" href="index.jsp">Home</a>
      </li>
      <li >
        <a class="nav-link"style="color: black;" href="aboutus.jsp">About Us</a>
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
          <a class="dropdown-item" href="seller.jsp">Wholesaler</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="admin.jsp">Admin</a>
        </div>
      </div>
  </div>
</nav>
<div style="height: 350px; background-color: white;">
	<div class="img"><img src="images/logo1.jpg" height="180px"; width="100%; "></div>
	<center><div class="line"><h1 >Vision Together Grow Together</h1></div></center>

</div>
</div>


  <div id="demo" class="carousel slide" data-ride="carousel">

  <!-- Indicators -->
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
  </ul>
  
  <!-- The slideshow -->
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="images/farming1.jpg" alt="Los Angeles" width="1100" height="500">
       <div class="carousel-caption">
        <h3>ASSAM</h3>
        <p><b>"আমাৰ পথাৰবোৰৰ পৰা আপোনাৰ টেবুললৈকে"</b></p>
        <p><b>"From Our Fields to Your Table"</b></p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="images/farming2.jpg" alt="Chicago" width="1100" height="500">
       <div class="carousel-caption">
        <h3>MAHARASHTRA</h3>
        <p>"देशाची श्रीमंती,शेतकऱ्यांच्या विकास."</p>
        <p><b>"The wealth of the Country,Development of Farmers."</b></p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="images/crop.jpg" alt="New York" width="1100" height="500">
       <div class="carousel-caption">
        <h3>BHOPAL</h3>
        <p>"जय जवान,जय किसान."</p>
         <p><b>"Hail the soldier,Hail the farmer."</b></p>
      </div>
    </div>
  </div>
  
  <!-- Left and right controls -->
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>


<footer class="py-3 my-4">
    <ul class="nav justify-content-center border-bottom pb-3 mb-3">
      <li class="nav-item"><a href="index.jsp" class="nav-link px-2 text-muted">Home</a></li>
      <li class="nav-item"><a href="Blogs.jsp" class="nav-link px-2 text-muted">Blog</a></li>
      <li class="nav-item"><a href="training.jsp" class="nav-link px-2 text-muted">Training</a></li>
      <li class="nav-item"><a href="contactus.jsp" class="nav-link px-2 text-muted">Contact Us</a></li>
      <li class="nav-item"><a href="aboutus.jsp" class="nav-link px-2 text-muted">About</a></li>
       
    </ul>
    <div style="padding-top:0px;">
    <div class="social-icons"  >
        <a href="https://www.facebook.com/login" class="social-icon"><i class="fab fa-facebook"></i></a>
         <a href="https://www.instagram.com/accounts/login" class="social-icon"><i class="fab fa-instagram"></i></a>
          <a href="https://twitter.com/i/flow/login?lang=en" class="social-icon"><i class="fab fa-twitter"></i></a>
           <a href="https://www.linkedin.com/login"  class="social-icon"><i class="fab fa-linkedin"></i></a>
     </div>
    <p class="text-center text-muted" style="padding-top: 20px;">© 2023 CDAC, Inc</p>
    </div>
    
  </footer>
</body>
</html>
