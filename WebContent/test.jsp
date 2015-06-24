<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Test.jsp to show java scriptlet</title>
</head>
<body>
<h3>Test.jsp to show java scriptlet</h3>

<%! 
int i = 1;
int j = 2;
int sum = i +j;
Date theDate = new Date();

public int add(int a, int b) {
	return a + b;
}

public Date getDate()
{    
    return theDate;
}
%>
<br />
Value of sum is:  <%=sum %> <br />
Divided i over j is <%=i/j%>
<br /> The time is now <%= getDate() %>
<% 
out.println("<br>Value of sum is "+ sum);
out.println("<br>Value of sum 1 is "+ add(10,3244656));
%>

<% for (int i =0; i<5; i++){
%>
<br/>The new value is now <%= i %>
<% 
} 
%>

</body>
</html>