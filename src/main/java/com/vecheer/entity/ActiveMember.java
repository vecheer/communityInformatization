package com.vecheer.entity;

import java.io.Serializable;

/**
 * 入党积极分子实体类
 * @author Vecheer
 * @since 2020-05-10 00:22:43
 */
public class ActiveMember implements Serializable {
    private static final long serialVersionUID = -57826891063273149L;
    
    private Integer aid;
    
    private String aname;
    
    private String asex;
    
    private String anationality;
    
    private String aidnum;
    
    private String aedulevel;
    
    private String aworkentrytime;
    
    private String aworkat;
    
    private String aduty;
    
    private String aaddress;
    
    private String aleagueentrydate;
    
    private String aapplydate;
    
    private String abeamdate;
    
    private String areferrer;

    private String ajoinbranch;

    public String getAjoinbranch() {
        return ajoinbranch;
    }

    public void setAjoinbranch(String ajoinbranch) {
        this.ajoinbranch = ajoinbranch;
    }

    public Integer getAid() {
        return aid;
    }

    public void setAid(Integer aid) {
        this.aid = aid;
    }

    public String getAname() {
        return aname;
    }

    public void setAname(String aname) {
        this.aname = aname;
    }

    public String getAsex() {
        return asex;
    }

    public void setAsex(String asex) {
        this.asex = asex;
    }

    public String getAnationality() {
        return anationality;
    }

    public void setAnationality(String anationality) {
        this.anationality = anationality;
    }

    public String getAidnum() {
        return aidnum;
    }

    public void setAidnum(String aidnum) {
        this.aidnum = aidnum;
    }

    public String getAedulevel() {
        return aedulevel;
    }

    public void setAedulevel(String aedulevel) {
        this.aedulevel = aedulevel;
    }

    public String getAworkentrytime() {
        return aworkentrytime;
    }

    public void setAworkentrytime(String aworkentrytime) {
        this.aworkentrytime = aworkentrytime;
    }

    public String getAworkat() {
        return aworkat;
    }

    public void setAworkat(String aworkat) {
        this.aworkat = aworkat;
    }

    public String getAduty() {
        return aduty;
    }

    public void setAduty(String aduty) {
        this.aduty = aduty;
    }

    public String getAaddress() {
        return aaddress;
    }

    public void setAaddress(String aaddress) {
        this.aaddress = aaddress;
    }

    public String getAleagueentrydate() {
        return aleagueentrydate;
    }

    public void setAleagueentrydate(String aleagueentrydate) {
        this.aleagueentrydate = aleagueentrydate;
    }

    public String getAapplydate() {
        return aapplydate;
    }

    public void setAapplydate(String aapplydate) {
        this.aapplydate = aapplydate;
    }

    public String getAbeamdate() {
        return abeamdate;
    }

    public void setAbeamdate(String abeamdate) {
        this.abeamdate = abeamdate;
    }

    public String getAreferrer() {
        return areferrer;
    }

    public void setAreferrer(String areferrer) {
        this.areferrer = areferrer;
    }

    @Override
    public String toString() {
        return "ActiveMember{" +
                "aid=" + aid +
                ", aname='" + aname + '\'' +
                ", asex='" + asex + '\'' +
                ", anationality='" + anationality + '\'' +
                ", aidnum='" + aidnum + '\'' +
                ", aedulevel='" + aedulevel + '\'' +
                ", aworkentrytime='" + aworkentrytime + '\'' +
                ", aworkat='" + aworkat + '\'' +
                ", aduty='" + aduty + '\'' +
                ", aaddress='" + aaddress + '\'' +
                ", aleagueentrydate='" + aleagueentrydate + '\'' +
                ", aapplydate='" + aapplydate + '\'' +
                ", abeamdate='" + abeamdate + '\'' +
                ", areferrer='" + areferrer + '\'' +
                ", ajoinbranch='" + ajoinbranch + '\'' +
                '}';
    }
}