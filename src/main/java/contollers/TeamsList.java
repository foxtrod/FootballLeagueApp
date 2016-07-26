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
 * Created by horbachevsky on 26.07.2016.
 */
@WebServlet(name = "teamList", urlPatterns = {"/allteams"})
public class TeamsList extends HttpServlet {

    @EJB
    private TeamService teamService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws
            IOException, ServletException {
        List<Team> teams = teamService.getAll();
        request.setAttribute("teams", teams);

        request.getRequestDispatcher("/AllTeams.jsp").forward(request, response);
    }
}
