<%@page import="java.util.List" %>

<%@ page import="models.Team" %>
<%@ page import="java.util.ArrayList" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <title>All Teams</title>
</head>
<body>
<table border='1' cellpadding='4'>
    <tbody>
    <tr>
        <td><a href='WelcomePage'>Home</a></td>
    </tbody>
</table>
<br/>


<table class="table table-bordered">
    <thead>
    <tr>
        <th>Position</th>
        <th>Name</th>
        <th>Points</th>
        <th>ID</th>
    </tr>
    </thead>
    <tbody class="table">
    <%
        List<Team> teams = (List<Team>) request.getAttribute("teams");
        int i = 1;
        for (Team team : teams) {

    %>
    <tr>
        <td>
            <%= i %>
        </td>
        <td>
            <a href="team?teamID=<%= team.getId() %>"><%= team.getName()%></a>
        </td>
        <td>
            <%= team.getPoints()%>
        </td>
        <td>
            <%= team.getId()%>
        </td>
    </tr>
    <%
            i++;
        }
    %>
    </tbody>
</table>

</body>
</html>
