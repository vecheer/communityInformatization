package com.vecheer.entity;

import java.io.Serializable;

/**
 * 小区-居民实体
 * @author Vecheer
 */
public class NResident implements Serializable {
    private Integer rid;
    private String rname;
    private String ridnum;//身份证号
    private Integer nid;//所在小区编号
    private String nname;//所在小区名称
    private Integer bid;//所在楼栋编码
    private String hidnum;//所在房间编号

    public Integer getRid() {
        return rid;
    }

    public void setRid(Integer rid) {
        this.rid = rid;
    }

    public String getRname() {
        return rname;
    }

    public void setRname(String rname) {
        this.rname = rname;
    }

    public String getRidnum() {
        return ridnum;
    }

    public void setRidnum(String ridnum) {
        this.ridnum = ridnum;
    }

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

    public String getHidnum() {
        return hidnum;
    }

    public void setHidnum(String hidnum) {
        this.hidnum = hidnum;
    }

    @Override
    public String toString() {
        return "NResident{" +
                "rid=" + rid +
                ", rname='" + rname + '\'' +
                ", ridnum='" + ridnum + '\'' +
                ", nid=" + nid +
                ", nname='" + nname + '\'' +
                ", bid=" + bid +
                ", hidnum='" + hidnum + '\'' +
                '}';
    }
}
