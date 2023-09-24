 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Farmer Login</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

	<style type="text/css">

  .f{
    position:fixed;
      top:20%;
      left:40%;
      width:100px;
   }

   .b{
    padding-left: 60px;
  left:40%;
  right:40%;
    margin-top: 30px;
  }

  .con{
    height:900px;
    width:700px;
  }

  .navbar{
    background-color: #42f5cb;
  }
  .sign-up {  
    text-align: center;  
    padding: 10px 0 0;  
}  
.forgot {  
    margin-left: 30px;  
    padding: 0px 0 0;  
}  

  .whole{
        background-image: url("images/bgimage.jpg");

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
	</style>
        <%
        if (request.getParameter("msgg") != null) {
    %>
    <script>alert('Please Enter Correct username and Password');</script>
    <%            }
    %>
    </head>
    <body  class="whole">
	<nav class="navbar navbar-expand-lg navbar-light bg-light" style="background-color: #2f4973; position: fixed; width: 100%;">
  <a class="navbar-brand" href="index.jsp"><img src="images/logo1.jpg" height="40px" width="40px"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto" style="font-size: 20px;">
      <li>
        <a class="nav-link" style="color: black; " href="index.jsp">Home</a>
      </li>
      <li >
        <a class="nav-link"style="color: black;" href="#">About Us</a>
      </li>
      
      <li>
        <a class="nav-link"style="color: black;" href="training.jsp">Training</a>
      </li>
      <li>
        <a class="nav-link" style="color: black;" href="#">Blog</a>
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
<form action="verifyemail.jsp" style="width:300px;" class="f ">
  <h1 class="title" style="left:40%; padding: 30px;">Verify</h1>

<label for="exampleInputEmail1" class="form-label">Email</label>
<input type="email" class="form-control" required="required" name="email">




    <input type="hidden" value="2" name="status" />
<div class="b">
 <button type="submit" class="btn btn-info " style="margin-left: 60px;">Send OTP</button>

   

</form>

</body>
</html>
