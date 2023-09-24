

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
             System.out.println(request.getParameter("type"));
                          System.out.println(request.getParameter("id"));
                   String type=request.getParameter("type");
                    String id=request.getParameter("id");           
                                   Connection con=DbConnection.getConnection();
                                   Statement st= con.createStatement();
                                   
                                    int i=st.executeUpdate("UPDATE complains SET status = '"+ type +"' WHERE id='"+ id +"';");

                                    if (i != 0) {

                        response.sendRedirect("view_complains.jsp?msg=success");
                    } else {
                        response.sendRedirect("view_complains.jsp?msgg=failed");
                    }
                                       
                                    
                                
                                    
                                
                                  
       %>
      
    </body>
</html>
