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
int status=Integer.parseInt(request.getParameter("status")) ;
switch(status){
case 1:{
	String otp = null;
	Random RANDOM = new SecureRandom();
	int mac1_LENGTH = 4;
	String letters = "0123456789";
	String uid = "";
	for (int i = 0; i < mac1_LENGTH; i++) {
	    int index = (int) (RANDOM.nextDouble() * letters.length());
	    uid += letters.substring(index, index + 1);
	}
	Connection con = DbConnection.getConnection();
	Statement st = con.createStatement();

	 String email = request.getParameter("email");

	 ResultSet rs=st.executeQuery("select * from farmer where email='"+ email +"'");
	 if(rs.next()){
	  String name = "EFarmerz";
	otp = uid;
	String msg="Your OTP is: "+otp;
	Mail mail = new Mail();
	System.out.println(msg+name+email);
	Mail.secretMail(msg, name, email);


	int i = st.executeUpdate("update farmer set  otp='"+ otp +"' where email = '" + email + "'");
	if (i != 0) {
		session.setAttribute("email", email);
	    response.sendRedirect("verifyotppage.jsp?msg=Activation successfully...");
	} else {
	    response.sendRedirect("verifyusername.jsp?msg=Error");
	}
	 }
	 else {
		    response.sendRedirect("verifyusername.jsp?msg=Error");
		}
	 break;
}
case 2:{
	String otp = null;
	Random RANDOM = new SecureRandom();
	int mac1_LENGTH = 4;
	String letters = "0123456789";
	String uid = "";
	for (int i = 0; i < mac1_LENGTH; i++) {
	    int index = (int) (RANDOM.nextDouble() * letters.length());
	    uid += letters.substring(index, index + 1);
	}
	Connection con = DbConnection.getConnection();
	Statement st = con.createStatement();

	 String email = request.getParameter("email");

	 ResultSet rs=st.executeQuery("select * from seller where email='"+ email +"'");
	 if(rs.next()){
	  String name = "EFarmerz";
	otp = uid;
	String msg="Your OTP is: "+otp;
	Mail mail = new Mail();
	System.out.println(msg+name+email);
	Mail.secretMail(msg, name, email);


	int i = st.executeUpdate("update seller set  otp='"+ otp +"' where email = '" + email + "'");
	if (i != 0) {
		session.setAttribute("email", email);
	    response.sendRedirect("verifyotppage1.jsp?msg=Activation successfully...");
	} else {
	    response.sendRedirect("verifyselleremail.jsp?msg=Error");
	}
	 }
	 else {
		    response.sendRedirect("verifyselleremail.jsp?msg=Error");
		}
	 break;
}
 
}
%>
</body>
</html>