package com.vecheer.service.impl;

import com.vecheer.dao.IActiveMemberDao;
import com.vecheer.entity.ActiveMember;
import com.vecheer.service.IActiveMemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("activeMemberService")
public class IActiveMemberServiceImpl implements IActiveMemberService {
    @Autowired
    private IActiveMemberDao activeMemberDao;

    //查
    @Override
    public List<ActiveMember> findAllActiveMember() {
        return activeMemberDao.findAllActiveMember();
    }

    @Override
    public ActiveMember findActiveMemberByAidnum(String aidnum) {
        return activeMemberDao.findActiveMemberByAidnum(aidnum);
    }

    @Override
    public List<ActiveMember> findActiveMemberByAname(String aname) {
        return activeMemberDao.findActiveMemberByAname(aname);
    }



    //***************分页——按支部查询——安支部计算总人数*****************
    @Override
    public List<ActiveMember> findActiveMemberByBranch(String ajoinbranch,Integer startIndex,Integer rsNum) {
        ajoinbranch = "%" + ajoinbranch + "%";
        return activeMemberDao.findActiveMemberByBranch(ajoinbranch,startIndex,rsNum);
    }

    @Override
    public int countActiveMemberByBranch(String ajoinbranch) {
        ajoinbranch = "%" + ajoinbranch + "%";
        return activeMemberDao.countActiveMemberByBranch(ajoinbranch);
    }
    //*************************************************************



    //增
    @Override
    public String saveActiveMember(ActiveMember activemember) {
        if (activeMemberDao.findActiveMemberByAidnum(activemember.getAidnum())!=null)
            return "alreadyexist";
        activeMemberDao.saveActiveMember(activemember);
        return "success";
    }

    //改
    @Override
    public String updateActiveMember(ActiveMember activeMember) {
        if (activeMemberDao.findActiveMemberByAidnum(activeMember.getAidnum())==null)
            return "notfound";
        activeMemberDao.updateActiveMember(activeMember);
        return "success";
    }

    //删
    @Override
    public String deleteActiveMember(String aidnum) {
        if (activeMemberDao.findActiveMemberByAidnum(aidnum)==null)
            return "notfound";
        activeMemberDao.deleteActiveMember(aidnum);
        return "success";
    }
}
