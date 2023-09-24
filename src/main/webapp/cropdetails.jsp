 
<%@page import="java.awt.Image"%>
<%@page  language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.Blob"%>
<%@page import="DataBaseCon.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

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
    <script>alert('Login Successfully');</script>
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
        <a class="nav-link" style="color: black; "  href="farmerhome.jsp">Home</a>
      </li>
       <li>
        <a class="nav-link" style="color: black; text-decoration: underline;" href="cropdetails.jsp">Crop Advertisement Details</a>
      </li>
        <li>
        <a class="nav-link"style="color: black;" href="farmingtips.jsp">Farming Tips</a>
      </li>
        <li>
        <a class="nav-link" style="color: black;"  href="complainpage.jsp">Complain Page</a>
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
    <br><br><br><br><br>
    <div style="">
                    <!--- Start Body ------>
                   <center><h3><font style="font-size: 40px;  color: #2cadff; ">Crop Advertisement Details</font></h3>
                    <table border="2" style="text-align: center;margin-top: 50px; ">
                        <tr style="height: 50px;">
                            <th class="bor" style="text-align: center;width: 150px; color: black; font-size: 18px; ">Sell Crop</th>
                            <th class="bor" style="text-align: center;width: 150px;color: black; font-size: 18px">Crop ID</th>
                            <th class="bor" style="text-align: center;width: 150px;color: black; font-size: 18px">Crop Name</th>
                    
                            <th class="bor" style="text-align: center;width: 150px;color: black; font-size: 18px">Image</th>
                            <th  class="bor" style="text-align: center;width: 150px;color: black; font-size: 18px">Quantity</th>
                            <th  class="bor" style="text-align: center;width: 150px;color: black; font-size: 18px">Wholesaler ID</th>
                           <th  class="bor" style="text-align: center;width: 150px;color: black; font-size: 18px">Wholesaler Contact</th>
                            <th  class="bor" style="text-align: center;width: 150px;color: black; font-size: 18px">Status</th>

                        </tr>

                        <%
                            Connection con = null;
                            Statement st = null;
                            ResultSet rs = null;
                            
                            
                            try {
                                con = DbConnection.getConnection();
                                st = con.createStatement();
                                rs = st.executeQuery("select * from cropdetails");
                                while (rs.next()) {
                                String name=rs.getString("imagename");
                        %>
                        <tr >
                            <td class="bor" style="color: #4CAF50; font-size: 16px"><a href="sellcrop.jsp?id=<%=rs.getString("id")%>&cropid=<%=rs.getString("crop_id")%>&cropname=<%=rs.getString("crop_name")%>"><font style="color: green">SELL</a></td>
                            <td class="bor" style="color: midnightblue; font-size: 16px"><%=rs.getString("crop_id")%></td>
                            <td class="bor" style="color: midnightblue; font-size: 16px"><%=rs.getString("crop_name")%></td>                            
                            <td class="bor" style="color: midnightblue; font-size: 16px"><img alt="" height="150px" width="150px" src="images/<%=name%>"></td>
                            <td class="bor" style="color: midnightblue; font-size: 16px"><%=rs.getString("quantity")%></td>
                             <td class="bor" style="color: midnightblue; font-size: 16px"><%=rs.getString("supplier_id")%></td>
                              <td class="bor" style="color: midnightblue; font-size: 16px"><%=rs.getString("supplier_contact")%></td>
                              <td class="bor" style="color: midnightblue; font-size: 16px"><%=rs.getString("status")%></td>
                            

                        </tr><tr />
                        <%   }
                            } catch (Exception ex) {
                                ex.printStackTrace();
                            }

                        %>
                    </table></center></div>
</body>
</html>
