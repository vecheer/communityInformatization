package com.vecheer.service;

import com.vecheer.domain.CountCondition_CountResident;
import com.vecheer.domain.QueryCondition_FindResident;
import com.vecheer.entity.Resident;

import java.util.List;

public interface IResidentService {
    //按身份证号查找
    public Resident findResidentByRidnum(String ridnum);

    //多条件查询
    public List<Resident> findResidentInCondition(QueryCondition_FindResident condition);

    //查询各种条件的人数
    public Integer countResidentInCondition(CountCondition_CountResident condition);

    //查询总人数
    public Integer findTotal();

    //添加居民信息
    public String saveResident(Resident resident);

    //更新居民信息
    public String updateResident(Resident resident);

    //删除居民信息 --依据，居民身份证号
    public String  deleteResident(String ridnum);
}
