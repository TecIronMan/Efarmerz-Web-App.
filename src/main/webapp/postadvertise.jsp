 
<%@page import="java.sql.Statement"%>
<%@page import="DataBaseCon.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.File"%>

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
        if (request.getParameter("msg") != null) {
    %>
    <script>alert('Crop Post Succesfully');</script>
    <%            }
    %>

        <title>Seller Home</title>
    </head>
    <body class="whole">
<nav class="navbar navbar-expand-lg navbar-light bg-light" style="background-color: #2f4973; position: fixed; width: 100%;">
  <a class="navbar-brand" href="index.jsp"><img src="images/logo1.jpg" height="40px" width="40px"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto" style="font-size: 20px;">
      <li>
        <a class="nav-link" style="color: black;" href="sellerhome.jsp">Home</a>
      </li>
      <li >
        <a class="nav-link"style="color: black; text-decoration: underline;" href="postadvertise.jsp">Post Advertise</a>
      </li>
      
      <li>
        <a class="nav-link"style="color: black;" href="crop_receive.jsp">Crop Receive</a>
      </li>
      <li>
        <a class="nav-link"style="color: black;" href="index.jsp">Logout</a>
      </li>
    </ul>
  
  </div>
</nav>
       <%
       String id = (String) session.getAttribute("id");
       %>
      
   <center><form action="insert.jsp" style="width:300px;" enctype="multipart/form-data" method="post"  class="f1 ">
  <h2 class="title" style="left:50%;  padding-top: 80px;">Post Advertise</h2>
  
    
   
        <label for="exampleInputEmail1" class="form-label">Wholesaler ID:</label>
        <input type="text" class="form-control" required="required"  name="sellerid" value="<%= id%>">
        
         <label for="exampleInputEmairl1" class="form-label">Crop ID:</label>
      <input type="text" class="form-control" required="required" name="cropid" >
     
          <label for="exampleInputEtmail1" class="form-label">Crop Name:</label>
          <input type="text" class="form-control" required="required" name="cropname" >
      
          <label for="exampleInpuytEmail1" class="form-label">Image:</label>
          <input type="file" required="required" name="file">
     
           <label for="exampleInpnutEmail1" class="form-label">Required Quantity(in kg):</label>
          <input type="number" class="form-control" required="required" name="kg" >
                  
     
     
    <div class="b">
    <button type="submit" class="btn btn-info " style="margin-right: 50px;">Post</button>
 
    </div>
   
</form></center>
</body>
</html>
