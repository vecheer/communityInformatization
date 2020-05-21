package com.vecheer.entity;

import java.io.Serializable;

/**
 * 小区信息实体
 * @author Vecheer
 */
public class Neighborhood implements Serializable {
    //小区编号
    private Integer nid;
    //小区名称
    private String nname;
    //小区楼栋数
    private Integer nbuildingnum;
    //小区房间数
    private Integer nhousenum;
    //小区户口数
    private Integer nfamilynum;
    //小区居民数
    private Integer nresidentnum;

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

    public Integer getNbuildingnum() {
        return nbuildingnum;
    }

    public void setNbuildingnum(Integer nbuildingnum) {
        this.nbuildingnum = nbuildingnum;
    }

    public Integer getNhousenum() {
        return nhousenum;
    }

    public void setNhousenum(Integer nhousenum) {
        this.nhousenum = nhousenum;
    }

    public Integer getNfamilynum() {
        return nfamilynum;
    }

    public void setNfamilynum(Integer nfamilynum) {
        this.nfamilynum = nfamilynum;
    }

    public Integer getNresidentnum() {
        return nresidentnum;
    }

    public void setNresidentnum(Integer nresidentnum) {
        this.nresidentnum = nresidentnum;
    }

    @Override
    public String toString() {
        return "Neighborhood{" +
                "nid=" + nid +
                ", nname='" + nname + '\'' +
                ", nbuildingnum=" + nbuildingnum +
                ", nhousenum=" + nhousenum +
                ", nfamilynum=" + nfamilynum +
                ", nresidentnum=" + nresidentnum +
                '}';
    }
}
