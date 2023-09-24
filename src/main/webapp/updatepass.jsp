<%@page import="DataBaseCon.RegEx1"%>
<%@page import="DataBaseCon.Encrypt_Decrypt"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DataBaseCon.DbConnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="DataBaseCon.Mail"%>
<%@page import="java.security.SecureRandom"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 


Connection con = DbConnection.getConnection();
Statement st = con.createStatement();

 String pass1 = request.getParameter("pass1");
 String pass2 = request.getParameter("pass2");
 System.out.println(pass1+pass2);
 String email=(String) session.getAttribute("email");
 int status=Integer.parseInt(request.getParameter("status")) ;
 switch(status){
 case 1:{
	 if (RegEx1.isValidPassword(pass1)) {
	 if(pass1.equals(pass2)){
		 
		 String pass3=Encrypt_Decrypt.encryptDecrypt(pass1);
			int i = st.executeUpdate("update farmer set  password='"+ pass3 +"' where email = '" + email + "'");
			if (i != 0) {
			    response.sendRedirect("farmer.jsp?msg=Activation successfully...");
			} else {
			    response.sendRedirect("createnewpass.jsp?msg=Error");
			}
		}else {
			request.setAttribute("error1", "Confirm Password Should Be Same As Password");
    		request.getRequestDispatcher("createnewpass.jsp").include(request, response);
		}
	 }
		else {
			request.setAttribute("error2", "Invalid Password! Password Should be 8 Character");
     	request.getRequestDispatcher("createnewpass.jsp").include(request, response);
		}
	 break;
 }
 case 2:{
	 if(pass1.equals(pass2)){
		 String pass3=Encrypt_Decrypt.encryptDecrypt(pass1);
			int i = st.executeUpdate("update seller set  password='"+ pass3 +"' where email = '" + email + "'");
			if (i != 0) {
			    response.sendRedirect("seller.jsp?msg=Activation successfully...");
			} else {
			    response.sendRedirect("createnewpass1.jsp?msg=Error");
			}
		}else {
		    response.sendRedirect("createnewpass1.jsp?msg=Error");
		}
	 break;
 }
 }







%>
</body>
</html>