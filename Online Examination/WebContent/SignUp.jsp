<%@ page import="java.util.*,java.lang.*,java.sql.*"%>
<%
   int R=Integer.parseInt(request.getParameter("Rno"));
   String N=request.getParameter("Name");
   String D=request.getParameter("dob");
   String Ph=request.getParameter("Phone");
   String E=request.getParameter("Email");
   String P=request.getParameter("Pass");
   int M1=Integer.parseInt(request.getParameter("Marks_C"));
   int M2=Integer.parseInt(request.getParameter("Marks_Java"));
String driver="com.mysql.jdbc.Driver";
String url="jdbc:mysql://localhost:3306/questions";
String username="root";
String pass="Kriti@41";
Class.forName(driver);
Connection con=DriverManager.getConnection(url,username,pass);
Statement stmt= con.createStatement();
String sql="Insert into studentInfo values('"+R+"','"+N+"','"+M1+"','"+M2+"','"+D+"','"+Ph+"','"+E+"','"+P+"')";
  int n=stmt.executeUpdate(sql);
  con.close();
  response.sendRedirect("Login2.html");
 %>
 