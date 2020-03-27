package com.example.website.entity;

import java.util.Date;

public class ProcessItemResearch {
    private Integer id;

    private Integer processid;

    private Integer itemresearchid;

    private Date createtime;

    private Date updatetime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getProcessid() {
        return processid;
    }

    public void setProcessid(Integer processid) {
        this.processid = processid;
    }

    public Integer getItemresearchid() {
        return itemresearchid;
    }

    public void setItemresearchid(Integer itemresearchid) {
        this.itemresearchid = itemresearchid;
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