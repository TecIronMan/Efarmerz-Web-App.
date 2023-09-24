<%-- 
    Document   : farmerregister
    Created on : 24 Aug, 2023, 12:02:39 PM
    Author     : Hrishikesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
    .f{
      padding-bottom:40%;
      position:fixed;
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
.whole{
        background-image: url("images/bgimage.jpg");

}
.fa{
position:fixed;
   top:25%;
   left:40%;
   width:100px;
}
.con{
    height:800px;
    width:700px;
}
	</style>
         <%
        if (request.getParameter("msgg") != null) {
    %>
    <script>alert('Please Enter Valid Details');</script>
    <%            }
    %>
	<title>Farmer Registration</title>
    </head>
   <body  class="whole">
	<nav class="navbar navbar-expand-lg navbar-light bg-light" style="background-color: #2f4973; position: fixed; width: 100%;">
  <a class="navbar-brand" href="#"><img src="images/logo1.jpg" height="40px" width="40px"></a>
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
        <a class="nav-link"style="color: black;" href="#">Training</a>
      </li>
      <li>
        <a class="nav-link" style="color: black;" href="#">Blog</a>
      </li>
      <li>
        <a class="nav-link"style="color: black;" href="#">Contact</a>
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
<form action="login.jsp" style="width:300px;" class="f ">
  <h2 class="title" style="left:50%;  padding-top: 80px;">Registration</h2>
  
    
    <div class="mb-3">
      <input type="text" class="form-control" name="FirstName"required="required" placeholder="First name">
      <span style="color: red;">${error6}</span>
    </div>
     <div class="mb-3">
      <input type="text" class="form-control" name="LastName"required="required" placeholder="Last name">
      <span style="color: red;">${error5}</span>
      </div>
      <div class="mb-3">
          <input type="text" class="form-control" name="Address"required="required" placeholder="Address">
          
      </div>
      <div class="mb-3">
          <input type="text" class="form-control" name="MobileNo"required="required" placeholder="Mobile no">
          <span style="color: red;">${error4}</span>
      </div>
      <div class="mb-3">
          <input type="text" class="form-control" name="email"required="required" placeholder="E-mail Id">
          <span style="color: red;">${error3}</span>
      </div>
      <div class="mb-3">
          <input type="number" class="form-control" name="LandInfo"required="required" placeholder="Land Info(in Acre)">
      </div>
      <div class="mb-3">
          <input type="password" class="form-control" name="pass" required="required" placeholder="password">
      
          <span style="color: red;">${error2}</span>
          <input type="hidden" value="3" name="status" />
      </div>
      <div class="mb-3">
          <input type="password" class="form-control" name="pass1" required="required" placeholder="Confirm Password">
          <span style="color: red;">${error1}</span>
          

      </div>
     
    <div class="b">
    <button type="submit" class="btn btn-info " style="margin-left: 50px;">Register</button>

    </div>
    <div style="padding-top: 30px; text-align: center">
    Already Resister?<a href="farmer.jsp">Login</a>
    </div>
</form>
</body>
</html>
