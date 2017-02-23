package com.coderhome.model;

public class BlogContentAttach {
    private Integer id;

    private Integer contentid;

    private Integer attachid;

    private String status;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getContentid() {
        return contentid;
    }

    public void setContentid(Integer contentid) {
        this.contentid = contentid;
    }

    public Integer getAttachid() {
        return attachid;
    }

    public void setAttachid(Integer attachid) {
        this.attachid = attachid;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }
}