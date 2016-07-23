package services;

import models.Team;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.xml.registry.infomodel.User;
import java.util.List;

/**
 * Created by horbachevsky on 18.07.2016.
 */
@Stateless
public class TeamService {

    @PersistenceContext(unitName = "footballData")
    private EntityManager em;

    public List<Team> getAll() {
        TypedQuery<Team> query = em.createQuery("select u from Team as u order by u.points desc", Team.class);
        return query.getResultList();
    }

    public Team getTeam(Integer id) {
        return em.find(Team.class, id);
    }

    public void updateTeam(Team team) {
        Team t = em.find(Team.class, team.getId());
        if (t != null) {
            em.merge(team);
        }
    }

    public void deleteTeam(Team team) {
        team = em.find(Team.class, team.getId());
        if (team != null) {
            em.remove(team);
        }
    }

    public void addTeam(Team team) {
        em.persist(team);
    }
}



