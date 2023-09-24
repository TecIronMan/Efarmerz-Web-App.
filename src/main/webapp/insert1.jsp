<%-- 
    Document   : insert
    Created on : 24 Aug, 2023, 3:13:19 PM
    Author     : Hrishikesh
--%>
<%@page import="java.io.FileInputStream"%>
<%@page import="DataBaseCon.DbConnection"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
                                   String farmerid = (String) session.getAttribute("id");
                                 
                                   
                                    String id=request.getParameter("id");
                                  String cropid=request.getParameter("cropid");
                                  String cropname=request.getParameter("cropname");
                                   String rs=request.getParameter("rs");
                                   String quantity=request.getParameter("quantity");
                                   
                                 String farmername=request.getParameter("farmername");
                                  System.out.println(id+cropid+cropname+rs+quantity);
                                   //System.err.println(farmerid+contact+cropid+cropname+kg);
                                   Connection con=DbConnection.getConnection();
                                   Statement st= con.createStatement();
                                   
                                //    int i=st.executeUpdate("INSERT INTO `efarming`.`cropdetails` (`farmer_id`, `crop_id`, `farmer_name`, `crop_name`, `quantity`, `rupees`) VALUES ('" + farmerid + "','" + cropid+ "','" + farmername + "','" + cropname + "','" + quantity + "','" + rs + "')");
                               int i=st.executeUpdate("UPDATE cropdetails SET `farmer_id`='"+ farmerid +"' , `crop_id`='" + cropid+ "', `farmer_name`='" + farmername + "', `crop_name`='" + cropname + "', `quantity`='" + quantity + "', `rupees`= '" + rs + "' WHERE id='"+ id +"';");

                                    if (i != 0) {

                        response.sendRedirect("sellcrop.jsp?msg=success");
                    } else {
                        response.sendRedirect("sellcrop.jsp?msgg=failed");
                    }
       %>
      
    </body>
</html>
