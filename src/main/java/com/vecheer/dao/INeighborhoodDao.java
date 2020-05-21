package com.vecheer.dao;

import com.vecheer.entity.Neighborhood;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 小区信息dao
 */
@Repository
public interface INeighborhoodDao {
    //小区信息查询
    @Select("select * from neighborhoods")
    public List<Neighborhood> findAllNeighborhood();

    //按ID查询小区
    @Select("select * from neighborhoods where nid = #{nid}")
    public Neighborhood findNeighborhoodById(Integer nid);

    //按名称查找小区
    @Select("select * from neighborhoods where nname like #{nname}")
    public List<Neighborhood> findNeighborhoodByName(String nname);

    //小区信息修改
    @Update("update neighborhoods set nname=#{nname},nbuildingnum=#{nbuildingnum},nhousenum=#{nhousenum},nfamilynum=#{nfamilynum},nresidentnum=#{nresidentnum} where nid=#{nid}")
    public void updateNeighborbood(Neighborhood neighborhood);

    //添加小区信息
    @Insert("insert into neighborhoods (nname,nbuildingnum,nhousenum,nfamilynum,nresidentnum)values(#{nname},#{nbuildingnum},#{nhousenum},#{nfamilynum},#{nresidentnum})")
    public void saveNeighborbood(Neighborhood neighborhood);

    //删除小区信息
    @Delete("delete from neighborhoods where nid = #{nid}")
    public void deleteNeighborhood(Integer nid);
}
