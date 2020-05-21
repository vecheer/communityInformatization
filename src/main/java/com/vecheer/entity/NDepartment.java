package com.vecheer.entity;

import java.io.Serializable;

/**
 * 小区-部门实体
 * @author Vecheer
 */
public class NDepartment implements Serializable {
    private static final long serialVersionUID = -19937754467986902L;
    
    private Integer nid;

    private String nname;
    
    private Integer did;
    
    private String dname;
    
    private String dfunction;
    
    private String ddirector;
    
    private String dduty;
    
    private String ddirectorphonenum;

    public String getNname() {
        return nname;
    }

    public void setNname(String nname) {
        this.nname = nname;
    }

    public Integer getNid() {
        return nid;
    }

    public void setNid(Integer nid) {
        this.nid = nid;
    }

    public Integer getDid() {
        return did;
    }

    public void setDid(Integer did) {
        this.did = did;
    }

    public String getDname() {
        return dname;
    }

    public void setDname(String dname) {
        this.dname = dname;
    }

    public String getDfunction() {
        return dfunction;
    }

    public void setDfunction(String dfunction) {
        this.dfunction = dfunction;
    }

    public String getDdirector() {
        return ddirector;
    }

    public void setDdirector(String ddirector) {
        this.ddirector = ddirector;
    }

    public String getDduty() {
        return dduty;
    }

    public void setDduty(String dduty) {
        this.dduty = dduty;
    }

    public String getDdirectorphonenum() {
        return ddirectorphonenum;
    }

    public void setDdirectorphonenum(String ddirectorphonenum) {
        this.ddirectorphonenum = ddirectorphonenum;
    }

    @Override
    public String toString() {
        return "NDepartment{" +
                "nid=" + nid +
                ", nname='" + nname + '\'' +
                ", did=" + did +
                ", dname='" + dname + '\'' +
                ", dfunction='" + dfunction + '\'' +
                ", ddirector='" + ddirector + '\'' +
                ", dduty='" + dduty + '\'' +
                ", ddirectorphonenum='" + ddirectorphonenum + '\'' +
                '}';
    }
}