<%@ page import="java.util.*,java.lang.*,java.sql.*"%>
<%! int count=0; %>
<% 
int A=(Integer) session.getAttribute("Roll"); 
  String H=request.getParameter("ans");
  if(H != "")
  {
    int C1=Integer.parseInt(H);
     int C2=Integer.parseInt(request.getParameter("checkans"));
     
     if(C1==C2 )
     {
    	 count=count+1;
    	 String driver="com.mysql.jdbc.Driver";
    	 String url="jdbc:mysql://localhost:3306/questions";
    	 String username="root";
    	 String pass="Kriti@41";
    	 Class.forName(driver);
    	 Connection con=DriverManager.getConnection(url,username,pass);
    	 Statement stmt= con.createStatement();
    	 String sql="Select* from studentInfo";
    	 ResultSet rs=stmt.executeQuery(sql);
    	 int a=0;
    	 int b=0;
    	 while(rs.next())
    	 {
    		  a=rs.getInt(1);
    		  {if(a==A)
    			  b=rs.getInt(3);
    			  break;}
    	 }
    	 int c=b+1;
	     String sql2="Update studentInfo Set MarksC='"+c+"' where RollNo='"+a+"'";
	    			  int n=stmt.executeUpdate(sql2);
     
    con.close();}
  }
   
     session.setAttribute("Correct",count);  
     response.sendRedirect("Check.jsp");
 %>
    


















    