<%@page import="java.util.List" %>

<%@ page import="models.Team" %>
<%@ page import="java.util.ArrayList" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}js/jquery-3.1.0.js" rel="script">
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
            <a href="allteams/<%= team.getId() %>"><%= team.getName()%></a>
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



<form action="" method="post" class="form-group">
    <div class="form-group">
        <label for="teamName">Name</label>
        <input type="text" name="name" class="form-control" id="teamName"/>
        <input type="hidden" name="id">
    </div>
    <div class="form-group">
        <label for="teamPoints">Points</label>
        <input type="text" name="points" class="form-control" id="teamPoints"/>
    </div>

    <button type="submit" class="btn btn-default">Add Team</button>


<%--<table class="table">--%>
        <%--<tr>--%>
            <%--<td>Team Name</td>--%>
            <%--<td>--%>
                <%--<input name="name" value='' type='text'/>--%>
            <%--</td>--%>
        <%--</tr>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td>Points</td>--%>
            <%--<td>--%>
                <%--<input type="text" name="points" value=""/>--%>
                <%--<input type="hidden" name="id" value=""/>--%>
            <%--</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td colspan="2" align="center">--%>
                <%--<input type="submit" name="submit" value="Add Team"/>--%>
            <%--</td>--%>
        <%--</tr>--%>
    <%--</table>--%>
</form>

</body>
</html>
