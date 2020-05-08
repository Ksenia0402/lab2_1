package com.cheersport.model;

import javax.persistence.*;

@Entity
@Table(name = "takepart")
public class Takepart {
    @Id
    @Column(name = "takepartid")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "clubid")
    private int clubId;

    @Column(name = "competitionid")
    private int competitionId;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Takepart takepart = (Takepart) o;

        if (id != takepart.id) return false;
        if (clubId != takepart.clubId) return false;
        return competitionId == takepart.competitionId;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + clubId;
        result = 31 * result + competitionId;
        return result;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getClubId() {
        return clubId;
    }

    public void setClubId(int clubId) {
        this.clubId = clubId;
    }

    public int getCompetitionId() {
        return competitionId;
    }

    public void setCompetitionId(int competitionId) {
        this.competitionId = competitionId;
    }

    @Override
    public String toString() {
        return "Takepart{" +
                "id=" + id +
                ", clubId=" + clubId +
                ", competitionId=" + competitionId +
                '}';
    }
}
