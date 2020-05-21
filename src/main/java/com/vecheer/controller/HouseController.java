package com.vecheer.controller;

import com.vecheer.entity.House;
import com.vecheer.service.IHouseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/house")
public class HouseController {
    @Autowired
    IHouseService houseService;

    //crud结果
    String resultMsg;

    //多条件查询
    @RequestMapping("/findHouseInCondition")
    public String findHouseInCondition(String nname, Integer bid, Integer hfloord, Integer hflooru, Integer haread, Integer hareau, String hdesign, Character hrented){
        List<House> houses = houseService.findHouseInCondition(nname, bid, hfloord, hflooru, haread, hareau,hdesign, hrented);
        if(houses.size()==0)
        {System.out.println("未查询到");return "wrong";}
        for(House house:houses)
            System.out.println(house);
        return "success";
    }

    //按小区名和房间号查询房间
    @RequestMapping("/findHouseByNnameAndHidnum")
    public String findHouseByNnameAndHidnum(String nname,String hidnum){
        House house = houseService.findHouseByNnameAndHidnum(nname,hidnum);
        if(house==null)
        {System.out.println("未查询到");return "wrong";}
        System.out.println(house);
        return "success";
    }

    //增加房间
    @RequestMapping("/saveHouse")
    public String saveHouse(House house){
        resultMsg = houseService.saveHouse(house);
        if("alreadyexist".equals(resultMsg))
        {System.out.println("已存在");return "wrong";}
        return "success";
    }

    //修改房间信息
    @RequestMapping("/updateHouse")
    public String updateHouse(House house){
        resultMsg = houseService.updateHouse(house);
        if("notfound".equals(resultMsg))
        {System.out.println("未找到");return "wrong";}
        return "success";
    }

    //删除房间信息
    @RequestMapping("/deleteHouse")
    public String deleteHouse(String nname,String hidnum){
        resultMsg = houseService.deleteHouse(nname,hidnum);
        if("notfound".equals(resultMsg))
        {System.out.println("未找到");return "wrong";}
        return "success";
    }
}
