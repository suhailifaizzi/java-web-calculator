<%@ page import="java.util.*" %>
<%@ page import="java.io.*"%>
<html>
<title>calculator</title>
<head><h1><center>Basic Calculator</center></h1></head>
<body>
<%
    // Declare initial value as 0
    double initialValue;
    
    // Set initial value to result
    if(request.getParameter("result") != null){
        initialValue = Double.parseDouble(request.getParameter("result"));
    }else{
        initialValue = 0;
    }
%>
<center>
<form action="calculator.jsp" method="get">
<table>
    <tr>
        <!-- Number fields. -->
        <td><input type="text" name="insertedValue" value="<%=initialValue%>" required><br></td>
    </tr>
    <tr>
        <!-- Operation field. -->
        <td><button name="operation" type="submit" value="addition">+</button></td>
        <td><button name="operation" type="submit" value="subtraction">+</button></td>
    </tr>
    <tr>
        <td><button name="operation" type="submit" value="multiplication">x</button></td>
        <td><button name="operation" type="submit" value="division">÷</button></td>
    </tr>
    <tr>
        <td><button value="submit" name="operation" type="submit">=</button></td>
        <td></td>
    </tr>


<!-- Operation field. -->

<input type="hidden" name="initialValue" value="<%=initialValue%>">
</center>

</body>
</html>