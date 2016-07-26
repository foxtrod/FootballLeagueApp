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
    <title>Team</title>
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
</head>
<body>

<table>
    <tr>
        <td><a href="WelcomePage">Home</a></td>
        <td><a href="allteams">All Teams</a></td>
    </tr>
</table>

<% Team team = (Team) request.getAttribute("team"); %>

<form action="team" method="post">
    <table class="table">
        <tr>
            <td>Team Name</td>
            <td>
                <input name="teamName" value='<%= team.getName() %>' type='text'/>
            </td>
        </tr>
        </tr>
        <tr>
            <td>Points</td>
            <td>
                <input type="text" name="teamPoints" value="<%= team.getPoints() %>"/>
                <input type="hidden" name="teamID" value="<%= team.getId() %>"/>
            </td>
        </tr>
        <tr>
            <td colspan='2' align='center'>
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

<%--<form class="form-inline" action="team" method="get">--%>
    <%--<div class="form-group">--%>
        <%--<label for="Team Name">Name</label>--%>
        <%--<input type="text" class="form-control" id="Team Name" value="<%=team.getName()%>" placeholder="<%= team.getName() %>">--%>
    <%--</div>--%>
    <%--<div class="form-group">--%>
        <%--<label for="Team Points">Points</label>--%>
        <%--<input type="number" class="form-control" id="Team Points" value="<%= team.getPoints() %>" placeholder="<%= team.getPoints() %>">--%>
    <%--</div>--%>
    <%--<button type="submit" class="btn btn-default" name="submit" value="Add Team">Add team</button>--%>
    <%--<button type="submit" class="btn btn-default" name="submit" value="Delete Team">Delete Team</button>--%>
    <%--<button type="submit" class="btn btn-default" name="submit" value="Update Team">Update Team</button>--%>
    <%--<button type="submit" class="btn btn-default" name="submit" value="Get Team">Get Team</button>--%>
<%--</form>--%>

</body>
</html>

                           