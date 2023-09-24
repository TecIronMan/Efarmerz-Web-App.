 
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
	</style>
         <%
        if (request.getParameter("msg") != null) {
    %>
    <script>alert('Updated Successfully');</script>
    <%            }
    %>

        <title>Admin Home</title>
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
        <a class="nav-link" style="color: black;"  href="view_complains.jsp">< Back</a>
      </li>
        
    </ul>
      </div>
  </div>
</nav>
	  <br><br><br><br><br>
   <div style="">
                  
                        <%
                            Connection con = null;
                            Statement st = null;
                            ResultSet rs = null;
                            String id = request.getParameter("id");
                            try {
                                con = DbConnection.getConnection();
                                st = con.createStatement();
                                rs = st.executeQuery("select * from complains where id='"+ id +"'");
                                while (rs.next()) {

                        %>
                        <center>      <form action="updatecomplain.jsp?" style="width:500px;" class="f ">
  <h3 class="title" style="left:40%; padding: 30px;">Complain Box</h3>
  <input type="hidden" name="id" value="<%=rs.getString("id")%>">
   <table border="2"  style="text-align: center;margin-top: 50px; width: 400px">
      
      <tr>
    <th>Complaint ID:</th>
    <td><%=rs.getString("id")%></td>
  </tr>

    <tr>
    <th>Farmer ID:</th>
    <td><%=rs.getString("farmer_id")%>

  <tr>
    <th>Complaint ID:</th>
    <td><%=rs.getString("complain")%></td>
  </tr>

  <tr>
    <th>Complaint ID:</th>
    <td><%=rs.getString("complain_type")%></td>
  </tr>

  <tr>
    <th>Status</th>
<td><select  name="type" style="width: 150px; border-radius: 5px;">
  <option value="OPEN">SELECT</option>
  <option value="READ">READ</option>
  <option value="SOLVED">SOLVED</option>
  
</select></td>
  </tr>
   </table>
<div class="b" style="padding-top: 50px;">
<button type="submit" class="btn btn-info " >Submit</button>
</div>
</form></center>    
    
   
                        <% }
                            } catch (Exception ex) {
                                ex.printStackTrace();
                            }

                        %>
                    </table></center></div>
</body>
</html>
