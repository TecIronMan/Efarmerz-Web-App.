 
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
                     int status=Integer.parseInt(request.getParameter("status")) ;
                                 
                                switch(status){
                                    case 1:{
                                        String id=request.getParameter("id");
                                 
                                   Connection con=DbConnection.getConnection();
                                   Statement st= con.createStatement();
                                   
                                    int i=st.executeUpdate("DELETE FROM farmer WHERE id='"+id+"';");

                                    if (i != 0) {

                        response.sendRedirect("view_farmer.jsp?msg=success");
                    } else {
                        response.sendRedirect("view_farmer.jsp?msgg=failed");
                    }
                                        break;
                                    }
                                    case 2:{
                                        String id=request.getParameter("id");
                                 
                                   Connection con=DbConnection.getConnection();
                                   Statement st= con.createStatement();
                                   
                                    int i=st.executeUpdate("DELETE FROM seller WHERE id='"+id+"';");

                                    if (i != 0) {

                        response.sendRedirect("view_seller.jsp?msg=success");
                    } else {
                        response.sendRedirect("view_seller.jsp?msgg=failed");
                    }
                                        break;
                                    }
                                    
                                }
                                  
       %>
      
    </body>
</html>
