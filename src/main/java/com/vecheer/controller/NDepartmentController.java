package com.vecheer.controller;

import com.vecheer.entity.NDepartment;
import com.vecheer.service.INDepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/nDepartment")
public class NDepartmentController {
    @Autowired
    private INDepartmentService nDepartmentService;

    //crud结果信息
    String resultMsg;

    //***************************测试代码***************************
    //未在界面中使用，界面中使用的是加强版的，带有模糊查询的小区和部门机构名称的查询
    //按小区name查询该小区部门信息
    @RequestMapping("/findNDepartmentByNname")
    public List<NDepartment> findNDepartmentByNname(NDepartment nDepartment) {
        String nname = nDepartment.getNname();
        List<NDepartment> nDepartments = nDepartmentService.findNDepartmentByNname(nname);
        if (nDepartments.size() != 0)
            for (NDepartment nd : nDepartments)
                System.out.println(nd);
        return nDepartments;
    }

    //按部门名称查询部门
    @RequestMapping("/findNDepartmentByDname")
    public String findNDepartmentByDname(String dname) {
        List<NDepartment> nDepartments = nDepartmentService.findNDepartmentByDname(dname);
        if (nDepartments.size() == 0)
            return "wrong";
        for (NDepartment nDepartment : nDepartments)
            System.out.println(nDepartment);
        return "success";
    }
    //***************************测试代码***************************



    //按小区nname和部门dname查找某小区某部门 —— 改为模糊查询, 原先的精确查询作为后台使用的条件
    @RequestMapping("/findNDepartmentListByNnameAndDname")
    @ResponseBody
    public List<NDepartment> findNDepartmentByNnameAndDname(@RequestBody NDepartment nDepartment) {
        System.out.println("后台正在模糊查询" + nDepartment);
        List<NDepartment> nDepartments = nDepartmentService.findNDepartmentListByNnameAndDname(nDepartment);
        if (nDepartments.size()==0)
            System.out.println("未查询到相关信息");
        else{
            System.out.println("查询到了相关信息");
            for (NDepartment nD : nDepartments)
                System.out.println(nD);
        }
        return nDepartments;
    }



    //按nname和dname更新部门
    @RequestMapping("/updateNDepartment")
    @ResponseBody
    public String updateNDepartment(@RequestBody  NDepartment nDepartment) {
        System.out.println("正在修改机构信息:"+ nDepartment);
        resultMsg = nDepartmentService.updateNDepartment(nDepartment);
        if ("notfound".equals(resultMsg)) {
            System.out.println("未找到");
            return "{\"msg\":\"notfound\"}";
        }
        System.out.println("修改成功!");
        return "{\"msg\":\"success\"}";
    }

    //在加入新机构，用的英文是 部门
    @RequestMapping("/saveNDepartment")
    @ResponseBody
    public String saveNDepartment(@RequestBody NDepartment nDepartment) {
        System.out.println("正在添加新机构"+ nDepartment);
        resultMsg = nDepartmentService.saveNDepartment(nDepartment);
        if ("alreadyexist".equals(resultMsg)) {
            System.out.println("已经存在");
            return "{\"msg\":\"alreadyexist\"}";
        }
        System.out.println("添加成功!");
        return "{\"msg\":\"success\"}";
    }

    //按nname小区删除dname部门
    @RequestMapping("/deleteNDepartmentByNameAndDname")
    @ResponseBody
    public String deleteNDepartmentByNameAndDname(@RequestBody NDepartment nDepartment) {
        String nname = nDepartment.getNname();
        String dname = nDepartment.getDname();
        System.out.println("正在删除机构:"+ nname + "," + dname);
        resultMsg = nDepartmentService.deleteNDepartmentByNameAndDname(nname, dname);
        if ("notfound".equals(resultMsg)) {
            System.out.println("已经存在");
            return "{\"msg\":\"notfound\"}";
        }
        System.out.println("删除!");
        return "{\"msg\":\"success\"}";
    }
}
