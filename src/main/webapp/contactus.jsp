  
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
    .f{
    position:fixed;
      top:10%;
      left:60%;
      width:100px;
   }
   .b{
    padding-left: 120px;
	  margin-top: 30px;
}
.con{
    height:900px;
    width:700px;
}
.navbar{
	background-color: #42f5cb;
}
.Info{
  padding-left: 200px;
  padding-top: 50px;
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
	<nav class="navbar navbar-expand-lg navbar-light bg-light" style="background-color: #2f4973; position: fixed; width: 100%;">
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
        <a class="nav-link" style="color: black;" href="Blogs.jsp">Blog</a>
      </li>
      <li>
        <a class="nav-link"style="color: black;  text-decoration: underline;" href="contactus.jsp">Contact</a>
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
<h2 class="title" style="padding-left:40%;  padding-top: 100px;">Contact Us</h2>
<form style="width:300px;" class="f ">
  
  <form style="width:300px;" class="f ">
  
    <h3 class="title" style="left:50%;  padding-top: 80px;">Information</h3>
    <div class="text">
        <label for="exampleInputPassword1" class="form-label">Name</label>
  <div class="mb-3">
    <input type="text" class="form-control" id="exampleInputPassword1">
  </div>
  <label for="exampleInputPassword1" class="form-label">Email-Id</label>
    <div class="mb-3">
        <input type="text" class="form-control" id="exampleInputPassword1" >
    </div>
    <label for="exampleInputPassword1" class="form-label">Message</label>
    <div class="mb-3">
        <input type="text" class="form-control" id="exampleInputPassword1" style="height: 90px; width: 300px;">
    </div>
    <div class="b">
      <button type="submit" class="btn btn-secondary ">submit</button>
      </div>
    </div>
</form>
<div class="Info">
  <h4>Address:</h4>
  <h5>Tech Farmer Company</h5>
  <h5>SCET,Athvagate,395001</h5>
  <h4>Phones:</h4>
  <p>276772728712</p>
  <h4>E-mail:</h4>
  <p>Info@techfarmer.com</p>

  </div>
  <div style=" padding-top:100px;">
   <footer class="py-3 my-4" style=" margin-bottom: 0px;background-color: #dee6dc;" >
    <ul class="nav justify-content-center border-bottom pb-3 mb-3">
      <li class="nav-item"><a href="index.jsp" class="nav-link px-2 text-muted">Home</a></li>
      <li class="nav-item"><a href="Blogs.jsp" class="nav-link px-2 text-muted">Blog</a></li>
      <li class="nav-item"><a href="training.jsp" class="nav-link px-2 text-muted">Training</a></li>
      <li class="nav-item"><a href="contactus.jsp" class="nav-link px-2 text-muted">Contact Us</a></li>
      <li class="nav-item"><a href="aboutus.jsp" class="nav-link px-2 text-muted">About</a></li>
    </ul>
   
     <div class="social-icons" >
        <a href="https://www.facebook.com/login" target="_blank" class="social-icon"><i class="fab fa-facebook"></i></a>
         <a href="https://www.instagram.com/accounts/login" target="_blank" class="social-icon"><i class="fab fa-instagram"></i></a>
          <a href="https://twitter.com/i/flow/login?lang=en" target="_blank" class="social-icon"><i class="fab fa-twitter"></i></a>
           <a href="https://www.linkedin.com/login" target="_blank" class="social-icon"><i class="fab fa-linkedin"></i></a>
     </div>
     <p class="text-center text-muted">© 2023 CDAC, Inc</p>
    
    
  </footer>
  </div>
</body>
</html>
