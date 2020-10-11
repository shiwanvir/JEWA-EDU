<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
</head>
<body>
	<h2>Hi ${pageContext.request.userPrincipal.name} , Welcome to System</h2>
	<a href="/login">Login</a> <br><br>
	<a href="/student-registration">Create Account</a>
	
	
	<c:if test="${pageContext.request.userPrincipal.principal.user.userType == 'ADMIN'}">
 		<a href="/admin-dashboard">Admin Dashboard </a>
	</c:if>
	
	<c:if test="${pageContext.request.userPrincipal.principal.user.userType == 'STUDENT'}">
 		<br>
 		<a href="/student-dashboard">Student Dashboard </a> 		
	</c:if>
	
	<c:if test="${pageContext.request.userPrincipal.principal.user.userType == 'LECTURE'}">
 		<br>
 		<a href="/lecture-dashboard">Lecture Dashboard </a> 		
	</c:if>
		<c:if test="${pageContext.request.userPrincipal.principal.user.userType == 'ADMIN-LECTURE'}">
 		<a href="/admin-lecture-dashboard">Admin Dashboard </a>
	</c:if>
		<c:if test="${pageContext.request.userPrincipal.principal.user.userType == 'ADMIN_LIBRARY'}">
 		<a href="/admin-library-dashboard">Admin Dashboard </a>
	</c:if>
	
	<c:if test="${pageContext.request.userPrincipal != null}"> 		
 		<br>
 		<a href="/e-library">e - library</a>
	</c:if>
	
	
</body>
</html>