<%@ page language="java" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*"%>
<html>
<title>calculator</title>
<head><h1><center>Basic Calculator</center></h1></head>
<body>
<%
    // Declare initial value
    double initialValue;
    boolean initialIsInfinity = new Boolean("false");
    
    // Set initial value to result
    if("Infinity".equals(request.getParameter("result"))){
        initialValue = 0.0;
        initialIsInfinity = true;
    }else if(request.getParameter("result") != null && !request.getParameter("result").isEmpty()){
        initialValue = Double.parseDouble(request.getParameter("result"));
    }else{
        initialValue = 0.0;
    }
%>
<center>
<%  if(initialIsInfinity == true){  %>
        <h2>Not a number</h2>
        <h2>Reseted</h2>
<%  }   %>

<form action="calculator.jsp" method="get">
<table border="1">
    <col width=50%><col width=50%>
    <tbody>
        <tr>
            <!-- Number fields. -->
            <td colspan="2"><input type="number" step="any" name="insertedValue" value="<%=initialValue%>" required></td>
        </tr>
        <tr>
            <!-- Operation field. -->
            <td><button name="operation" type="submit" value="addition" style="width: 100%">+</button></td>
            <td><button name="operation" type="submit" value="subtraction" style="width: 100%">-</button></td>
        </tr>
        <tr>
            <td><button name="operation" type="submit" value="multiplication" style="width: 100%">&times</button></td>
            <td><button name="operation" type="submit" value="division" style="width: 100%">&divide</button></td>
        </tr>
        <tr>
            <td colspan="2"><button value="submit" name="operation" type="submit" style="width: 100%">=</button></td>
        </tr>
    </tbody>
</table>


<!-- Operation field. -->

<input type="hidden" name="initialValue" value="<%=initialValue%>">
</center>

</body>
</html>