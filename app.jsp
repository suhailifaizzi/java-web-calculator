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
<table border="1">
    <col width=50%><col width=50%>
    <tbody>
        <tr>
            <!-- Number fields. -->
            <td colspan="2"><input type="text" name="insertedValue" value="<%=initialValue%>" required></td>
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