<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Helloworld-Java</title>
</head>
<body>
<h2>Hello World Demo @青柳云<h2>

<br>

The random number for this server is: <b>
<%
out.println(session.getId());
out.println("-===-");

Object val = session.getAttribute("randomLong");

if(val == null){
	val = ""+(int)(Math.random()*10000);
	session.setAttribute("randomLong", val);
}
out.println(val);
%>
</b>
</body>
</html>