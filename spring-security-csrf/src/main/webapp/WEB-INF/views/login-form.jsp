<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Login Page</title>
</head>

<body onload='document.f.username.focus();'>

<h3>Login with Username and Password</h3>

<c:if test="${not empty error}">
	<div class="error">${error}</div>
	</c:if>
	
<c:if test="${not empty msg}">
	<div class="msg">${msg}</div>
</c:if>
		
<form name='f' action="<c:url value='j_spring_security_check' />" method='POST'>
 <table>
    <tr><td>User:</td><td><input type='text' name='username' value=''></td></tr>
    <tr><td>Password:</td><td><input type='password' name='password'/></td></tr>
    <tr><td colspan='2'><input name="submit" type="submit" value="Login"/></td></tr>
  </table>
   <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
</form>

<!-- <body onload='document.f.j_username.focus();'></body> -->
</body>
</html>