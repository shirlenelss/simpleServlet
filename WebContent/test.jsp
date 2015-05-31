<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title>
</head>
<body>
<h3>test jsp</h3>
<%! 
public int add(int a, int b) {
	return a + b;
}
%>
<% 
int i = 1;
int j = 2;
int sum = i +j;

out.println("Value of sum is "+ sum);
out.println("<br>Value of sum 1 is "+ add(10,3244656));

%>

 <br />
Value of sum is:  <%=sum %> <br />
Divided i over j is <%=i/j%>
</body>
</html>