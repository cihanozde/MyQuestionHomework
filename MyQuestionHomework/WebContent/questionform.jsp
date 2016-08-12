<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Question Form with JSP</title>
</head>
<body>
<%	String name = "Cihan";
	SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy hh:mm:ss");
	
	Date sysDate = new Date();
	String message = "HALO! " + name.toUpperCase() + sdf.format(sysDate);%>
<%= message %>

	<h1>Ask me a Question!!!</h1>
	<form action="/OzSample/question" method="post">
		Question Title:</br>
		<input type="text" name="title"></br>
		Question Detail:</br>
		<textarea rows="10" cols="10" name="text"></textarea>
	<br/>
	<select name="score">
	  <option value="1">1</option>
	  <option value="2">2</option>
	  <option value="3">3</option>
	  <option value="4">4</option>
	</select>
		<input type="submit" value="OK">
	</form>

</body>
</html>