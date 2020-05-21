package com.vecheer.service.impl;

import com.vecheer.dao.INeighborhoodDao;
import com.vecheer.entity.Neighborhood;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.vecheer.service.INeighborhoodService;
import java.util.List;

@Service("neighborhoodService")
public class INeighborhoodServiceImpl implements INeighborhoodService {

    @Autowired
    INeighborhoodDao neighborhoodDao;

    //小区信息查询
    @Override
    public List<Neighborhood> findAllNeighborhood() {
        List<Neighborhood> neighborhoods = neighborhoodDao.findAllNeighborhood();
        return neighborhoods;
    }

    //按小区id查询小区
    @Override
    public Neighborhood findNeighborhoodById(Integer nid) {
        return neighborhoodDao.findNeighborhoodById(nid);
    }

    //按名称模糊查找小区
    @Override
    public List<Neighborhood> findNeighborhoodByName(String nname) {
        //模糊查询
        nname = "%"+nname+"%";
        List<Neighborhood> neighborhoods;
        neighborhoods = neighborhoodDao.findNeighborhoodByName(nname);
        return neighborhoods;
    }

    //保存小区信息
    @Override
    public String saveNeighbood(Neighborhood neighborhood) {
        //先按照名称查询，看本小区是否存在，存在返回alreadyexist，存在则可以修改，然后返回success
        if(neighborhoodDao.findNeighborhoodByName(neighborhood.getNname()).size()!=0)
            return "alreadyexist";
        neighborhoodDao.saveNeighborbood(neighborhood);
        return "success";
    }

    //修改小区信息，string返回是否成功修改，成功则"success"，失败则返回失败的信息
    @Override
    public String updateNeighbood(Neighborhood neighborhood) {
        //先按照id查询，看本小区是否存在，不存在返回notfound，存在则可以修改，然后返回success
        if(neighborhoodDao.findNeighborhoodById(neighborhood.getNid())==null)
            return "notfound";
        neighborhoodDao.updateNeighborbood(neighborhood);
        return "success";
    }


    //删除小区信息
    @Override
    public String deleteNeighborhood(Integer nid) {
        //先按照id查询，看本小区是否存在，不存在返回notfound，存在则可以修改，然后返回success
        if(neighborhoodDao.findNeighborhoodById(nid)==null)
            return "notfound";
        neighborhoodDao.deleteNeighborhood(nid);
        return "success";
    }
}
