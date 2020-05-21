package com.vecheer.service;

import com.vecheer.entity.Communist;

import java.util.List;

public interface ICommunistService {
    //查
    public List<Communist> findAllCommunist();

    public Communist findCommunistByCid(Integer cid);

    public List<Communist> findCommunistByCname(String cname);

    public Communist findCommunistByCidnum(String cidnum);



    //按照支部查找
    public List<Communist> findCommunistByBranch(String cjoinbranch, Integer startIndex,  Integer rsNum);

    //按支部查找 计算人数
    public int countCommunistByBranch(String cjoinbranch);





    //增
    public String saveCommunist(Communist communist);

    //改 --查询依据是cidnum
    public String updateCommunist(Communist communist);

    //删 --删除依据是cidnum
    public String deleteCommunist(String  cidnum);

}
