package contollers;

import models.Team;
import services.TeamService;

import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by horbachevsky on 18.07.2016.
 */

@WebServlet(name = "TeamController", urlPatterns = {"/allteams", "/team"})
public class TeamController extends HttpServlet {

    @EJB
    private TeamService teamService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws
            IOException, ServletException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws
            IOException, ServletException {
        processRequest(request, response);
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws
            IOException, ServletException {

        String path = request.getServletPath();

        if (path.equals("/team")) {

            String id = request.getParameter("teamID");
            String name = request.getParameter("teamName");
            String points = request.getParameter("teamPoints");
            String submit = request.getParameter("submit");

            if (submit.equals("Get Team")) {
                Team team = teamService.getTeam(Integer.valueOf(id));
                request.setAttribute("team", team);
            } else if (submit.equals("Update Team")) {
                teamService.updateTeam(new Team(Integer.valueOf(id), name, Integer.valueOf(points)));
                Team team = teamService.getTeam(Integer.valueOf(id));
                request.setAttribute("team", team);
            } else if (submit.equals("Delete Team")) {
                teamService.deleteTeam(new Team(Integer.valueOf(id), name, Integer.valueOf(points)));
            } else if (submit.equals("Add Team")) {
                teamService.addTeam(new Team(Integer.valueOf(id), name, Integer.valueOf(points)));
                Team team = teamService.getTeam(Integer.valueOf(id));
                request.setAttribute("team", team);
            }

            RequestDispatcher dispatcher = request.getRequestDispatcher("/TeamDetails.jsp");
            dispatcher.forward(request, response);


        }

        if (path.equals("/allteams")) {

            List<Team> teams = teamService.getAll();
            request.setAttribute("teams", teams);

            RequestDispatcher dispatcher = request.getRequestDispatcher("/AllTeams.jsp");
            dispatcher.forward(request, response);

        }

    }
}
