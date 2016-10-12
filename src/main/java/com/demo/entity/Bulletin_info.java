package com.demo.entity;

import java.util.Date;

public class Bulletin_info {
    private String ID;

    private String CONTENT;

    private Date ADD_DATE;

    private String CREATOR;

    public String getID() {
        return ID;
    }

    public void setID(String ID) {
        this.ID = ID == null ? null : ID.trim();
    }

    public String getCONTENT() {
        return CONTENT;
    }

    public void setCONTENT(String CONTENT) {
        this.CONTENT = CONTENT == null ? null : CONTENT.trim();
    }

    public Date getADD_DATE() {
        return ADD_DATE;
    }

    public void setADD_DATE(Date ADD_DATE) {
        this.ADD_DATE = ADD_DATE;
    }

    public String getCREATOR() {
        return CREATOR;
    }

    public void setCREATOR(String CREATOR) {
        this.CREATOR = CREATOR == null ? null : CREATOR.trim();
    }
}