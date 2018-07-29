<%@ page import="java.util.*,java.lang.*,java.sql.*" %>
<% 

int serial=Integer.parseInt(request.getParameter("serial"));
String driver="com.mysql.jdbc.Driver";
String url="jdbc:mysql://localhost:3306/questions";
String username="root";
String pass="Kriti@41";
Class.forName(driver);
Connection con=DriverManager.getConnection(url,username,pass);
Statement stmt= con.createStatement();
String sql="Delete From JAVA Where sno='"+serial+"'";
int n=stmt.executeUpdate(sql);
out.println("Number of Questions Deleted:"+n);
con.close();
  %>
  <a href="Delete2.html">Go Back</a>