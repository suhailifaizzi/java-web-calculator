<html>
<title>calculator</title>
<head></head>
<body>
<%@page language="java"%>
<%
    // Declare and initialize numbers
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
	
    // Capture operation passed by parameter
	String operation = request.getParameter("r1");
	
        // Addition operation
		if(operation.equals("Add")){
			int add=num1+num2;
			out.println("Addition is: "+add);
		}
        // Subtract operation
		else if(operation.equals("Sub")){
			int sub=num1-num2;
			out.println("Substraction is: "+sub);
		}
        // Multiply operation
		else if(operation.equals("mul")){
			int mul=num1*num2;
			out.println("multiplication is: "+mul);
		}
        // Division operation
		else if(operation.equals("div"))
		{
			int div = num1/num2;
			if(num1>=num2)
				out.println("division is: "+div);
			else
				out.println("The division cannot be performed");
		}
%>
</body>
</html>
