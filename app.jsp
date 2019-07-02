<html>
<title>calculator</title>
<head><h1><center>Basic Calculator</center></h1></head>
<body>
<center>
<form action="calculator.jsp" method="get">

<!-- Number fields. -->
<%
if
%>
<label for="num1"><b>Number 1</b></label>
<input type="text" name ="num1" required><br><br>
<label for = "num2"><b>Number 2</b></label>
<input type="text" name="num2" required><br><br>

<!-- Operation field. -->
<input type ="radio" name = "r1" value="Add">+ 
<input type = "radio" name = "r1" value="Sub">-<br>
<input type="radio" name="r1" value ="mul">* 
<input type = "radio" name="r1" value="div">/<br><br>

<input type="submit" value="submit">
</center>

</body>
</html>