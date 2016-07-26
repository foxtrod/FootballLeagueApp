package models;

import javax.persistence.*;

/**
 * Created by horbachevsky on 20.07.2016.
 */
@Entity
@Table(name = "teams", schema = "", catalog = "football")
public class Team {
    private int id;
    private String name;
    private Integer points;

    public Team() {

    }

    public Team(Integer id, String name, Integer points) {
        this.id = id;
        this.name = name;
        this.points = points;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "name")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "points")
    public Integer getPoints() {
        return points;
    }

    public void setPoints(Integer points) {
        this.points = points;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Team that = (Team) o;

        if (id != that.id) return false;
        if (name != null ? !name.equals(that.name) : that.name != null) return false;
        if (points != null ? !points.equals(that.points) : that.points != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (points != null ? points.hashCode() : 0);
        return result;
    }
}
