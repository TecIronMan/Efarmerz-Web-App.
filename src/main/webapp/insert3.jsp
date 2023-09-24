<%-- 
    Document   : insert3
    Created on : 25 Aug, 2023, 4:45:12 PM
    Author     : Hrishikesh
--%>

<%@page import="DataBaseCon.DbConnection"%>
<%@page import="java.sql.Statement"%>
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
                                  
                                 
                                   

                                  String id=request.getParameter("id");
                                  
                                   Connection con=DbConnection.getConnection();
                                   Statement st= con.createStatement();
                                   
                                    int i=st.executeUpdate("UPDATE cropdetails SET status = 'Accepted' WHERE id='"+ id +"';");

                                    if (i != 0) {

                        response.sendRedirect("crop_receive.jsp?msg=success");
                    } else {
                        response.sendRedirect("crop_receive.jsp?msgg=failed");
                    }
       %>
    </body>
</html>
