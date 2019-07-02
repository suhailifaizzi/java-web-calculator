<%@ page import="java.util.*" %>
<%@ page import="java.io.*"%>
<html>
<title>calculator</title>
<head><h1><center>Basic Calculator</center></h1></head>
<body>
<%
    // Declare initial value as 0
    double initialValue = 0;
    
    // If result passed from previous page, set initial value to result
    if(request.getParameter("result") != null){
        initialValue = Double.parseDouble(request.getParameter("result"));
    }
%>
<center>
<form action="calculator.jsp" method="get">
<table>
    <tr>
        <!-- Number fields. -->
        <td><input type="text" name ="insertedValue" value="<%=initialValue%>" required><br></td>
    </tr>
    <tr>
        <!-- Operation field. -->
        <td><input type ="radio" name = "r1" value="Add">+</td>
        <td><input type = "radio" name = "r1" value="Sub">-</td>
    </tr>
    <tr>
        <td><input type="radio" name="r1" value ="mul">* </td>
        <td><input type = "radio" name="r1" value="div">/<br><br></td>
    </tr>
    <tr>
        <input type="hidden" name="initialValue" value="<%=initialValue%>">
        <button value="submit" name="r1" type="submit">=</button>
    </tr>


<!-- Operation field. -->


<input type="submit" value="submit">
</center>

</body>
</html>