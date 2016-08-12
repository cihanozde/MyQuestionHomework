<%@page import="org.cihan.Question"%>
<%@page import="java.util.ArrayList"%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Question List</title>
</head>
<body>
<%ArrayList<Question> qList = (ArrayList<Question>)session.getAttribute("qlist"); %>
<h2>Your Question Saved!!</h2>


<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}
.emre {
    font-family: Impact, Charcoal;
    border-collapse: collapse;
    width: 100%;
}
td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}
</style>
</head>
<body>

<table class="table">
  <tr class="emre">
    <th>Title</th>
    <th>Text</th>
    <th>Score</th>
    <th>Date</th>
  </tr>
  <%for(Question q : qList) {%>
  <tr>
    <td><%=q.getTitle() %></td>
    <td><%=q.getText() %></td>
    <td><%=q.getScore() %></td>
    <td><%=q.getDate() %></td>  
  </tr>
  <%} %>
</table>


</body>
</html>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">