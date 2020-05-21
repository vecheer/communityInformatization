package com.vecheer.service.impl;

import com.vecheer.dao.IHouseDao;
import com.vecheer.entity.House;
import com.vecheer.service.IHouseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service("houseService")
public class IHouseServiceImpl implements IHouseService {
    @Autowired
    private IHouseDao houseDao;


    //多个条件查询房屋
    @Override
    public List<House> findHouseInCondition(String nname, Integer bid, Integer hfloord, Integer hflooru, Integer haread,
                                            Integer hareau, String hdesign, Character hrented) {
        List<House> houses = houseDao.findHouseInCondition(nname, bid, hfloord, hflooru, haread, hareau,hdesign, hrented);
        return houses;
    }

    //按小区名称和房间号查询房屋 ----增删改的依据
    @Override
    public House findHouseByNnameAndHidnum(String nname, String hidnum) {
        return houseDao.findHouseByNnameAndHidnum(nname,hidnum);
    }

    //增房屋
    @Override
    public String saveHouse(House house) {
        if(houseDao.findHouseByNnameAndHidnum(house.getNname(),house.getHidnum())!=null)
            return "alreadyexist";
        houseDao.saveHouse(house);
        return "success";
    }

    //修改房屋信息
    @Override
    public String updateHouse(House house) {
        if(houseDao.findHouseByNnameAndHidnum(house.getNname(),house.getHidnum())==null)
            return "notfound";
        houseDao.updateHouse(house);
        return "success";
    }

    //删除房屋信息
    @Override
    public String deleteHouse(String nname, String hidnum) {
        if(houseDao.findHouseByNnameAndHidnum(nname,hidnum)==null)
            return "notfound";
        houseDao.deleteHouse(nname,hidnum);
        return "success";
    }
}
