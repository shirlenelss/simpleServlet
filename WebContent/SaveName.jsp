<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<jsp:useBean id="user" class="org.shirlene.user.UserData" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="user"/>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Save Name</title>
</head>
<body>
<!-- < %
   String name = request.getParameter( "username" );
   session.setAttribute( "theName", name );
   
   String age = request.getParameter( "age" );
   session.setAttribute( "theAge", age );
%> -->
<a href="NextPage.jsp">Continue</a>
</body>
</html>