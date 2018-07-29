<%@ page import="java.util.*,java.sql.*,package_try.Bean"%>

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
List<Bean> list=new ArrayList<Bean>();
while(rs.next())
{
   Bean p=new Bean();
   p.setSNo(rs.getInt(1));
   p.setQuestion(rs.getString(2));
   p.setOption1(rs.getString(3));
   p.setOption2(rs.getString(4));
   p.setOption3(rs.getString(5));
   p.setOption4(rs.getString(6));
   p.setAns(rs.getInt(7));
   
   list.add(p);
}
session.setAttribute("Data",list);
con.close();
response.sendRedirect("Check.jsp");
%>

