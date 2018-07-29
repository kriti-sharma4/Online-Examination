<%@ page import="java.util.*,java.lang.*"%>
<%
   String Username=request.getParameter("admin");
   String password=request.getParameter("pass");
   String pass="adminone";
   if(Username.equalsIgnoreCase("ADMIN1") && password.equals(pass) )
   {
	   %>
      
	   <jsp:forward page="HomePage_admin.html"></jsp:forward>
	   <%
   }
   
   else
   {
	   %>
	   <h6>Try Again</h6>
	   <jsp:include page="Login.html"></jsp:include>
	 <%
   }
	 %>  
	   
      