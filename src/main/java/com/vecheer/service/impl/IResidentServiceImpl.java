package com.vecheer.service.impl;

import com.vecheer.dao.IResidentDao;
import com.vecheer.domain.CountCondition_CountResident;
import com.vecheer.domain.QueryCondition_FindResident;
import com.vecheer.entity.Resident;
import com.vecheer.service.IResidentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("residentService")
public class IResidentServiceImpl implements IResidentService {
    @Autowired
    private IResidentDao residentDao;

    //按身份证号查找
    @Override
    public Resident findResidentByRidnum(String ridnum) {
        return residentDao.findResidentByRidnum(ridnum);
    }

    //多条件查询
    @Override
    public List<Resident> findResidentInCondition(QueryCondition_FindResident condition) {
        return residentDao.findResidentInCondition(condition);
    }

    //查询各种条件的人数
    @Override
    public Integer countResidentInCondition(CountCondition_CountResident condition) {
        Integer num = residentDao.coutResidentInConditon(condition);
        return num;
    }

    //查询总人数
    @Override
    public Integer findTotal() {
        return residentDao.findTotal();
    }

    //添加居民信息
    @Override
    public String saveResident(Resident resident) {
        if(residentDao.findResidentByRidnum(resident.getRidnum())!=null)
            return "alreadyexist";
        residentDao.saveResident(resident);
        return "success";
    }

    //更新居民信息，依据是居民身份证号
    @Override
    public String updateResident(Resident resident) {
        if(residentDao.findResidentByRidnum(resident.getRidnum())==null)
            return "notfound";
        residentDao.updateResident(resident);
        return "success";
    }

    //删除居民信息 --依据，居民身份证号
    @Override
    public String deleteResident(String ridnum) {
        if (residentDao.findResidentByRidnum(ridnum)==null)
            return "notfound";
        residentDao.deleteResident(ridnum);
        return "success";
    }
}
