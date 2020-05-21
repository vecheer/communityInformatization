/**
 * service中，crud操作的返回类型多为String类型，这样，在出错的时候，可以向Controller返回"错误信息"
 * 如果crud成功，就返回"success"
 * 当然，单纯的查询，就直接返回所查询的类型
 */
package com.vecheer.service;

import com.vecheer.entity.NResident;

import java.util.List;

public interface INResidentService {
    //按小区名称查询居民
    public List<NResident> findNResidentByNhName(String nname);

    //按居民名称查询居民
    public List<NResident> findNResidentByRname(String rname);

    //按居民身份证号查询居民
    public NResident findNResidentByRidnum(String ridnum);



    //按小区名称和居民名称查询居民 获取结果数目
    public int findNResidentCountsByNnameAndRname(String nname, String rname);

    //按小区名称和居民名称查询居民
    public List<NResident> findNResidentByNnameAndRname(String nname, String rname, Integer startIndex, Integer rsNum);


    //按居民id查询居民 FIXME 这里其实在业务层不一定能用到按id查询
    public NResident findNResidentById(Integer rid);


    //修改居民居住信息 成功修改返回true，失败返回false，原因一定是找不到用户
    public String updateNResident(NResident nResident);

    //添加居民居住信息
    public String saveNResident(NResident nResident);

    //删除用户居住信息
    public String deleteNResident(String ridnum);
}
