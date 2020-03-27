package com.example.website.entity;

import java.util.Date;

public class ProcessItemAccumulation {
    private Integer id;

    private Integer processid;

    private Integer itemaccumulationid;

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

    public Integer getItemaccumulationid() {
        return itemaccumulationid;
    }

    public void setItemaccumulationid(Integer itemaccumulationid) {
        this.itemaccumulationid = itemaccumulationid;
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