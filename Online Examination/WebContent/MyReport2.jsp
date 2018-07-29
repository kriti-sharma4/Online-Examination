<%@ page import="java.util.*,java.lang.*,java.sql.*,package_try.Bean"%>
    
<%
int correct=(Integer)session.getAttribute("Correct");
int Tot=(Integer)session.getAttribute("Total");
%>
     <center>
     <table style="border: 5px solid black">
     <tr>
     <th style="font-size=300%; border:5px solid black"> TOTAL NUMBER OF QUESTIONS </th>
     <th style="fonr-size=300%; border:5px solid black"> NUMBER OF CORRECT QUESTIONS </th>
     </tr>
     <tr>
     <td style="font-size=100%; border:5px solid black"><%=Tot %><td>
     <td style="font-size=100%; border:5px solid black"><%=correct %><td>
     </table>
     </center>

<a href="Welcome.jsp">Go Back</a>