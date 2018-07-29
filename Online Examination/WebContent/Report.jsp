<%@ page import="java.util.*,java.lang.*,java.sql.*"%>
<% 
  String Rno=request.getParameter("roll");
  String driver="com.mysql.jdbc.Driver";
  String url="jdbc:mysql://localhost:3306/questions";
  String username="root";
  String pass="Kriti@41";
  Class.forName(driver);
  Connection con=DriverManager.getConnection(url,username,pass);
  Statement stmt= con.createStatement();
  String sql="select RollNo,Name,MarksC,MarksJava from studentInfo where RollNo='"+Rno+"'";
 ResultSet rs= stmt.executeQuery(sql);
	    while(rs.next())
	    {
	    	int roll=rs.getInt(1);
	    	String nameSt=rs.getString(2);
	    	int marksC=rs.getInt(3);
	    	int marksJ=rs.getInt(4);
	    	out.println("Roll No. :"+roll+"<br><br><br>");
	    	out.println("Name :"+nameSt+"<br><br><br>");
	    	out.println("Marks Obtained in C :"+marksC+"<br><br><br>");
	    	out.println("Marks Obtained in Java :"+marksJ+"<br><br><br>");
	    	
	    	
	    }
	con.close();
%>