<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Scope session, application and page context </title>
</head>
<body>

<% 
String username = request.getParameter("username");
String sfound = "";
if (username != null) {
	session.setAttribute("sessionUserName", username);
	//application.setAttribute("applicationUserName", username);
	pageContext.setAttribute("pageContextUserName", username);
	pageContext.setAttribute("applicationUserName", username, PageContext.SESSION_SCOPE);

}
%>

<br />
User name in the request object is: <%=username%>
<br />
User name in the session object is: <%=session.getAttribute("sessionUserName")%>
<br />
User name in the application context object is: <%=application.getAttribute("applicationUserName")%>'
<br />
User name in the application context object is: <%=pageContext.getAttribute("pageContextUserName")%>
<br />
Found user name is: <%=pageContext.findAttribute("applicationUserName")%>
</body>
</html>