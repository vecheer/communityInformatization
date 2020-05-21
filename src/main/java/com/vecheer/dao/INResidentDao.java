package com.vecheer.dao;

import com.vecheer.entity.NResident;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface INResidentDao {
    //因为数据量过于庞大，所以没有设置findAll()

    //按小区名称查询居民
    @Select("select * from n_residents where nname like #{nname}")
    public List<NResident> findNResidentByNhName(String nname);

    //按居民名称查询居民
    @Select("select * from n_residents where rname like #{rname}")
    public List<NResident> findNResidentByRname(String rname);




    //按照小区名称和居民名称查找居民 先统计结果数目（最终使用在界面里面的方案）
    @Select("select count(*) from n_residents where nname like #{nname} and rname like #{rname}")
    public int findNResidentCountsByNnameAndRname(@Param("nname") String nname, @Param("rname") String rname);

    //按照小区名称和居民名称查找居民（最终使用在界面里面的方案）
    @Select("select * from n_residents where nname like #{nname} and rname like #{rname} limit #{startIndex},#{rsNum}")
    public List<NResident> findNResidentByNnameAndRname(@Param("nname") String nname, @Param("rname") String rname,
                                                        @Param("startIndex") Integer startIndex,@Param("rsNum") Integer rsNum);





    //按居民id查询居民
    @Select("select * from n_residents where rid=#{rid}")
    public NResident findNResidentById(Integer rid);

    //按居民身份证号查询居民
    @Select("select * from n_residents where ridnum=#{ridnum}")
    public NResident findNResidentByRidnum(String ridnum);

    //修改居民居住信息
    @Update("update n_residents set rname=#{rname},ridnum=#{ridnum},nid=#{nid},nname=#{nname}," +
            "bid=#{bid},hidnum=#{hidnum} where rid=#{rid}")
    public void updateNResident(NResident nResident);

    //添加居民居住信息
    @Insert("insert into n_residents(rname,ridnum,nid,nname,bid,hidnum)values(#{rname},#{ridnum},#{nid},#{nname},#{bid},#{hidnum})")
    public void saveNResident(NResident nResident);

    //删除用户居住信息
    @Delete("delete from n_residents where ridnum=#{ridnum}")
    public void deleteNResident(String ridnum);

}
