<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<jsp:useBean id="user" class="org.shirlene.user.UserData" scope="session"></jsp:useBean>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Next Page....</title>
</head>
<body>
<!--  Hello, < %= session.getAttribute( "theName") %> ( < %=session.getAttribute("theAge") %> )-->
You entered<br/>
Name: <%= user.getUsername() %><br/>
Email: <%= user.getEmail() %><br/>
Age: <%= user.getAge() %><br/>
</body>
</html>