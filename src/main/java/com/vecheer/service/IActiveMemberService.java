package com.vecheer.service;

import com.vecheer.entity.ActiveMember;

import java.util.List;

public interface IActiveMemberService {
    //查
    public List<ActiveMember> findAllActiveMember();

    public ActiveMember findActiveMemberByAidnum(String aidnum);

    public List<ActiveMember> findActiveMemberByAname(String aname);



    //***************分页——按支部查询——安支部计算总人数*****************
    public List<ActiveMember> findActiveMemberByBranch(String ajoinbranch,Integer startIndex,Integer rsNum);

    public int countActiveMemberByBranch(String ajoinbranch);
    //*************************************************************


    //增
    public String saveActiveMember(ActiveMember activeMember);


    //改 --修改依据是身份证号
    public String updateActiveMember(ActiveMember activeMember);


    //删 --删除依据是身份证号
    public String deleteActiveMember(String aidnum);

}
