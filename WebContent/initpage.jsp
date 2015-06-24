<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>init page showing initparams</title>
</head>
<body>
The default user from the servlet config is :
<%=getServletConfig().getInitParameter("defaultUser")%>
<br /> The time is now <%= new java.util.Date() %>
<br /> <%=System.getProperty("java.version") %>
<br /> <%=System.getProperty("java.home") %>
<br /> <%=System.getProperty("os.name") %>
<br /> <%=System.getProperty("user.name") %>
<br /> <%=System.getProperty("user.home") %>
<br /> <%=System.getProperty("user.dir") %>
<br /> Your IP is  <%=request.getRemoteHost()%>
<br /> AuthType is <%=request.getAuthType()%>
<jsp:forward page="scopeObjects.jsp"/>

</body>
</html>