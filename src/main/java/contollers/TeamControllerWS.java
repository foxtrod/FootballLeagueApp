package contollers;

import models.Team;
import services.TeamService;

import javax.inject.Inject;
import javax.json.Json;
import javax.json.JsonArray;
import javax.json.JsonArrayBuilder;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.text.View;
import javax.ws.rs.*;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.List;

/**
 * Created by horbachevsky on 28.07.2016.
 */
@Path("/allteams")
public class TeamControllerWS {

    @Inject
    private TeamService teamService;

    @Path("/")
    @GET
    @Produces("text/HTML")
    public void getAll(@Context HttpServletRequest request,
                       @Context HttpServletResponse response) throws ServletException,
            IOException {
        List<Team> teams = teamService.getAll();

        request.setAttribute("teams", teams);
        request.getRequestDispatcher("/AllTeams.jsp").forward(request, response);
    }

    @Path("/")
    @POST
    @Produces(MediaType.TEXT_HTML)
    public void addTeam(@Context HttpServletRequest request,
                            @Context HttpServletResponse response,
                            @FormParam("name") String name,
                            @FormParam("points") Integer points)
            throws ServletException, IOException {
            teamService.addTeam(new Team(name, points));
    }

    @Path("{id}")
    @GET
    @Produces("text/HTML")
    public void getTeam(@PathParam("id") Integer id, @Context HttpServletRequest request, @Context HttpServletResponse response)
            throws IOException, ServletException {
        Team team = teamService.getTeam(id);
        request.setAttribute("team", team);

        request.getRequestDispatcher("/TeamDetails.jsp").forward(request, response);
    }

    @Path("{id}")
    @POST
    @Produces(MediaType.TEXT_HTML)
    public Response updateTeam(@PathParam("id") Integer id,
                               @FormParam("name") String name,
                               @FormParam("points") Integer points,
                               @FormParam("submit") String submit,
                               @Context HttpServletRequest request,
                               @Context Response response)
            throws IOException, ServletException, URISyntaxException, MalformedURLException {

        if (submit.equals("Update Team")) {
            Team team = teamService.getTeam(id);
            team.setName(name);
            team.setPoints(points);
            teamService.updateTeam(team);
        } else if (submit.equals("Delete Team")) {
            teamService.deleteTeam(id);
        }

        URI redirect = new URI("/SilNet/football/allteams");
        throw new WebApplicationException(Response.seeOther(redirect).build());
    }

    @Path("/Json")
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public JsonArray getTeams() {
        JsonArrayBuilder builder = Json.createArrayBuilder();
        for (Team team : teamService.getAll()) {
            builder.add(Json.createObjectBuilder().add("name", team.getName()));
            builder.add(Json.createObjectBuilder().add("points", team.getPoints()));
        }
        return builder.build();
    }
}
