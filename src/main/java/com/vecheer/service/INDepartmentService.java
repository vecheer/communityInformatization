package com.vecheer.service;

import com.vecheer.entity.NDepartment;


import java.util.List;

public interface INDepartmentService {
    //按小区name查询该小区部门信息查询
    public List<NDepartment> findNDepartmentByNname (String nname);

    //按部门名称查询部门
    public List<NDepartment> findNDepartmentByDname(String dname);

    //按小区nname和部门dname查找某小区某部门 ——模糊查询
    public List<NDepartment> findNDepartmentListByNnameAndDname(NDepartment nDepartment);

    //按小区nname和部门dname查找某小区某部门 ——精确查询
    public NDepartment findNDepartmentByNnameAndDname(String nname,String dname);

    //按nname和dname更新部门
    public String updateNDepartment(NDepartment nDepartment);

    //加入新部门
    public String saveNDepartment(NDepartment nDepartment);

    //按nname小区删除dname部门
    public String deleteNDepartmentByNameAndDname(String nname,String dname);

}
