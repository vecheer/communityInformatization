package com.vecheer.domain;
//居民个人信息查询条件实体
public class QueryCondition_FindResident {

    private Character rsex;    //性别
    private Integer rage;    //年龄
    private String rnationality;    //民族
    private String redulevel;    //受教育程度
    private String rhrtype;    //户口类（城市户口/农村户口）
    private String rismarried;    //婚姻情况
    private String rlivingstatus;    //住房情况(租房、合租、自购、无房)
    private String rfpstatus;    //计划生育情况
    private String rishealthy;    //健康情况
    private String rdisabilitytype;    //残疾类型
    private String rcompanytype;    //单位性质（国有 私营）
    private String rtype;    //人员类别（学生、工人、农民、干部、社会青年）
    private String risemployed;    //就业情况

    public Character getRsex() {
        return rsex;
    }

    public void setRsex(Character rsex) {
        this.rsex = rsex;
    }

    public String getRfpstatus() {
        return rfpstatus;
    }

    public void setRfpstatus(String rfpstatus) {
        this.rfpstatus = rfpstatus;
    }

    public Integer getRage() {
        return rage;
    }

    public void setRage(Integer rage) {
        this.rage = rage;
    }

    public String getRnationality() {
        return rnationality;
    }

    public void setRnationality(String rnationality) {
        this.rnationality = rnationality;
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

    public String getRlivingstatus() {
        return rlivingstatus;
    }

    public void setRlivingstatus(String rlivingstatus) {
        this.rlivingstatus = rlivingstatus;
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
}
