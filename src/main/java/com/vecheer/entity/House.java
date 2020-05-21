package com.vecheer.entity;

import java.io.Serializable;

/**
 * 房屋实体类
 * @author Vecheer
 */
public class House implements Serializable {
    private static final long serialVersionUID = 568264311660764214L;
    
    private Integer nid;
    
    private String nname;
    
    private Integer bid;
    
    private Integer hfloor;
    
    private String hidnum;
    
    private Integer harea;
    
    private String hdesign;
    
    private String hrented;
    
    private String howner;
    
    private String hownerphonenum;


    public Integer getNid() {
        return nid;
    }

    public void setNid(Integer nid) {
        this.nid = nid;
    }

    public String getNname() {
        return nname;
    }

    public void setNname(String nname) {
        this.nname = nname;
    }

    public Integer getBid() {
        return bid;
    }

    public void setBid(Integer bid) {
        this.bid = bid;
    }

    public Integer getHfloor() {
        return hfloor;
    }

    public void setHfloor(Integer hfloor) {
        this.hfloor = hfloor;
    }

    public String getHidnum() {
        return hidnum;
    }

    public void setHidnum(String hidnum) {
        this.hidnum = hidnum;
    }

    public Integer getHarea() {
        return harea;
    }

    public void setHarea(Integer harea) {
        this.harea = harea;
    }

    public String getHdesign() {
        return hdesign;
    }

    public void setHdesign(String hdesign) {
        this.hdesign = hdesign;
    }

    public String getHrented() {
        return hrented;
    }

    public void setHrented(String hrented) {
        this.hrented = hrented;
    }

    public String getHowner() {
        return howner;
    }

    public void setHowner(String howner) {
        this.howner = howner;
    }

    public String getHownerphonenum() {
        return hownerphonenum;
    }

    public void setHownerphonenum(String hownerphonenum) {
        this.hownerphonenum = hownerphonenum;
    }

    @Override
    public String toString() {
        return "House{" +
                "nid=" + nid +
                ", nname='" + nname + '\'' +
                ", bid=" + bid +
                ", hfloor=" + hfloor +
                ", hidnum='" + hidnum + '\'' +
                ", harea=" + harea +
                ", hdesign='" + hdesign + '\'' +
                ", hrented='" + hrented + '\'' +
                ", howner='" + howner + '\'' +
                ", hownerphonenum='" + hownerphonenum + '\'' +
                '}';
    }
}