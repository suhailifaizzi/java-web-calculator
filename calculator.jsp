<html>
<title>calculator</title>
<head></head>
<body>
<%@page language="java"%>
<%
    // Declare and initialize numbers
	int num1;
    if(Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
    int value=0;
	
    // Capture operation passed by parameter
	String operation = request.getParameter("r1");
	
        // Addition operation
		if(operation.equals("Add")){
			value = num1+num2;
		}
        // Subtract operation
		else if(operation.equals("Sub")){
			value = num1-num2;
		}
        // Multiply operation
		else if(operation.equals("mul")){
			value = num1*num2;
		}
        // Division operation
		else if(operation.equals("div")){
			value = num1/num2;
		}

        // Redirect back to calculator UI
        String redirectURL = "http://localhost/calculator.html?value=" + value;
        response.sendRedirect(redirectURL);
%>
</body>
</html>
