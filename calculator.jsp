<%@ page import="java.util.*" %>
<%@ page import="java.io.*"%>
<%
    // Declare and initialize numbers
	double insertedValue;
	double initialValue = Double.parseDouble(request.getParameter("initialValue"));
	// If passed value have value, capture into passedValue
    if(request.getParameter("insertedValue") != null){
		insertedValue = Double.parseDouble(request.getParameter("insertedValue"));
	}else{
		insertedValue=0;
	}
	double result;
	
    // Capture operation passed by parameter
	String operation = request.getParameter("operation");
	
	// Initial value = 0, skip operation pass inserted value
	if(initialValue==0){
		result = insertedValue;
	}
	// Addition operation
	else if(operation.equals("addition")){
		result = initialValue + insertedValue;
	}
	// Subtract operation
	else if(operation.equals("subtraction")){
		result = initialValue-insertedValue;
	}
	// Multiply operation
	else if(operation.equals("multiplication")){
		result = initialValue*insertedValue;
	}
	// Division operation
	else if(operation.equals("division")){
		result = initialValue/insertedValue;
	}
	// In case where equals is clicked
	else{
		result = insertedValue;
	}

	// Redirect back to calculator UI
	String redirectURL = "http://localhost:8080/java-web-calculator/app.jsp?result=" + result;
	response.sendRedirect(redirectURL);
%>