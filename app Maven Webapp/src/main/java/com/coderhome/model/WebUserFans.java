package com.coderhome.model;

import java.util.Date;

public class WebUserFans {
    private Integer id;

    private Integer masterid;

    private Integer funsid;

    private String status;

    private Date focustime;

    private Date unfocustime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getMasterid() {
        return masterid;
    }

    public void setMasterid(Integer masterid) {
        this.masterid = masterid;
    }

    public Integer getFunsid() {
        return funsid;
    }

    public void setFunsid(Integer funsid) {
        this.funsid = funsid;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    public Date getFocustime() {
        return focustime;
    }

    public void setFocustime(Date focustime) {
        this.focustime = focustime;
    }

    public Date getUnfocustime() {
        return unfocustime;
    }

    public void setUnfocustime(Date unfocustime) {
        this.unfocustime = unfocustime;
    }
}