package com.vecheer.service.impl;

import com.vecheer.dao.INResidentDao;
import com.vecheer.entity.NResident;
import com.vecheer.service.INResidentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("nResidentService")
public class INResidentServiceImpl implements INResidentService {

    @Autowired
    private INResidentDao nResidentDao;
    //按模糊小区名称查询居民
    @Override
    public List<NResident> findNResidentByNhName(String nname) {
        nname="%"+nname+"%";
        List<NResident> nResidents;
        nResidents = nResidentDao.findNResidentByNhName(nname);
        return nResidents;
    }

    //按模糊居民姓名查询居民
    @Override
    public List<NResident> findNResidentByRname(String rname) {
        rname="%"+rname+"%";
        List<NResident> nResidents;
        nResidents = nResidentDao.findNResidentByRname(rname);
        return nResidents;
    }

    //按居民身份证号查询居民
    @Override
    public NResident findNResidentByRidnum(String ridnum) {
        return nResidentDao.findNResidentByRidnum(ridnum);
    }

    //按小区名称和居民名称查询居民 获取结果数目
    @Override
    public int findNResidentCountsByNnameAndRname(String nname, String rname) {
        nname = "%" + nname + "%";
        rname = "%" + rname + "%";
        System.out.println("查询结果有"+nResidentDao.findNResidentCountsByNnameAndRname(nname, rname)+"条");
        return nResidentDao.findNResidentCountsByNnameAndRname(nname, rname);
    }

    //按照小区名称和居民名字模糊查询居民，如果都没有输入，那就是查询所有，牵涉到分页查询
    @Override
    public List<NResident> findNResidentByNnameAndRname(String nname, String rname, Integer startIndex, Integer rsNum) {
        nname = "%" + nname + "%";
        rname = "%" + rname + "%";
        return nResidentDao.findNResidentByNnameAndRname(nname, rname,startIndex,rsNum);
    }


    //id
    @Override
    public NResident findNResidentById(Integer rid) {
        return nResidentDao.findNResidentById(rid);
    }



    //更新用户信息
    @Override
    public String updateNResident(NResident nResident) {
        //先观察被更新者按id能不能找到
        if(nResidentDao.findNResidentById(nResident.getRid())==null)//没找到
            return "notfound";
        nResidentDao.updateNResident(nResident);
        return "success";
    }


    //添加居民居住信息
    @Override
    public String saveNResident(NResident nResident) {
        //先观察被更添加按身份证能不能找到
        if(nResidentDao.findNResidentByRidnum(nResident.getRidnum())!=null)//被添加的用户已经存在
            return "alreadyexist";
        nResidentDao.saveNResident(nResident);
        return "success";
    }

    //删除居民居住信息
    @Override
    public String deleteNResident(String ridnum) {
        if(nResidentDao.findNResidentByRidnum(ridnum)==null)
            return "notfound";
        nResidentDao.deleteNResident(ridnum);
        return "success";
    }
}
