package com.vecheer.service;

import com.vecheer.entity.Neighborhood;

import java.util.List;

//小区信息交互
public interface INeighborhoodService {
    //查询所有小区信息
    public List<Neighborhood> findAllNeighborhood();

    //按ID查询小区信息
    public Neighborhood findNeighborhoodById(Integer nid);

    //按%名称%模糊查找小区信息
    public List<Neighborhood> findNeighborhoodByName(String nname);

    //修改小区信息
    public String updateNeighbood(Neighborhood neighborhood);

    //添加小区信息
    public String saveNeighbood(Neighborhood neighborhood);

    //删除小区信息
    public String deleteNeighborhood(Integer nid);
}
