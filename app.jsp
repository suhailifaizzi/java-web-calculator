<%@ page import="java.util.*" %>
<%@ page import="java.io.*"%>
<html>
<title>calculator</title>
<head><h1><center>Basic Calculator</center></h1></head>
<body>
<center>
<form action="calculator.jsp" method="get">

<%
    // Declare initial value as 0
    double initialValue = 0;
    
    // If result passed from previous page, set initial value to result
    if(request.getParameter("result") != null){
        initialValue = Double.parseDouble(request.getParameter("result"));
    }
%>

<!-- Number fields. -->
<input type="text" name ="num1" value="<%=initialValue%>" required><br>
<input type="text" name="num2" required><br><br>

<%

%>

<!-- Operation field. -->
<input type ="radio" name = "r1" value="Add">+ 
<input type = "radio" name = "r1" value="Sub">-<br>
<input type="radio" name="r1" value ="mul">* 
<input type = "radio" name="r1" value="div">/<br><br>

<input type="submit" value="submit">
</center>

</body>
</html>