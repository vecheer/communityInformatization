package com.vecheer.dao;

import com.vecheer.entity.Communist;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ICommunistDao {
    //查
    @Select("select * from communists")
    public List<Communist> findAllCommunist();

    @Select("select * from communists where cid=#{cid}")
    public Communist findCommunistByCid(Integer cid);

    @Select("select * from communists where cname=#{cname}")
    public List<Communist> findCommunistByCname(String cname);

    @Select("select * from communists where cidnum=#{cidnum}")
    public Communist findCommunistByCidnum(String cidnum);


    //按照支部查找
    @Select("select * from communists where cjoinbranch like #{cjoinbranch} limit #{startIndex},#{rsNum}")
    public List<Communist> findCommunistByBranch(@Param("cjoinbranch") String cjoinbranch, @Param("startIndex")
                                                        Integer startIndex, @Param("rsNum") Integer rsNum);


    //按支部查找 计算人数
    @Select("select count(*) from communists where cjoinbranch like #{cjoinbranch}")
    public int countCommunistByBranch(String cjoinbranch);



    //增 --用身份证判重
    @Insert("insert into communists (cname,csex,cnationality,cnativeplace,cidnum,cphonenum,caddress,cbirthday,cduty," +
            "cworkentrytime,cjoinbranch,creferrer,cjointime,cjoinorg,cjoinok,cjoinfrom,cjointhisdate,cmoney,cedu,crp)values" +
            "(#{cname},#{csex},#{cnationality},#{cnativeplace},#{cidnum},#{cphonenum},#{caddress},#{cbirthday},#{cduty}," +
            "#{cworkentrytime},#{cjoinbranch},#{creferrer},#{cjointime},#{cjoinorg},#{cjoinok}, #{cjoinfrom},#{cjointhisdate}," +
            "#{cmoney},#{cedu},#{crp})")
    public void saveCommunist(Communist communist);

    //改 --查询依据是cid
    @Update("update communists set cname=#{cname},csex=#{csex},cnationality=#{cnationality},cidnum=#{cidnum},cnativeplace=#{cnativeplace}," +
            "cidnum=#{cidnum},cphonenum=#{cphonenum},caddress=#{caddress},cbirthday=#{cbirthday},cduty=#{cduty},cworkentrytime=#{cworkentrytime}," +
            "cworkentrytime=#{cjoinbranch},creferrer=#{creferrer},cjointime=#{cjointime},cjoinorg=#{cjoinorg},cjoinok=#{cjoinok}," +
            "cjoinfrom=#{cjoinfrom},cjointhisdate=#{cjointhisdate},cmoney=#{cmoney},cedu=#{cedu},crp=#{crp} where cidnum=#{cidnum}")
    public void updateCommunist(Communist communist);

    //删 --删除依据是cidnum
    @Delete("delete from communists where cidnum=#{cidnum}")
    public void deleteCommunist(String cidnum);

}
