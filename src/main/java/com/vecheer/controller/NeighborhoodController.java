package com.vecheer.controller;

import com.vecheer.entity.Neighborhood;
import com.vecheer.service.INeighborhoodService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/neighborhood")
public class NeighborhoodController {

    @Autowired
    INeighborhoodService neighborhoodService;

    //查找所有小区
    @RequestMapping("/findAllNeighborhood")
    @ResponseBody
    public List<Neighborhood> findAllNeighborhood() {
        System.out.println("正在查询所有");
        List<Neighborhood> neighborhoods = neighborhoodService.findAllNeighborhood();
        for (Neighborhood neighborhood : neighborhoods)
            System.out.println(neighborhood);
        return neighborhoods;
    }

    //按名称模糊查询小区  如果传入的name是空串，那么会在自动匹配所有的结果
    @RequestMapping("/findNeighborhoodByName")
    @ResponseBody
    public List<Neighborhood> findNeighborhoodByName(@RequestBody Neighborhood jsonneighborhood) {
        //这里后台直接用对象接收，使用jackson自动绑定，省得我回头专门从json中解析这个nname
        String nname = jsonneighborhood.getNname();
        System.out.println("正在按照名称查询小区:" + nname);
        List<Neighborhood> neighborhoods = neighborhoodService.findNeighborhoodByName(nname);
        if (neighborhoods.size() == 0) //没找到该名称的小区
        {
            System.out.println("**没找到该名称的小区**");
            //因为前台是ajax，这里就不返回null了，容易出错，我直接把这个空集合丢回去
            return neighborhoods;
        }
        for (Neighborhood neighborhood : neighborhoods)
            System.out.println(neighborhood);
        return neighborhoods;
    }

    //修改小区信息
    @RequestMapping("/updateNeighborhood")
    @ResponseBody
    public String updateNeighborhood(@RequestBody Neighborhood neighborhood) {
        System.out.println("正在修改小区信息:"+neighborhood);
        String resultMsg;
        resultMsg = neighborhoodService.updateNeighbood(neighborhood);
        if ("notfound".equals(resultMsg)){//没找到该小区，那就无法修改
            System.out.println("没找到该小区");
            return "{\"msg\":\"notfound\"}";
        }
        System.out.println("修改成功!");
        return "{\"msg\":\"success\"}";
    }

    //添加新小区信息
    @RequestMapping("/saveNeighborhood")
    @ResponseBody
    public String saveNeighborhood(@RequestBody Neighborhood neighborhood) {
        System.out.println("正在添加小区信息:"+neighborhood);
        String resultMsg = neighborhoodService.saveNeighbood(neighborhood);
        if ("alreadyexist".equals(resultMsg)) {
            return "{\"msg\":\"alreadyexist\"}";
        }
        System.out.println("添加成功");
        return "{\"msg\":\"success\"}";
    }

    //删除小区信息
    @RequestMapping("/deleteNeighborhood")
    @ResponseBody
    public String deleteNeighborhood(@RequestBody Neighborhood neighborhood) {
        System.out.println("正在删除小区信息，nid:"+neighborhood.getNid());
        Integer nid = neighborhood.getNid();
        String resultMsg = neighborhoodService.deleteNeighborhood(nid);
        if ("notfound".equals(resultMsg)){
            System.out.println("没找到该小区");
            return "{\"msg\":\"notfound\"}";
        }
        System.out.println("删除成功!");
        return "{\"msg\":\"success\"}";
    }
}
