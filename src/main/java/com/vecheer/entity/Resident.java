package com.vecheer.entity;

import java.io.Serializable;

/**
 * (Resident)实体类
 *
 * @author makejava
 * @since 2020-05-07 14:51:45
 */
public class Resident implements Serializable {
    private static final long serialVersionUID = -85047102334734091L;
    
    private Integer id;
    
    private String rname;

    private Integer rage;

    private String ridtype;
    
    private String ridnum;
    
    private String rsex;
    
    private String rnationality;
    
    private String rbirthday;
    
    private String redulevel;
    
    private String rhrtype;
    
    private String rismarried;
    
    private String rfpstatus;
    
    private String rlivingstatus;
    
    private String rrelationwzowner;
    
    private String rhouseuse;
    
    private String rishealthy;
    
    private String rdisabilitytype;
    
    private String rcompanytype;
    
    private String rtype;
    
    private String risemployed;

    public Integer getRage() {
        return rage;
    }

    public void setRage(Integer rage) {
        this.rage = rage;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getRname() {
        return rname;
    }

    public void setRname(String rname) {
        this.rname = rname;
    }

    public String getRidtype() {
        return ridtype;
    }

    public void setRidtype(String ridtype) {
        this.ridtype = ridtype;
    }

    public String getRidnum() {
        return ridnum;
    }

    public void setRidnum(String ridnum) {
        this.ridnum = ridnum;
    }

    public String getRsex() {
        return rsex;
    }

    public void setRsex(String rsex) {
        this.rsex = rsex;
    }

    public String getRnationality() {
        return rnationality;
    }

    public void setRnationality(String rnationality) {
        this.rnationality = rnationality;
    }

    public String getRbirthday() {
        return rbirthday;
    }

    public void setRbirthday(String rbirthday) {
        this.rbirthday = rbirthday;
    }

    public String getRedulevel() {
        return redulevel;
    }

    public void setRedulevel(String redulevel) {
        this.redulevel = redulevel;
    }

    public String getRhrtype() {
        return rhrtype;
    }

    public void setRhrtype(String rhrtype) {
        this.rhrtype = rhrtype;
    }

    public String getRismarried() {
        return rismarried;
    }

    public void setRismarried(String rismarried) {
        this.rismarried = rismarried;
    }

    public String getRfpstatus() {
        return rfpstatus;
    }

    public void setRfpstatus(String rfpstatus) {
        this.rfpstatus = rfpstatus;
    }

    public String getRlivingstatus() {
        return rlivingstatus;
    }

    public void setRlivingstatus(String rlivingstatus) {
        this.rlivingstatus = rlivingstatus;
    }

    public String getRrelationwzowner() {
        return rrelationwzowner;
    }

    public void setRrelationwzowner(String rrelationwzowner) {
        this.rrelationwzowner = rrelationwzowner;
    }

    public String getRhouseuse() {
        return rhouseuse;
    }

    public void setRhouseuse(String rhouseuse) {
        this.rhouseuse = rhouseuse;
    }

    public String getRishealthy() {
        return rishealthy;
    }

    public void setRishealthy(String rishealthy) {
        this.rishealthy = rishealthy;
    }

    public String getRdisabilitytype() {
        return rdisabilitytype;
    }

    public void setRdisabilitytype(String rdisabilitytype) {
        this.rdisabilitytype = rdisabilitytype;
    }

    public String getRcompanytype() {
        return rcompanytype;
    }

    public void setRcompanytype(String rcompanytype) {
        this.rcompanytype = rcompanytype;
    }

    public String getRtype() {
        return rtype;
    }

    public void setRtype(String rtype) {
        this.rtype = rtype;
    }

    public String getRisemployed() {
        return risemployed;
    }

    public void setRisemployed(String risemployed) {
        this.risemployed = risemployed;
    }

    @Override
    public String toString() {
        return "Resident{" +
                "id=" + id +
                ", rname='" + rname + '\'' +
                ", rage=" + rage +
                ", ridtype='" + ridtype + '\'' +
                ", ridnum='" + ridnum + '\'' +
                ", rsex='" + rsex + '\'' +
                ", rnationality='" + rnationality + '\'' +
                ", rbirthday='" + rbirthday + '\'' +
                ", redulevel='" + redulevel + '\'' +
                ", rhrtype='" + rhrtype + '\'' +
                ", rismarried='" + rismarried + '\'' +
                ", rfpstatus='" + rfpstatus + '\'' +
                ", rlivingstatus='" + rlivingstatus + '\'' +
                ", rrelationwzowner='" + rrelationwzowner + '\'' +
                ", rhouseuse='" + rhouseuse + '\'' +
                ", rishealthy='" + rishealthy + '\'' +
                ", rdisabilitytype='" + rdisabilitytype + '\'' +
                ", rcompanytype='" + rcompanytype + '\'' +
                ", rtype='" + rtype + '\'' +
                ", risemployed='" + risemployed + '\'' +
                '}';
    }
}