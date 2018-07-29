<%@ page import="java.util.*,java.sql.*"%>

<%
String driver="com.mysql.jdbc.Driver";
String url="jdbc:mysql://localhost:3306/questions";
String username="root";
String pass="Kriti@41";
Class.forName(driver);
Connection con=DriverManager.getConnection(url,username,pass);
Statement stmt= con.createStatement();
String sql="Select* from C";
ResultSet rs=stmt.executeQuery(sql);
while(rs.next())
{
   out.println(rs.getString(1)+" "+rs.getString(2)+"<br><br>");
   out.println ("Option 1:"+" "+ rs.getString(3)+"<br><br>");
   out.println("Option 2:"+" "+rs.getString(4)+"<br><br>");
    out.println("Option 3:"+" "+rs.getString(5)+"<br><br>");
     out.println("Option 4:"+" "+rs.getString(6)+"<br><br>");
   out.println("Answer:"+rs.getInt(7)+"<br><br><br><br>");
   
  }
  con.close();
  %>
  <a href="C.html">Go Back</a>