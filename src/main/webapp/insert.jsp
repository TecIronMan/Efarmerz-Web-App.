<%-- 
    Document   : insert
    Created on : 24 Aug, 2023, 3:13:19 PM
    Author     : Hrishikesh
--%>
<%@page import="org.apache.tomcat.util.http.fileupload.RequestContext"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory"%>

<%@page import="org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.tomcat.util.http.fileupload.FileItemFactory"%>
<%@page import="org.apache.tomcat.util.http.fileupload.FileItem"%>

<%@page import="java.io.File"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="DataBaseCon.DbConnection"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="javax.servlet.annotation.MultipartConfig"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
                                   String id = (String) session.getAttribute("id");
                                    String contact = (String) session.getAttribute("contact");
                                   

                                  String cropid=request.getParameter("cropid");
                                  String cropname=request.getParameter("cropname");
                                   String kg=request.getParameter("kg");
                                  
                                   InputStream img = null;
                              //
                                  Part filePart = request.getPart("file");
                                  img = filePart.getInputStream();
                          
                                  String fileName=filePart.getSubmittedFileName();
        System.out.println( filePart.getSubmittedFileName());
                                
        String path="C:\\Users\\karan\\eclipse-workspace\\MassTechnologies\\EFarming-CDAC\\src\\main\\webapp\\post\\"+fileName;
        FileOutputStream fos=new FileOutputStream(path);
        
        InputStream is=filePart.getInputStream();
        		byte [] data=new byte[is.available()];
        		is.read(data);
        		fos.write(data);
        		fos.close();
                                   
                                   System.out.println(cropid+cropname+kg);
                                   Connection con=DbConnection.getConnection();
                                   PreparedStatement ps=con.prepareStatement("INSERT INTO `efarming`.`cropdetails` (`supplier_id`, `crop_id`, `crop_name`,`image`, `quantity`, `supplier_contact`,`status`,`imagename`) VALUES (?,?,?,?,?,?,?,?)");
                                   ps.setString(1, id);
                                   ps.setString(2, cropid);
                                   ps.setString(3, cropname);
                                   ps.setBlob(4, img);
                                   ps.setString(5, kg);
                                   ps.setString(6, contact);
                                    ps.setString(7, " ");
                                    ps.setString(8, fileName);

                                    int i=ps.executeUpdate();
                                    
                                    if (i != 0) {

                        response.sendRedirect("postadvertise.jsp?msg=success");
                    } else {
                        response.sendRedirect("postadvertise.jsp?msgg=failed");
                    }
       %>
      
    </body>
</html>
