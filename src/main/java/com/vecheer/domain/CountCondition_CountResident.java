package com.vecheer.domain;

import java.util.List;

public class CountCondition_CountResident {
    private Character rsex;    //性别
    private Integer rageL;    //年龄下限 ***
    private Integer rageU;    //年龄上限 ***
    private String rnationality;    //民族-非汉族 ***
    private List<String> redulevels;    //受教育程度 *** 文盲或半文盲	小学	初中	高中	技工学校	中等专业学校中等技术学校	大学专科和专科学校	大学本科
    private String rhrtype;    //户口类（城市户口/农村户口）
    private String rismarried;    //婚姻情况 已婚-未婚 ***
    private String rishealthy;    //健康情况 健康-非健康 ***
    private String rtype;    //人员类别（学生、工人、农民、干部、社会青年）***
    private String risemployed;    //就业情况 已就业-待业

    public Character getRsex() {
        return rsex;
    }

    public void setRsex(Character rsex) {
        this.rsex = rsex;
    }

    public Integer getRageL() {
        return rageL;
    }

    public void setRageL(Integer rageL) {
        this.rageL = rageL;
    }

    public Integer getRageU() {
        return rageU;
    }

    public void setRageU(Integer rageU) {
        this.rageU = rageU;
    }

    public String getRnationality() {
        return rnationality;
    }

    public void setRnationality(String rnationality) {
        this.rnationality = rnationality;
    }

    public List<String> getRedulevels() {
        return redulevels;
    }

    public void setRedulevels(List<String> redulevels) {
        this.redulevels = redulevels;
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


    public String getRishealthy() {
        return rishealthy;
    }

    public void setRishealthy(String rishealthy) {
        this.rishealthy = rishealthy;
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
