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
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
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


<form action="" method="post">
    <table class="table">
        <tr>
            <td>Team Name</td>
            <td>
                <input name="name" value='<%= team.getName() %>' type='text'/>
            </td>
        </tr>
        </tr>
        <tr>
            <td>Points</td>
            <td>
                <input type="text" name="points" value="<%= team.getPoints() %>"/>
                <input type="hidden" name="id" value="<%= team.getId() %>"/>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" name="submit" value="Delete Team"/>
                <input type="submit" name="submit" value="Add Team"/>
            </td>
        </tr>
    </table>
</form>

</body>
</html>

                    