<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Confirmation</title>
<%
		//read from data
		String favlang = request.getParameter("favlang");
		
		//create the cookie
		Cookie theCookie = new Cookie("myweb.favlang",favlang);
		
		//set the life span...total number of seconds (yuk!)
		theCookie.setMaxAge(60*60*24*365);
		
		//send cookie to browser
		response.addCookie(theCookie);
	
	%>
</head>
	<body>
		Thanks ! We set your favorite Language to : ${param.favlang}
		
		<br><br>
		<hr>
		<a href="Cookies-homepage.jsp">Return to Home Page....</a>
</body>
</html>