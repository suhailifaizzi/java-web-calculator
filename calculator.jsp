<%@ page import="java.util.*" %>
<%@ page import="java.io.*"%>
<%
    // Declare and initialize numbers
	double insertedValue = 0;
	double initialValue = Double.parseDouble(request.getParameter("initialValue"));
	// If passed value have value, capture into passedValue
    if(request.getParameter("insertedValue") != null){
		insertedValue = Double.parseDouble(request.getParameter("insertedValue"));
	}
	double result;
	
    // Capture operation passed by parameter
	String operation = request.getParameter("r1");
	
        // Addition operation
		if(operation.equals("Add")){
			result = initialValue + insertedValue;
		}
        // Subtract operation
		else if(operation.equals("Sub")){
			result = initialValue-insertedValue;
		}
        // Multiply operation
		else if(operation.equals("mul")){
			result = initialValue*insertedValue;
		}
        // Division operation
		else if(operation.equals("div")){
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