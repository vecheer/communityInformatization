package com.vecheer.dao;

import com.vecheer.entity.House;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IHouseDao {
    //按小区名称查询 + 查询条件：楼栋号、楼层号、房间号、房间面积上限、房间面积下限、房间设计、出租
    @SelectProvider(type = HouseDaoFindHouseSqlProvider.class,method = "findHouseSqlProvider")
    public List<House> findHouseInCondition(@Param("nname")String nname,@Param("bid")Integer bid,@Param("hfloord")Integer hfloord,
                                            @Param("hflooru")Integer hflooru,@Param("haread")Integer haread,@Param("hareau")Integer hareau,
                                            @Param("hdesign")String hdesign,@Param("hrented")Character hrented);

    //按小区名称和房间号查询房屋 ----增删改的依据
    @Select("select * from houses where nname=#{nname} and hidnum=#{hidnum}")
    public House findHouseByNnameAndHidnum(@Param("nname") String nname,@Param("hidnum") String hidnum);


    //增
    @Insert("insert into houses (nid,nname,bid,hfloor,hidnum,harea,hdesign,hrented,howner,hownerphonenum)values" +
            "(#{nid},#{nname},#{bid},#{hfloor},#{hidnum},#{harea},#{hdesign},#{hrented},#{howner},#{hownerphonenum})")
    public void saveHouse(House house);

    //改
    @Update("update houses set nid=#{nid},bid=#{bid},hfloor=#{hfloor},harea=#{harea},hdesign=#{hdesign},hrented=#{hrented}," +
            "howner=#{howner},hownerphonenum=#{hownerphonenum} where nname=#{nname} and hidnum=#{hidnum}")
    public void updateHouse(House house);

    //删 按小区名称和房间号
    @Delete("delete from houses where nname=#{nname} and hidnum=#{hidnum}")
    public void deleteHouse(@Param("nname") String nname,@Param("hidnum") String hidnum);
}
