package com.vecheer.service;

import com.vecheer.entity.House;


import java.util.List;

public interface IHouseService {
    //按条件查询房屋
    //按小区名称查询 + 查询条件：楼栋号、楼层号、房间号、房间面积上限、房间面积下限、房间设计、出租
    public List<House> findHouseInCondition(String nname, Integer bid, Integer hfloord, Integer hflooru, Integer haread,
                                            Integer hareau, String hdesign, Character hrented);

    //按小区名称和房间号查询房屋 ----增删改的依据
    public House findHouseByNnameAndHidnum(String nname, String hidnum);


    //增
    public String  saveHouse(House house);


    //改
    public String updateHouse(House house);

    //删除
    public String deleteHouse(String nname,String hidnum);


}
