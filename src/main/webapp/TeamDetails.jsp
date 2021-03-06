<%--
  Created by IntelliJ IDEA.
  User: horbachevsky
  Date: 21.07.2016
  Time: 15:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="models.Team" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Team</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css"/>
   <link rel="script" href="${pageContext.request.contextPath}/js/jquery-3.1.0.js">
</head>
<body>

<table>
    <tr>
        <td><a href="WelcomePage">Home</a></td>
        <td><a href="allteams">All Teams</a></td>
    </tr>
</table>

<% Team team = (Team) request.getAttribute("team"); %>

<form action="" method="post" class="form-group">
    <div class="form-group">
        <label for="teamName">Name</label>
        <input type="text" name="name" class="form-control" id="teamName" placeholder="<%= team.getName()%>"/>
        <input type="hidden" name="id">
    </div>
    <div class="form-group">
        <label for="teamPoints">Points</label>
        <input type="text" name="points" class="form-control" id="teamPoints" placeholder="<%= team.getPoints()%>"/>
    </div>

    <button type="submit" name="submit" value="Delete Team" class="btn btn-default">Delete Team</button>
    <button type="submit" name="submit" value="Update Team" class="btn btn-default">Update Team</button>



</body>
</html>

                    