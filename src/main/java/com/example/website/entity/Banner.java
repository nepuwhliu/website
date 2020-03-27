package com.example.website.entity;

import java.util.Date;

public class Banner {
    private Integer id;

    private String imageone;

    private String imagetwo;

    private String imagethree;

    private String imagefour;

    private String imagefive;

    private Date createtime;

    private Date updatetime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getImageone() {
        return imageone;
    }

    public void setImageone(String imageone) {
        this.imageone = imageone == null ? null : imageone.trim();
    }

    public String getImagetwo() {
        return imagetwo;
    }

    public void setImagetwo(String imagetwo) {
        this.imagetwo = imagetwo == null ? null : imagetwo.trim();
    }

    public String getImagethree() {
        return imagethree;
    }

    public void setImagethree(String imagethree) {
        this.imagethree = imagethree == null ? null : imagethree.trim();
    }

    public String getImagefour() {
        return imagefour;
    }

    public void setImagefour(String imagefour) {
        this.imagefour = imagefour == null ? null : imagefour.trim();
    }

    public String getImagefive() {
        return imagefive;
    }

    public void setImagefive(String imagefive) {
        this.imagefive = imagefive == null ? null : imagefive.trim();
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