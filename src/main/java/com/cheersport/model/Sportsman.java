package com.cheersport.model;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.format.DateTimeFormatter;
import javax.persistence.*;
import java.io.Serializable;
import java.math.BigInteger;
import java.time.LocalDate;
import java.util.Date;
import java.util.Objects;

@Entity
@Embeddable
@Table(name = "sportsman")
public class Sportsman {
    @Id
    @Column(name = "sportsmanid")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "name")
    private String name;

    @Temporal(TemporalType.DATE)
    @Column(name = "birthday")
    private Date birthday;

    @Column(name = "place")
    private String place;

    @Column(name = "rank")
    private String rank;

    @Column(name = "teamid")
    private int teamId;

    @Column(name = "agect")
    private String agect;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBirthdayText() {
        if (birthday == null)
            return null;

        return new SimpleDateFormat("yyyy-MM-dd").format(birthday);
    }

    public void setBirthdayText(String birthdayText) throws ParseException {
        this.birthday = new SimpleDateFormat("yyy-MM-dd").parse(birthdayText);
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place;
    }

    public String getRank() {
        return rank;
    }

    public void setRank(String rank) {
        this.rank = rank;
    }

    public int getTeamId() {
        return teamId;
    }

    public void setTeamId(int teamId) {
        this.teamId = teamId;
    }

    public String getAgect() {
        return agect;
    }

    public void setAgect(String agect) {
        this.agect = agect;
    }

    @Override
    public String toString() {
        return "Sportsman{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", birthday=" + birthday +
                ", place='" + place + '\'' +
                ", rank='" + rank + '\'' +
                ", teamId=" + teamId +
                ", agect='" + agect + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Sportsman sportsman = (Sportsman) o;
        return Objects.equals(id, sportsman.id) &&
                Objects.equals(name, sportsman.name) &&
                Objects.equals(birthday, sportsman.birthday) &&
                Objects.equals(place, sportsman.place) &&
                Objects.equals(rank, sportsman.rank) &&
                Objects.equals(teamId, sportsman.teamId) &&
                Objects.equals(agect, sportsman.agect);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, birthday, place, rank, teamId, agect);
    }
}
