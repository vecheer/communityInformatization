package com.vecheer.controller;

import com.vecheer.domain.CountCondition_CountResident;
import com.vecheer.domain.QueryCondition_FindResident;
import com.vecheer.entity.Resident;
import com.vecheer.service.IResidentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/resident")
public class ResidentController {
    @Autowired
    private IResidentService residentService;

    String resultMsg;

    //ridnum 查询
    @RequestMapping("/findResidentByRidnum")
    @ResponseBody
    public Resident findResidentByRidnum(@RequestBody Resident resident) {
        System.out.println("正在查询" + resident);
        String ridnum = resident.getRidnum();
        Resident r = residentService.findResidentByRidnum(ridnum);
        if (r == null) {
            System.out.println("未找到");
            r = new Resident();
            r.setRname("notfound");
        }
        System.out.println("找到的是" + r);
        return r;
    }

    //条件查询
    @RequestMapping("/findResidentInCondition")
    @ResponseBody
    public List<Resident> findResidentInCondition(@RequestBody QueryCondition_FindResident condition) {
        List<Resident> residents = residentService.findResidentInCondition(condition);
        if (residents.isEmpty())
            System.out.println("未找到");
        else
            for (Resident resident : residents)
                System.out.println(resident);
        return residents;
    }


    //条件统计
    @RequestMapping("/countResidentInCondition")
    @ResponseBody
    public String countResidentInCondition(@RequestBody CountCondition_CountResident condition) {
        Integer num = residentService.countResidentInCondition(condition);
        if (num == null || num == 0)
            return "{\"num\":\"0\"}";
        System.out.println("已经成功统计出数目!" + num);
            return "{\"num\":"+num+"}";

    }

    //统计个人总人数
    @RequestMapping("/findTotal")
    @ResponseBody
    public String countResidentInCondition() {
        Integer num = residentService.findTotal();
        if (num == null || num == 0)
            return "{\"num\":\"0\"}";
        System.out.println("已经成功统计出数目:" + num);
        return "{\"num\":" + num + "}";
    }


    //这一部分未在前台实现，因为个人觉得，保存信息不可能手动输入大量的信息，是直接使用excel导入数据库的
    @RequestMapping("/saveResident")
    public String saveResident(Resident resident) {
        resultMsg = residentService.saveResident(resident);
        if ("alreadyexist".equals(resultMsg)) {
            System.out.println("已经存在");
            return "wrong";
        }
        return "success";
    }



    @RequestMapping("/updateResident")
    @ResponseBody
    public String updateResident(@RequestBody Resident resident) {
        resultMsg = residentService.updateResident(resident);
        if ("notfound".equals(resultMsg)) {
            System.out.println("未找到");
            return "{\"msg\":\"notfound\"}";
        }
        System.out.println("修改成功!");
        return "{\"msg\":\"success\"}";
    }



    @RequestMapping("/deleteResident")
    @ResponseBody
    public String deleteResident(@RequestBody Resident resident) {
        String ridnum = resident.getRidnum();
        resultMsg = residentService.deleteResident(ridnum);
        if ("notfound".equals(resultMsg)) {
            System.out.println("未找到");
            return "{\"msg\":\"notfound\"}";
        }
        System.out.println("删除!");
        return "{\"msg\":\"success\"}";
    }

}
