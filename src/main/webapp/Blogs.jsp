<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Farmerz-Blog</title>
    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
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
<body class="home">
    <!-- Navigation -->
   <nav class="navbar navbar-expand-lg navbar-light bg-light" style="background-color: #2f4973; position: fixed; width: 100%; z-index: 1200">
  <a class="navbar-brand" href="#"><img src="images/logo1.jpg" height="40px" width="40px"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto" style="font-size: 20px;">
      <li>
        <a class="nav-link" style="color: black;" href="index.jsp">Home</a>
      </li>
      <li >
        <a class="nav-link"style="color: black;" href="aboutus.jsp">About Us</a>
      </li>
      
      <li>
        <a class="nav-link"style="color: black;" href="training.jsp">Training</a>
      </li>
      <li>
        <a class="nav-link" style="color: black; text-decoration: underline;" href="Blogs.jsp">Blog</a>
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

<div style="height: 400px; padding-top: 100px;">
<h2 style="text-align:center; paadding-bottom:30px;">Blogs</h2>
    <!-- Blog Content -->
  <div class="row row-cols-1 row-cols-md-2 g-2">
  <div class="col">
    <div class="card">
      <a href="https://www.farmers.gov/blog/fridays-on-farm-growing-hemp-and-improving-crop-quality-in-indiana"><img src="images/blog11.jpg" class="card-img-top" alt="..." ></a>
      <div class="card-body">
        <h5 class="card-title">Fridays on the Farm: Growing Hemp and Improving Crop Quality in Indiana</h5>
        <p class="card-text">Brandon O’Connor, USDA • Jul 13, 2023</p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card">
           <a href="https://www.farmers.gov/blog/fridays-on-farm-improving-soil-health-on-wisconsin-dairy-farm"><img src="images/blog33.jpg" class="card-img-top" alt="..."></a> 
      <div class="card-body">
        <h5 class="card-title">Fridays on the Farm: Improving Soil Health on a Wisconsin Dairy Farm </h5>
        <p class="card-text">Nathan Pelkey, NRCS, Wisconsin • Jun 02, 2023</p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card">
     <a href="https://www.farmers.gov/blog/fridays-on-farm-managing-land-protect-monarch-butterflies"><img src="images/blog22.jpg" class="card-img-top" alt="..."></a> 
      <div class="card-body">
        <h5 class="card-title">Fridays on the Farm: Managing the Land to Protect Monarch Butterflies</h5>
        <p class="card-text">Savannah West, Oklahoma State University • Jul 28, 2023</p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card">
          <a href="https://www.farmers.gov/blog/fridays-on-farm-growing-hope-with-gardens"><img src="images/blog44.jpg" class="card-img-top" alt="..."></a> 
      <div class="card-body">
        <h5 class="card-title">Fridays on the Farm: Growing Hope with Gardens</h5>
        <p class="card-text">Jonathan Groveman, NRCS, California • May 19, 2023</p>
      </div>
    </div>
  </div>
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
    <!-- Include Bootstrap JS (jQuery and Popper.js are required) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    
</body>
</html>
