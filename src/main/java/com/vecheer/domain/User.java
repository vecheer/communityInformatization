package com.vecheer.domain;

import java.io.Serializable;

/**
 * 账户实体
 * @author Vecheer
 */
public class User implements Serializable {
    //用户id
    private Integer uid;
    //用户名
    private String uname;
    //用户密码
    private String upassword;
    //用户联系方式
    private String uphonenum;
    //用户权限
    private Character urole;

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getUpassword() {
        return upassword;
    }

    public void setUpassword(String upassword) {
        this.upassword = upassword;
    }

    public String getUphonenum() {
        return uphonenum;
    }

    public void setUphonenum(String uphonenum) {
        this.uphonenum = uphonenum;
    }

    public Character getUrole() {
        return urole;
    }

    public void setUrole(Character urole) {
        this.urole = urole;
    }

    @Override
    public String toString() {
        return "User{" +
                "uid=" + uid +
                ", uname='" + uname + '\'' +
                ", upassword='" + upassword + '\'' +
                ", uphonenum='" + uphonenum + '\'' +
                ", urole=" + urole +
                '}';
    }

}
