package com.vecheer.dao;

import com.vecheer.domain.CountCondition_CountResident;
import com.vecheer.domain.QueryCondition_FindResident;
import com.vecheer.entity.Resident;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IResidentDao {
    //按身份证号码查询
    @Select("select * from residents where ridnum=#{ridnum}")
    public Resident findResidentByRidnum(String ridnum);

    //条件查询居民个人信息
    @SelectProvider(type = ResidentDaoFindResidentSqlProvider.class,method = "findResidentSqlProvider")
    public List<Resident> findResidentInCondition(QueryCondition_FindResident condition);

    //使用聚合函数，查询统计信息
    @SelectProvider(type = ResidentDaoCountResidentSqlProvider.class,method = "countResidentSqlProvider")
    public Integer coutResidentInConditon(CountCondition_CountResident condition);

    //查询总人数
    @Select("select count(*) from residents")
    public Integer findTotal();


    //添加居民信息
    @Insert("insert into residents (rname,rage,ridtype,ridnum,rsex,rnationality,rbirthday,redulevel," +
            "rhrtype,rismarried,rfpstatus,rlivingstatus,rrelationwzowner,rhouseuse,rishealthy," +
            "rdisabilitytype,rcompanytype,rtype,risemployed)values(#{rname},#{rage},#{ridtype},#{ridnum},#{rsex}," +
            "#{rnationality},#{rbirthday},#{redulevel},#{rhrtype},#{rismarried},#{rfpstatus},#{rlivingstatus},#{rrelationwzowner}," +
            "#{rhouseuse},#{rishealthy},#{rdisabilitytype},#{rcompanytype},#{rtype},#{risemployed})")
    public void saveResident(Resident resident);


    //修改居民信息 --依据，居民身份证号码
    @Update("update residents set rname=#{rname},rage=#{rage},ridtype=#{ridtype},rsex=#{rsex},rnationality=#{rnationality}," +
            "rbirthday=#{rbirthday},redulevel=#{redulevel},rhrtype=#{rhrtype},rismarried=#{rismarried},rfpstatus=#{rfpstatus}," +
            "rlivingstatus=#{rlivingstatus},rrelationwzowner=#{rrelationwzowner},rhouseuse=#{rhouseuse},rishealthy=#{rishealthy}," +
            "rdisabilitytype=#{rdisabilitytype},rcompanytype=#{rcompanytype},rtype=#{rtype},risemployed=#{risemployed} " +
            "where ridnum=#{ridnum}")
    public void updateResident(Resident resident);

    //删除居民信息 --依据，居民身份证号
    @Delete("delete from residents where ridnum=#{ridnum}")
    public void deleteResident(String ridnum);


}
