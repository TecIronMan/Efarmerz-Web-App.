<%-- 
    Document   : posttip
    Created on : 25 Aug, 2023, 3:42:12 PM
    Author     : Hrishikesh
--%>

<%@page import="java.sql.Statement"%>
<%@page import="DataBaseCon.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
            
                   String tip=request.getParameter("tip");
                              
                                   Connection con=DbConnection.getConnection();
                                   Statement st= con.createStatement();
                                   
                                    int i=st.executeUpdate("INSERT INTO `efarming`.`farmertips` (`tips`) values ('" + tip +  "')");

                                    if (i != 0) {

                        response.sendRedirect("farmertips.jsp?msg=success");
                    } else {
                        response.sendRedirect("farmertips.jsp?msgg=failed");
                    }
                                       
                                    
                                
                                    
                                
                                  
       %>
    </body>
</html>
