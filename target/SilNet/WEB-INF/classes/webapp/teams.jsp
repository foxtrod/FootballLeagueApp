<%@page import="services.TeamService" %>
<%@ page import="models.Team" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>All Teams</title>
</head>
<body>
<table border='1' cellpadding='4'>
    <tbody>
    <tr>
        <td><a href='TeamController'>All Teams</a></td>
    </tbody>
</table>
<br/>

pizda

<%--<table border="1" cellpadding="4">--%>
    <%--<thead>--%>
    <%--<tr>--%>
        <%--<th>Team ID</th>--%>
        <%--<th>Name</th>--%>
        <%--<th>Points</th>--%>
    <%--</tr>--%>
    <%--</thead>--%>
    <%--<tbody>--%>
    <%--<%--%>
        <%--Team[] teams = (Team[]) request.getAttribute("teams");--%>

        <%--for (Team team: teams) {--%>
    <%--%>--%>
    <%--<tr>--%>
        <%--<td><%= team.getName()%>--%>
        <%--</td>--%>
        <%--<td><%= team.getPoints()%>--%>
        <%--</td>--%>
    <%--</tr>--%>
    <%--<%--%>
        <%--}--%>
    <%--%>--%>
    <%--</tbody>--%>
<%--</table>--%>

</body>
</html>
