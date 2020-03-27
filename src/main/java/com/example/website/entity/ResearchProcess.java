package com.example.website.entity;

import java.util.Date;

public class ResearchProcess {
    private Integer id;

    private Integer navigationbarid;

    private String content;

    private Date createtime;

    private Date updatetime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getNavigationbarid() {
        return navigationbarid;
    }

    public void setNavigationbarid(Integer navigationbarid) {
        this.navigationbarid = navigationbarid;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public Date getUpdatetime() {
        return updatetime;
    }

    public void setUpdatetime(Date updatetime) {
        this.updatetime = updatetime;
    }
}