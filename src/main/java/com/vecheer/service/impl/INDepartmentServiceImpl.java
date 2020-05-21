package com.vecheer.service.impl;

import com.vecheer.dao.INDepartmentDao;
import com.vecheer.entity.NDepartment;
import com.vecheer.service.INDepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("nDepartmentService")
public class INDepartmentServiceImpl implements INDepartmentService {
    @Autowired
    private INDepartmentDao nDepartmentDao;

    //按小区name查询该小区部门信息
    @Override
    public List<NDepartment> findNDepartmentByNname(String nname) {
        List<NDepartment> nDepartments;
        nDepartments = nDepartmentDao.findNDepartmentByNname(nname);
        return nDepartments;
    }

    //按部门名称查询部门
    @Override
    public List<NDepartment> findNDepartmentByDname(String dname){
        List<NDepartment> nDepartments;
        nDepartments = nDepartmentDao.findNDepartmentByDname(dname);
        return nDepartments;
    }

    //按小区nname和部门dname查找某小区某部门 —— 精确查询
    @Override
    public NDepartment  findNDepartmentByNnameAndDname(String nname,String dname){
        NDepartment  nDepartments = nDepartmentDao.findNDepartmentByNnameAndDname(nname,dname);

        return nDepartments;
    }

    //按小区nname和部门dname查找某小区某部门 —— 模糊查询
    @Override
    public List<NDepartment> findNDepartmentListByNnameAndDname(NDepartment nDepartment) {
        //加上模糊查询所需的%
        String nname = "%" +nDepartment.getNname() + "%";
        String dname = "%" +nDepartment.getDname() + "%";
        nDepartment.setNname(nname);
        nDepartment.setDname(dname);
        List<NDepartment> nDepartments = nDepartmentDao.findNDepartmentListByNnameAndDname(nDepartment);
        return nDepartments;
    }

    //按nname和dname更新部门
    @Override
    public String updateNDepartment(NDepartment nDepartment) {
        if(nDepartmentDao.findNDepartmentByNnameAndDname(nDepartment.getNname(),nDepartment.getDname())==null)
            return "notfound";
        nDepartmentDao.updateNDepartment(nDepartment);
        return "success";
    }

    //加入新部门
    @Override
    public String  saveNDepartment(NDepartment nDepartment){
        if(nDepartmentDao.findNDepartmentByNnameAndDname(nDepartment.getNname(),nDepartment.getDname())!=null)
            return "alreadyexist";
        nDepartmentDao.saveNDepartment(nDepartment);
        return "success";
    }

    //按nname小区删除dname部门
    @Override
    public String deleteNDepartmentByNameAndDname(String nname,String dname){
        if(nDepartmentDao.findNDepartmentByNnameAndDname(nname,dname)==null)
            return "notfound";
        nDepartmentDao.deleteNDepartmentByNameAndDname(nname,dname);
        return "success";
    }

}
