<%@ page import="java.util.*,java.sql.*,package_try.Bean" %>
 <%! int j=0; %>   
<%
  List<Bean> list2=(List)session.getAttribute("Data2");
  int x=list2.size();
  
  if(j==(list2.size()))
  {
     response.sendRedirect("MyReport.jsp");
     session.setAttribute("Total",x);}
  else{
  
	  Bean b=(Bean)list2.get(j);
	  out.println(b.getSNo()+" "+b.getQuestion()+"<br>");
	  out.println("1. "+b.getOption1()+"<br><br><br>");
	  out.println("2. "+b.getOption2()+"<br><br><br>");
	  out.println("3. "+b.getOption3()+"<br><br><br>");
	  out.println("4. "+b.getOption4()+"<br><br><br>"); 
	  int a=b.getAns();
	  j=j+1;
  
	  %>
	  <form action="Feed2.jsp">
	  Enter the correct option number:<br>
	  <input type="text" name="ans">
	  <input type="hidden" name="checkans" value="<%=a%>">
	  <input type="submit" value="SUBMIT">
	  <input type="submit" value="NEXT">
	  </form>
	
  <%
  }
  
  
%>









