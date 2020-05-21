package com.vecheer.entity;

import java.io.Serializable;

/**
 * 党员信息实体类
 * @author Vecheer
 */
public class Communist implements Serializable {
    private static final long serialVersionUID = 177237175590556369L;
    
    private Integer cid;
    
    private String cname;
    
    private String csex;
    
    private String cnationality;
    
    private String cnativeplace;
    
    private String cidnum;
    
    private String cphonenum;
    
    private String caddress;
    
    private String cbirthday;
    
    private String cduty;
    
    private String cworkentrytime;
    
    private String cjoinbranch; //当前所在支部
    
    private String creferrer;
    
    private String cjointime;
    
    private String cjoinorg;
    
    private String cjoinok;
    
    private String cjoinfrom;
    
    private String cjointhisdate;
    
    private Double cmoney;
    
    private String cedu;
    
    private String crp;


    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public String getCsex() {
        return csex;
    }

    public void setCsex(String csex) {
        this.csex = csex;
    }

    public String getCnationality() {
        return cnationality;
    }

    public void setCnationality(String cnationality) {
        this.cnationality = cnationality;
    }

    public String getCnativeplace() {
        return cnativeplace;
    }

    public void setCnativeplace(String cnativeplace) {
        this.cnativeplace = cnativeplace;
    }

    public String getCidnum() {
        return cidnum;
    }

    public void setCidnum(String cidnum) {
        this.cidnum = cidnum;
    }

    public String getCphonenum() {
        return cphonenum;
    }

    public void setCphonenum(String cphonenum) {
        this.cphonenum = cphonenum;
    }

    public String getCaddress() {
        return caddress;
    }

    public void setCaddress(String caddress) {
        this.caddress = caddress;
    }

    public String getCbirthday() {
        return cbirthday;
    }

    public void setCbirthday(String cbirthday) {
        this.cbirthday = cbirthday;
    }

    public String getCduty() {
        return cduty;
    }

    public void setCduty(String cduty) {
        this.cduty = cduty;
    }

    public String getCworkentrytime() {
        return cworkentrytime;
    }

    public void setCworkentrytime(String cworkentrytime) {
        this.cworkentrytime = cworkentrytime;
    }

    public String getCjoinbranch() {
        return cjoinbranch;
    }

    public void setCjoinbranch(String cjoinbranch) {
        this.cjoinbranch = cjoinbranch;
    }

    public String getCreferrer() {
        return creferrer;
    }

    public void setCreferrer(String creferrer) {
        this.creferrer = creferrer;
    }

    public String getCjointime() {
        return cjointime;
    }

    public void setCjointime(String cjointime) {
        this.cjointime = cjointime;
    }

    public String getCjoinorg() {
        return cjoinorg;
    }

    public void setCjoinorg(String cjoinorg) {
        this.cjoinorg = cjoinorg;
    }

    public String getCjoinok() {
        return cjoinok;
    }

    public void setCjoinok(String cjoinok) {
        this.cjoinok = cjoinok;
    }

    public String getCjoinfrom() {
        return cjoinfrom;
    }

    public void setCjoinfrom(String cjoinfrom) {
        this.cjoinfrom = cjoinfrom;
    }

    public String getCjointhisdate() {
        return cjointhisdate;
    }

    public void setCjointhisdate(String cjointhisdate) {
        this.cjointhisdate = cjointhisdate;
    }

    public Double getCmoney() {
        return cmoney;
    }

    public void setCmoney(Double cmoney) {
        this.cmoney = cmoney;
    }

    public String getCedu() {
        return cedu;
    }

    public void setCedu(String cedu) {
        this.cedu = cedu;
    }

    public String getCrp() {
        return crp;
    }

    public void setCrp(String crp) {
        this.crp = crp;
    }

    @Override
    public String toString() {
        return "Communist{" +
                "cid=" + cid +
                ", cname='" + cname + '\'' +
                ", csex='" + csex + '\'' +
                ", cnationality='" + cnationality + '\'' +
                ", cnativeplace='" + cnativeplace + '\'' +
                ", cidnum='" + cidnum + '\'' +
                ", cphonenum='" + cphonenum + '\'' +
                ", caddress='" + caddress + '\'' +
                ", cbirthday='" + cbirthday + '\'' +
                ", cduty='" + cduty + '\'' +
                ", cworkentrytime='" + cworkentrytime + '\'' +
                ", cjoinbranch='" + cjoinbranch + '\'' +
                ", creferrer='" + creferrer + '\'' +
                ", cjointime='" + cjointime + '\'' +
                ", cjoinorg='" + cjoinorg + '\'' +
                ", cjoinok='" + cjoinok + '\'' +
                ", cjoinfrom='" + cjoinfrom + '\'' +
                ", cjointhisdate='" + cjointhisdate + '\'' +
                ", cmoney=" + cmoney +
                ", cedu='" + cedu + '\'' +
                ", crp='" + crp + '\'' +
                '}';
    }
}