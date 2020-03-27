package com.example.website.entity;

public class ItemResearchWithBLOBs extends ItemResearch {
    private String projectimage;

    private String projectabstract;

    private String more;

    public String getProjectimage() {
        return projectimage;
    }

    public void setProjectimage(String projectimage) {
        this.projectimage = projectimage == null ? null : projectimage.trim();
    }

    public String getProjectabstract() {
        return projectabstract;
    }

    public void setProjectabstract(String projectabstract) {
        this.projectabstract = projectabstract == null ? null : projectabstract.trim();
    }

    public String getMore() {
        return more;
    }

    public void setMore(String more) {
        this.more = more == null ? null : more.trim();
    }
}