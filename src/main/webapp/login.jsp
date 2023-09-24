<%-- 
    Document   : loginaction
    Created on : Feb 23, 2016, 3:43:53 PM
    Author     : java4
--%>

<%@page import="DataBaseCon.RegEx1"%>
<%@page import="DataBaseCon.Encrypt_Decrypt"%>
<%@page import="java.util.UUID"%>
<%@page import="java.security.SecureRandom"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DataBaseCon.DbConnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Random"%>
<%
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;


    String FirstName = request.getParameter("FirstName");
    String LastName = request.getParameter("LastName");
    String pass = request.getParameter("pass");
    String pass1 = request.getParameter("pass1");
    String Address = request.getParameter("Address");
    String Email = request.getParameter("email");
    String MobileNo = request.getParameter("MobileNo");
    String LandInfo = request.getParameter("LandInfo");
  
    System.out.println("User Details" + LandInfo + MobileNo + Email + FirstName + LastName  + pass );

    int status = Integer.parseInt(request.getParameter("status"));
    try {
        con = DbConnection.getConnection();
        st = con.createStatement();
        switch (status) {
            case 1:
                try {
                	
                	
                	 String pass2=Encrypt_Decrypt.encryptDecrypt(pass);
                	 
                    rs = st.executeQuery("select * from farmer where email='" + Email + "' AND password='" + pass2 + "'");
                    if (rs.next()) {

                        session.setAttribute("id", rs.getString("id"));


                        response.sendRedirect("farmerhome.jsp?msg=success");
                    } else {
                    	request.setAttribute("error", "Invalid Email Or Password");
                    	request.getRequestDispatcher("farmer.jsp").include(request, response);
                       // response.sendRedirect("farmerregister.jsp?msgg=failed");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                break;
                 case 2:
                try {
                	 String pass2=Encrypt_Decrypt.encryptDecrypt(pass);
                    rs = st.executeQuery("select * from seller where email='" + Email + "' AND password='" + pass2 + "'");
                    if (rs.next()) {
                   
                        session.setAttribute("id", rs.getString("id"));
                       session.setAttribute("contact", rs.getString("mobile_no"));


                        response.sendRedirect("sellerhome.jsp?msg=success");
                    } else {
                    	request.setAttribute("error", "Invalid Email Or Password");
                    	request.getRequestDispatcher("seller.jsp").include(request, response);
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                break;
            case 3:

            	
            	if (RegEx1.isValidName(FirstName)) {
        			
        			if (RegEx1.isValidName(LastName)) {
        			
        				if (RegEx1.isValidMobileNo(MobileNo)) {
        				
        					if (RegEx1.isValidEmail(Email)) {
        						
        						if (RegEx1.isValidPassword(pass)) {
        						
        							if (pass.equals(pass1)) {
        							
        								 try {
        		                         //con = DbConnection.getConnection();
        		                        // st = con.createStatement();
        		                          
        		                        	 String pass2=Encrypt_Decrypt.encryptDecrypt(pass);
        		                        	
        		                         int i = st.executeUpdate("INSERT INTO `efarming`.`farmer` (`address`,`first_name`, `land_info`, `last_name`, `mobile_no`, `password`, `email`) values ('" + Address + "','" + FirstName+ "','" + LandInfo + "','" + LastName + "','" + MobileNo + "','" + pass2 + "','" + Email +  "')");
        		                         if (i != 0) {

        		                             response.sendRedirect("farmerhome.jsp?msg=success");
        		                         } else {
        		                             response.sendRedirect("farmerregister.jsp?msgg=failed");
        		                         }
        		                         con.close();
        		                     } catch (Exception ex) {
        		                         System.out.println(ex.getMessage());
        		                         response.sendRedirect("farmerregister.jsp?msggg=failed");
        		                  	   }
        							} else {
        								request.setAttribute("error1", "Confirm Password Should Be Same As Password");
        				        		request.getRequestDispatcher("farmerregister.jsp").include(request, response);
        							}
        						}
        						else {
        							request.setAttribute("error2", "Invalid Password! Password Should be 8 Character");
        				        	request.getRequestDispatcher("farmerregister.jsp").include(request, response);
        						}
        					}
        						else {
        						request.setAttribute("error3", "Enter Valid Email");
        			        	request.getRequestDispatcher("farmerregister.jsp").include(request, response);
        					}
        				} else {
        					request.setAttribute("error4", "Enter Valid Mobile Number");
        		        	request.getRequestDispatcher("farmerregister.jsp").include(request, response);
        				}
        			} else {
        				request.setAttribute("error5", "Invalid Last Name");
        	        	request.getRequestDispatcher("farmerregister.jsp").include(request, response);
        			}
        		} else {
        			request.setAttribute("error6", "Invalid First Name");
                	request.getRequestDispatcher("farmerregister.jsp").include(request, response);
        		}
            	    
                break;
                case 4:

                	if (RegEx1.isValidName(FirstName)) {
            			
            			if (RegEx1.isValidName(LastName)) {
            			
            				if (RegEx1.isValidMobileNo(MobileNo)) {
            				
            					if (RegEx1.isValidEmail(Email)) {
            						
            						if (RegEx1.isValidPassword(pass)) {
            						
            							if (pass.equals(pass1)) {
            							
            								try {
            								   // con = DbConnection.getConnection();
            								    //st = con.createStatement();
            									 String pass2=Encrypt_Decrypt.encryptDecrypt(pass);
            								    int i = st.executeUpdate("INSERT INTO `efarming`.`seller` (`address`,`first_name`, `last_name`, `mobile_no`, `password`, `email`) values ('" + Address + "','" + FirstName + "','" + LastName + "','" + MobileNo + "','" + pass2 + "','" + Email +  "')");
            								    if (i != 0) {

            								        response.sendRedirect("sellerhome.jsp?msg=success");
            								    } else {
            								        response.sendRedirect("sellerregister.jsp?msgg=failed");
            								    }
            								    con.close();
            								} catch (Exception ex) {
            								    System.out.println(ex.getMessage());
            								    response.sendRedirect("sellerregister.jsp?msggg=failed");
            								}
            							} else {
            								request.setAttribute("error1", "Confirm Password Should Be Same As Password");
            				        		request.getRequestDispatcher("sellerregister.jsp").include(request, response);
            							}
            						}
            						else {
            							request.setAttribute("error2", "Invalid Password! Password Should be 8 Character");
            				        	request.getRequestDispatcher("sellerregister.jsp").include(request, response);
            						}
            					}
            						else {
            						request.setAttribute("error3", "Enter Valid Email");
            			        	request.getRequestDispatcher("sellerregister.jsp").include(request, response);
            					}
            				} else {
            					request.setAttribute("error4", "Enter Valid Mobile Number");
            		        	request.getRequestDispatcher("sellerregister.jsp").include(request, response);
            				}
            			} else {
            				request.setAttribute("error5", "Invalid Last Name");
            	        	request.getRequestDispatcher("sellerregister.jsp").include(request, response);
            			}
            		} else {
            			request.setAttribute("error6", "Invalid First Name");
                    	request.getRequestDispatcher("sellerregister.jsp").include(request, response);
            		}
	
                break;


              case 5:
                try {
                    rs = st.executeQuery("select * from admin where email='" + Email + "' AND password='" + pass + "'");
                    if (rs.next()) {
                   
                        session.setAttribute("email", rs.getString("email"));


                        response.sendRedirect("adminhome.jsp?msg=success");
                    } else {
                    	request.setAttribute("error", "Invalid Email Or Password");
                    	request.getRequestDispatcher("admin.jsp").include(request, response);
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                break;
            default:
                response.sendRedirect("index.html");
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }

%>