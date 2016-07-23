<%--
  Created by IntelliJ IDEA.
  User: horbachevsky
  Date: 21.07.2016
  Time: 15:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="models.Team" %>
<%@ page import="contollers.TeamController" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Team></title>
</head>
<body>

<table>
    <tr>
        <td><a href="WelcomePage">Home</a></td>
        <td><a href="allteams">All Teams</a></td>
    </tr>
</table>

<% Team team = (Team) request.getAttribute("team"); %>

<form action="team" method="get">
    <table>
        <tr>
            <td>Team Name</td>
            <td>
                <input name="teamName" value='<%= team.getName() %>' type='text'/>
            </td>
        </tr>
        <tr>
            <td>ID</td>
            <td>
                <input type="text" name="teamID" value="<%= team.getId() %>"/>
            </td>
        </tr>
        <tr>
            <td>Points</td>
            <td>
                <input type="text" name="teamPoints" value="<%= team.getPoints() %>"/>
            </td>
        </tr>
        <tr>
            <td colspan='2' align='center'>
                <input name="submit" value="Get Team" type='submit'/>
                <input type="submit" value="Update Team" name="submit"/>
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

                           