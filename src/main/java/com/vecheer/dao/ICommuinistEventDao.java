package com.vecheer.dao;

import com.vecheer.entity.CommunistEvent;
import org.apache.ibatis.annotations.*;
import org.apache.ibatis.jdbc.SQL;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface ICommuinistEventDao {
    //查
    //查所有
    @Select("select * from communistevents")
    public List<CommunistEvent> findAllCommunistEvent();

    //查名称和主办方
    @Select("select * from communistevents where cename=#{cename} and cesponsor=#{cesponsor}")
    public CommunistEvent findCommunistEventByCenameAndCesponsor(@Param("cename") String cename,@Param("cesponsor")String cesponsor);



    //查主办方 分页查询
    @Select("select * from communistevents where cesponsor like #{cesponsor} limit #{startIndex},#{rsNum}")
    public List<CommunistEvent> findCommunistEventBySponsor(@Param("cesponsor") String cesponsor,
                                                            @Param("startIndex") Integer startIndex,
                                                            @Param("rsNum") Integer rsNum);

    //查主办方 举办活动的总数目 分页查询
    @Select("select count(*) from communistevents where cesponsor like #{cesponsor}")
    public int countCommunistEventBySponsor(String cesponsor);




    //查日期
    @SelectProvider(type = CedateSqlProvider.class,method = "findCedateCondition")
    public List<CommunistEvent> findCommunistEventByDate(@Param("year") String year, @Param("month") String month, @Param("day") String day);



    //增
    @Insert("insert into communistevents (cename,cedate,ceplace,cetheme,cesponsor,ceparticipantnum,ceinfo)values(#{cename}," +
            "#{cedate},#{ceplace},#{cetheme},#{cesponsor},#{ceparticipantnum},#{ceinfo})")
    public void saveCommunistEvent(CommunistEvent communistEvent);

    //改  --依据是活动名称和主办单位
    @Update("update communistevents set cename=#{cename},cedate=#{cedate},ceplace=#{ceplace},cetheme=#{cetheme},cesponsor=#{cesponsor}," +
            "ceparticipantnum=#{ceparticipantnum},ceinfo=#{ceinfo} where cename=#{cename} and cesponsor=#{cesponsor}")
    public void updateCommunistEvent(CommunistEvent communistEvent);


    //删  --依据是活动名称和主办单位
    @Delete("delete from communistevents where cename=#{cename} and cesponsor=#{cesponsor}")
    public void deleteCommunistEvent(@Param("cename") String cename,@Param("cesponsor") String cesponsor);
}


