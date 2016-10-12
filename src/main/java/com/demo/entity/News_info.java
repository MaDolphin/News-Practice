package com.demo.entity;

import java.util.Date;

public class News_info {
    private String ID;

    private String TITLE;

    private String CONTENT;

    private Date ADD_DATE;

    private String USER_ID;

    private String TYPOE;

    private String PHOTO;

    public String getID() {
        return ID;
    }

    public void setID(String ID) {
        this.ID = ID == null ? null : ID.trim();
    }

    public String getTITLE() {
        return TITLE;
    }

    public void setTITLE(String TITLE) {
        this.TITLE = TITLE == null ? null : TITLE.trim();
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

    public String getUSER_ID() {
        return USER_ID;
    }

    public void setUSER_ID(String USER_ID) {
        this.USER_ID = USER_ID == null ? null : USER_ID.trim();
    }

    public String getTYPOE() {
        return TYPOE;
    }

    public void setTYPOE(String TYPOE) {
        this.TYPOE = TYPOE == null ? null : TYPOE.trim();
    }

    public String getPHOTO() {
        return PHOTO;
    }

    public void setPHOTO(String PHOTO) {
        this.PHOTO = PHOTO == null ? null : PHOTO.trim();
    }
}