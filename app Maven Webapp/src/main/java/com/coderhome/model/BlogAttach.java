package com.coderhome.model;

import java.util.Date;

public class BlogAttach {
    private Integer id;

    private String attachname;

    private String attachdir;

    private String uuidname;

    private String type;

    private Integer uploaduser;

    private Date uploadtime;

    private String status;

    private Date audittime;

    private String reason;

    private Integer audituser;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getAttachname() {
        return attachname;
    }

    public void setAttachname(String attachname) {
        this.attachname = attachname == null ? null : attachname.trim();
    }

    public String getAttachdir() {
        return attachdir;
    }

    public void setAttachdir(String attachdir) {
        this.attachdir = attachdir == null ? null : attachdir.trim();
    }

    public String getUuidname() {
        return uuidname;
    }

    public void setUuidname(String uuidname) {
        this.uuidname = uuidname == null ? null : uuidname.trim();
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public Integer getUploaduser() {
        return uploaduser;
    }

    public void setUploaduser(Integer uploaduser) {
        this.uploaduser = uploaduser;
    }

    public Date getUploadtime() {
        return uploadtime;
    }

    public void setUploadtime(Date uploadtime) {
        this.uploadtime = uploadtime;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    public Date getAudittime() {
        return audittime;
    }

    public void setAudittime(Date audittime) {
        this.audittime = audittime;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason == null ? null : reason.trim();
    }

    public Integer getAudituser() {
        return audituser;
    }

    public void setAudituser(Integer audituser) {
        this.audituser = audituser;
    }
}