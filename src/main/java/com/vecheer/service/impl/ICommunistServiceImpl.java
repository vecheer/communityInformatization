package com.vecheer.service.impl;

import com.vecheer.dao.ICommunistDao;
import com.vecheer.entity.Communist;
import com.vecheer.service.ICommunistService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("communistService")
public class ICommunistServiceImpl implements ICommunistService {
    @Autowired
    private ICommunistDao communistDao;

    @Override
    public List<Communist> findAllCommunist() {
        return communistDao.findAllCommunist();
    }

    @Override
    public Communist findCommunistByCid(Integer cid) {
        return communistDao.findCommunistByCid(cid);
    }

    @Override
    public List<Communist> findCommunistByCname(String cname) {
        return communistDao.findCommunistByCname(cname);
    }

    @Override
    public Communist findCommunistByCidnum(String cidnum) {
        return communistDao.findCommunistByCidnum(cidnum);
    }








    //*******************************分页显示的核心方法*************************************
    //按照支部查询党员
    @Override
    public List<Communist> findCommunistByBranch(String cjoinbranch, Integer startIndex,  Integer rsNum) {
        cjoinbranch = "%" + cjoinbranch + "%";
        return communistDao.findCommunistByBranch(cjoinbranch, startIndex, rsNum);
    }


    //按照支部计算党员总数目
    @Override
    public int countCommunistByBranch(String cjoinbranch) {
        cjoinbranch = "%" + cjoinbranch + "%";
        return communistDao.countCommunistByBranch(cjoinbranch);
    }

    //*******************************分页显示的核心方法*************************************




    @Override
    public String saveCommunist(Communist communist) {
        if (communistDao.findCommunistByCidnum(communist.getCidnum())!=null)
            return "alreadyexist";
        communistDao.saveCommunist(communist);
        return "success";
    }

    @Override
    public String updateCommunist(Communist communist) {
        if (communistDao.findCommunistByCidnum(communist.getCidnum())==null)
            return "notfound";
        communistDao.updateCommunist(communist);
        return "success";
    }

    @Override
    public String deleteCommunist(String cidnum) {
        if (communistDao.findCommunistByCidnum(cidnum)==null)
            return "notfound";
        communistDao.deleteCommunist(cidnum);
        return "success";
    }
}
