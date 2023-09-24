 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Home Page</title>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
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
   <body style="background-color: #bcedaf;">
<div class="home">
	<nav class="navbar navbar-expand-lg navbar-light bg-light" style="background-color: #2f4973; z-index: 1100; position: fixed; width: 100%;">
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
        <a class="nav-link"style="color: black;  text-decoration: underline;" href="training.jsp">Training</a>
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
<div style="height: 400px; padding-top: 100px;">
	<!--CARDS-->
<div class="container mt-5">
    <div class="row">
      <div class="col-md-4">
        <div class="card">
            <img src="images/training1.jpg" class="card-img-top" alt="Image 1" height="200px;">
          <div class="card-body">
            <h5 class="card-title">FARMER TRAINING PROGRAM</h5>
            <p class="card-text">Jumpstart your career in organic agriculture with an immersive school led by some of the world’s leading regenerative organic experts.Rodale Institute’s Farmer Training (RIFT) school gives aspiring farmers the knowledge and experience they need to start their regenerative organic career. Students will experience the entire life cycle of an organic diversified crop and vegetable farm, and learn what it takes to maintain a profitable business, all while caring for the soil and ecosystem.	</p>
            <div class="text-center">
              <a href="https://rodaleinstitute.org/education/training-programs/rodale-institute-farmer-training/" class="btn btn-primary">Visit</a>
            </div>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="card">
          <img src="images/training2.jpg" class="card-img-top" alt="Image 2" >
          <div class="card-body">
            <h5 class="card-title">BEGINING FARMER TRAINING PROGRAM</h5>
            <p class="card-text">OFRF’s free beginning farmer training program for organic specialty crop farmers in India is for beginning farmers, existing organic farmers, and farmers in transition to organic production.The content is based on foundational principles that are relevant to all organic farmers and our hope is that growers across the U.S. find it to be a useful resource. The self-guided nature of the training program allows you to move through the readings and resources and demonstration videos at your own pace.</p>
            <div class="text-center">
              <a href="https://ofrf.org/beginning-farmer-training-program/" class="btn btn-primary">Visit</a>
            </div>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="card">
          <img src="images/training3.jpg" class="card-img-top" alt="Image 3">
          <div class="card-body">
            <h5 class="card-title">ONE DAY FARMERS TRAINING AND DEMONSTRATION</h5>
            <p class="card-text">To create awareness at village level about organic farming, its need, practices and benefits and to provide knowledge about organic certification, branding and marketing including PGS and Jaivik Kheti portal operation, farmers will be trained by giving live demonstrations of on-farm resource management throughout the country.</p>
            <div class="text-center">
              <a href="#" class="btn btn-primary">Visit</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!--CARD ENDS-->
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
</div>

</body>
</html>
