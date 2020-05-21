package com.vecheer.dao;

import com.vecheer.entity.NDepartment;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface INDepartmentDao {

    //按小区name查询该小区部门信息查询
    @Select("select * from n_department where nname=#{nname}")
    public List<NDepartment> findNDepartmentByNname (String nname);


    //按部门名称查询部门
    @Select("select * from n_department where dname=#{dname}")
    public List<NDepartment> findNDepartmentByDname(String dname);


    //按小区nname和部门dname查找某小区某部门(二者皆为模糊查询)
    @Select("<script>" +
            "select * from n_department where 1=1" +  // 这个时候where 1=1 的作用就体现出来了

            "<if test= '#{nname}!=null'> " +
            "and nname like #{nname} " +
            "</if>" +

            "<if test= '#{dname}!=null'> " +
            "and dname like #{dname}" +
            "</if>" +

            "</script>")
    public List<NDepartment> findNDepartmentListByNnameAndDname(NDepartment nDepartment);


    //按小区nname和部门dname查找某小区某部门 —— 精确查询
    @Select("select * from n_department where nname=#{nname} and dname=#{dname}")
    public NDepartment findNDepartmentByNnameAndDname(@Param("nname") String nname, @Param("dname") String dname);



    //按nname和dname更新部门
    @Update("update n_department set nid=#{nid},did=#{did},dfunction=#{dfunction},ddirector=#{ddirector},dduty=#{dduty},"
            + "ddirectorphonenum=#{ddirectorphonenum} where nname=#{nname} and dname=#{dname}")
    public void updateNDepartment(NDepartment nDepartment);


    //加入新部门
    @Insert("insert into n_department(nid,nname,did,dname,dfunction,ddirector,dduty,ddirectorphonenum)values" +
            "(#{nid},#{nname},#{did},#{dname},#{dfunction},#{ddirector},#{dduty},#{ddirectorphonenum})")
    public void saveNDepartment(NDepartment nDepartment);


    //按nname小区删除dname部门
    @Delete("delete from n_department where nname=#{nname} and dname=#{dname}")
    public void deleteNDepartmentByNameAndDname(@Param("nname") String nname, @Param("dname") String dname);
}
