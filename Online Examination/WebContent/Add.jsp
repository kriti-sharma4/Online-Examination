<%@ page import="java.util.*,java.lang.*,java.sql.*"%>
<% 
  int SNo=Integer.parseInt(request.getParameter("SNo"));
  String question=request.getParameter("question");
  String option1=request.getParameter("op1");
  String option2=request.getParameter("op2");
  String option3=request.getParameter("op3");
  String option4=request.getParameter("op4");
  int answer=Integer.parseInt(request.getParameter("answer"));
  String driver="com.mysql.jdbc.Driver";
  String url="jdbc:mysql://localhost:3306/questions";
  String username="root";
  String pass="Kriti@41";
  Class.forName(driver);
  Connection con=DriverManager.getConnection(url,username,pass);
  Statement stmt= con.createStatement();
  String sql="Insert into C values('"+SNo+"','"+question+"','"+option1+"','"+option2+"','"+option3+"','"+option4+"','"+answer+"')";
  int n=stmt.executeUpdate(sql);
  out.println("Number of Questions Added:"+n);
  con.close();
 %>
 <a href="Add.html">Go Back</a>
  
  