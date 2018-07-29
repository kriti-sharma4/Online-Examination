<%@ page import="java.util.*,java.lang.*,java.sql.*"%>
<%
   int nameS=Integer.parseInt(request.getParameter("Sname")); //roll no
   String passS=request.getParameter("Spass");
String driver="com.mysql.jdbc.Driver";
String url="jdbc:mysql://localhost:3306/questions";
String username="root";
String pass="Kriti@41";
Class.forName(driver);
Connection con=DriverManager.getConnection(url,username,pass);
Statement stmt= con.createStatement();
String sql="Select* from studentInfo";
ResultSet rs=stmt.executeQuery(sql);
int count=0;
int a=0;
while(rs.next())
{
	 a=rs.getInt(1);
	String b=rs.getString(8);
	
	if(passS.equals(b) && nameS==a)
	{
		count=1;
		break;
	}
}
if(count==0)
{
   %>
   <jsp:forward page="SignUp.html"></jsp:forward>
 <%
 }
 else
 {
   session.setAttribute("Uname",passS);
   session.setAttribute("Roll",nameS);
   response.sendRedirect("Welcome.jsp");
  }
  con.close();
  %>
  