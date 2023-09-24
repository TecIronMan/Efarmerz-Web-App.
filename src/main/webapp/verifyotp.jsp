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
int status=Integer.parseInt(request.getParameter("status")) ;

switch(status){
case 1:{
	String otp = request.getParameter("otp");
	 String email=(String) session.getAttribute("email");
	 
	 ResultSet rs=st.executeQuery("select * from farmer where email='"+ email +"'");
	 if(rs.next()){
	  String name = "EFarmerz";

	  String otp1=rs.getString("otp");



	
	if (otp.equals(otp1)) {
	    response.sendRedirect("createnewpass.jsp?msg=Activation successfully...");
	} else {
		request.setAttribute("error", "Invalid OTP");
    	request.getRequestDispatcher("verifyotppage.jsp").include(request, response);
	}
	 }
	 else {
		 request.setAttribute("error", "Invalid OTP");
     	request.getRequestDispatcher("verifyotppage.jsp").include(request, response);
		}
	break;
}
case 2:{
	String otp = request.getParameter("otp");
	 String email=(String) session.getAttribute("email");
	 
	 ResultSet rs=st.executeQuery("select * from seller where email='"+ email +"'");
	 if(rs.next()){
	  String name = "EFarmerz";

	  String otp1=rs.getString("otp");


	
	if (otp.equals(otp1)) {
	    response.sendRedirect("createnewpass1.jsp?msg=Activation successfully...");
	} else {
	    response.sendRedirect("verifyotppage1.jsp?msg=Error");
	}
	 }
	 else {
		    response.sendRedirect("verifyotppage1.jsp?msg=Error");
		}
	break;
}
}
 
%>
</body>
</html>