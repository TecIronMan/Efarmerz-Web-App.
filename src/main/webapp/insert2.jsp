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
                                  String complain=request.getParameter("complain");
                                   String type=request.getParameter("type");
                                   
                                   Connection con=DbConnection.getConnection();
                                   Statement st= con.createStatement();
                                   
                                    int i=st.executeUpdate("INSERT INTO `efarming`.`complains` (`farmer_id`, `complain_type`, `complain`, `status`) VALUES ('" + farmerid + "','" + type+ "','" + complain + "','OPEN')");

                                    if (i != 0) {

                        response.sendRedirect("complainpage.jsp?msg=success");
                    } else {
                        response.sendRedirect("complainpage.jsp?msgg=failed");
                    }
       %>
      
    </body>
</html>
