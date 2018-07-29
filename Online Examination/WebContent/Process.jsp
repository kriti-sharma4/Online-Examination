<%@ page import="java.util.*,java.lang.*,java.sql.*"%>
<% 
   String driver="com.mysql.jdbc.Driver";
  String url="jdbc:mysql://localhost:3306/questions";
  String username="root";
  String pass="Kriti@41";
  Class.forName(driver);
  Connection con=DriverManager.getConnection(url,username,pass);
  Statement stmt= con.createStatement();
     String sql="Select* from studentInfo";
	  ResultSet rs=stmt.executeQuery(sql);
	  while(rs.next())
	  {
		  int a=rs.getInt(1);
		  String b=rs.getString(2);
		  int c=rs.getInt(3);
		  int d=rs.getInt(4);
		  out.println("Roll No. "+a+"<br>");
		  out.println("Name "+b+" <br>");
		  out.println("Marks in C: "+ c+"<br>");
		  out.println("Marks in Java: "+d+"<br>");
	  }
%>