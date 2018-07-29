<%@ page import="java.util.*,java.lang.*"%>
<%
   String name=(String)session.getAttribute("Uname");
out.println("WELCOME "+name+ "<br>");
%>
<body style="backgroun:#fff000">
<center>
<a href="ExamS.html"> <h1 style="font-color=#ff0000; font-size=100%;">EXAM</h1></a><br><br><br>
<a href="Report.html"><h1 style="font-color=#ff0000; font-size=100%;">REPORTS</h1></a><br><br><br>
<a href="Index.html"><h1 style="font-color=#ff0000; font-size=100%;">SIGN OUT</h1></a><br><br><br>
</center>
</body>

    