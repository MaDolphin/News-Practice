package com.demo.entity;

import java.util.Date;

public class Company {
    private String ID;

    private String NAME;

    private String FUNDS;

    private String TEL;

    private String ADDRESS;

    private String SCALE;

    private String INDUSTRY;

    private String DESCRIPTION;

    private Date ADD_DATE;

    public String getID() {
        return ID;
    }

    public void setID(String ID) {
        this.ID = ID == null ? null : ID.trim();
    }

    public String getNAME() {
        return NAME;
    }

    public void setNAME(String NAME) {
        this.NAME = NAME == null ? null : NAME.trim();
    }

    public String getFUNDS() {
        return FUNDS;
    }

    public void setFUNDS(String FUNDS) {
        this.FUNDS = FUNDS == null ? null : FUNDS.trim();
    }

    public String getTEL() {
        return TEL;
    }

    public void setTEL(String TEL) {
        this.TEL = TEL == null ? null : TEL.trim();
    }

    public String getADDRESS() {
        return ADDRESS;
    }

    public void setADDRESS(String ADDRESS) {
        this.ADDRESS = ADDRESS == null ? null : ADDRESS.trim();
    }

    public String getSCALE() {
        return SCALE;
    }

    public void setSCALE(String SCALE) {
        this.SCALE = SCALE == null ? null : SCALE.trim();
    }

    public String getINDUSTRY() {
        return INDUSTRY;
    }

    public void setINDUSTRY(String INDUSTRY) {
        this.INDUSTRY = INDUSTRY == null ? null : INDUSTRY.trim();
    }

    public String getDESCRIPTION() {
        return DESCRIPTION;
    }

    public void setDESCRIPTION(String DESCRIPTION) {
        this.DESCRIPTION = DESCRIPTION == null ? null : DESCRIPTION.trim();
    }

    public Date getADD_DATE() {
        return ADD_DATE;
    }

    public void setADD_DATE(Date ADD_DATE) {
        this.ADD_DATE = ADD_DATE;
    }
}