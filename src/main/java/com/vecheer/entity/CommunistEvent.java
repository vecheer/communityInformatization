package com.vecheer.entity;

import java.io.Serializable;

/**
 * (CommunistEvent)实体类
 *
 * @author makejava
 * @since 2020-05-10 12:02:59
 */
public class CommunistEvent implements Serializable {
    private static final long serialVersionUID = -87596095250852686L;
    
    private Integer ceid;
    
    private String cename;
    
    private String cedate;
    
    private String ceplace;
    
    private String cetheme;
    
    private String cesponsor;
    
    private Integer ceparticipantnum;
    
    private String ceinfo;


    public Integer getCeid() {
        return ceid;
    }

    public void setCeid(Integer ceid) {
        this.ceid = ceid;
    }

    public String getCename() {
        return cename;
    }

    public void setCename(String cename) {
        this.cename = cename;
    }

    public String getCedate() {
        return cedate;
    }

    public void setCedate(String cedate) {
        this.cedate = cedate;
    }

    public String getCeplace() {
        return ceplace;
    }

    public void setCeplace(String ceplace) {
        this.ceplace = ceplace;
    }

    public String getCetheme() {
        return cetheme;
    }

    public void setCetheme(String cetheme) {
        this.cetheme = cetheme;
    }

    public String getCesponsor() {
        return cesponsor;
    }

    public void setCesponsor(String cesponsor) {
        this.cesponsor = cesponsor;
    }

    public Integer getCeparticipantnum() {
        return ceparticipantnum;
    }

    public void setCeparticipantnum(Integer ceparticipantnum) {
        this.ceparticipantnum = ceparticipantnum;
    }

    public String getCeinfo() {
        return ceinfo;
    }

    public void setCeinfo(String ceinfo) {
        this.ceinfo = ceinfo;
    }

    @Override
    public String toString() {
        return "CommunistEvent{" +
                "ceid=" + ceid +
                ", cename='" + cename + '\'' +
                ", cetdate='" + cedate + '\'' +
                ", ceplace='" + ceplace + '\'' +
                ", cetheme='" + cetheme + '\'' +
                ", cesponsor='" + cesponsor + '\'' +
                ", ceparticipantnum=" + ceparticipantnum +
                ", ceinfo='" + ceinfo + '\'' +
                '}';
    }
}