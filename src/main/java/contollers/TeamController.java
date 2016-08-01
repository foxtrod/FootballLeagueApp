//package contollers;
//
//import models.Team;
//import services.TeamService;
//
//import javax.ejb.EJB;
//import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletException;
//import javax.servlet.ServletRegistration;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.IOException;
//import java.util.ArrayList;
//import java.util.List;
//
///**
// * Created by horbachevsky on 18.07.2016.
// */
//
//@WebServlet(name = "TeamController", urlPatterns = {"/team"})
//public class TeamController extends HttpServlet {
//
//    @EJB
//    private TeamService teamService;
//
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws
//            IOException, ServletException {
//
//        if (request.getParameter("teamID") != null) {
//            Integer id = Integer.valueOf(request.getParameter("teamID"));
//            Team team = teamService.getTeam(id);
//
//            request.setAttribute("team", team);
//        }
//        request.getRequestDispatcher("/TeamDetails.jsp").forward(request, response);
//
//    }
//
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws
//            IOException, ServletException {
//
//        String name = request.getParameter("teamName");
//        String points = request.getParameter("teamPoints");
//        String submit = request.getParameter("submit");
//
//
//        if (submit.equals("Update Team")) {
//            Integer id = Integer.valueOf(request.getParameter("teamID"));
//            Team team = teamService.getTeam(id);
//            team.setName(name);
//            team.setPoints(Integer.valueOf(points));
//            teamService.updateTeam(team);
//        } else if (submit.equals("Delete Team")) {
//            teamService.deleteTeam(Integer.valueOf(request.getParameter("teamID")));
//        } else if (submit.equals("Add Team")) {
//            teamService.addTeam(new Team(name, Integer.valueOf(points)));
//        }
//
//        response.sendRedirect("allteams");
//    }
//
//}
