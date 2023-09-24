 

<%@page import="DataBaseCon.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
    position:fixed;
      top:20%;
      left:40%;
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
    <script>alert('Complain Post Successfully');</script>
    <%            }
    %>

        <title>Farmer Home</title>
    </head>
<body style="background-color:#cfcbaa;">
	<nav class="navbar navbar-expand-lg navbar-light bg-light" style="background-color: #2f4973; position: fixed; width: 100%;">
  <a class="navbar-brand" href="#"><img src="images/logo1.jpg" height="40px" width="40px"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto" style="font-size: 20px;">
     
         <li>
        <a class="nav-link" style="color: black;"  href="farmerhome.html">Home</a>
      </li>
       <li>
        <a class="nav-link" style="color: black;" href="cropdetails.jsp">Crop Advertisement Details</a>
      </li>
        <li>
        <a class="nav-link"style="color: black;  " href="farmingtips.jsp">Farming Tips</a>
      </li>
        <li>
        <a class="nav-link" style="color: black;text-decoration: underline;"  href="complainpage.jsp">Complain Page</a>
      </li>
      <li >
        <a class="nav-link"style="color: black;" href="view_complain.jsp">View Complain</a>
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
    <br><br><br><br><br>
    <form action="insert2.jsp" style="width:300px;" class="f ">
  <h3 class="title" style="left:40%; padding: 30px;">Complain Page</h3>

<div class="mb-3">
    <label>Farmer ID:</label>
   <input type="text" class="form-control" name="farmerid" value="<%= id%>">
</div>
<div class="mb-3">
    <label>Complain:</label>
    <input type="text" class="form-control" name="complain" placeholder="complain">
    </div>
<label for="cars">Complaint Type</label>

<select  name="type" style="width: 150px; border-radius: 5px;">
  <option value="Crop Issue">Crop Issue</option>
  <option value="About Supplier">About Supplier</option>
  <option value="Technical Issue">Technical Issue</option>
  
</select>
  
<div class="b">
<button type="submit" class="btn btn-info ">Submit</button>
</div>
</form>
    
   
</body>
</html>
