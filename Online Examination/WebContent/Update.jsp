<%@ page import="java.util.*,java.lang.*,java.sql.*"%>
<% 

  int Serial=Integer.parseInt(request.getParameter("Serial"));
  String ques=request.getParameter("ques");
  String option1=request.getParameter("op1");
  String option2=request.getParameter("op2");
  String option3=request.getParameter("op3");
  String option4=request.getParameter("op4");
  int Ans=Integer.parseInt(request.getParameter("answer"));
  String driver="com.mysql.jdbc.Driver";
  String url="jdbc:mysql://localhost:3306/questions";
  String username="root";
  String pass="Kriti@41";
  Class.forName(driver);
  Connection con=DriverManager.getConnection(url,username,pass);
  Statement stmt= con.createStatement();
  String sql="Update C Set Question='"+ques+"',Option1='"+option1+"',Option2='"+option2+"',Option3='"+option3+"',Option4='"+option4+"',Answer='"+Ans+"' where SNo='"+Serial+"'";
  int n=stmt.executeUpdate(sql);
  out.println("Number of Questions Updated:"+n);
  con.close();
 %>
 <a href="Update.html">Go Back</a>