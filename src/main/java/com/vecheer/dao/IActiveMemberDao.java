package com.vecheer.dao;

import com.vecheer.entity.ActiveMember;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IActiveMemberDao {
    //查
    @Select("select * from activemembers")
    public List<ActiveMember> findAllActiveMember();

    @Select("select * from activemembers where aidnum=#{aidnum}")
    public ActiveMember findActiveMemberByAidnum(String aidnum);

    @Select("select * from activemembers where aname=#{aname}")
    public List<ActiveMember> findActiveMemberByAname(String aname);


    //***************分页——按支部查询——安支部计算总人数*****************
    @Select("select * from activemembers where ajoinbranch like #{ajoinbranch} limit #{startIndex},#{rsNum}")
    public List<ActiveMember> findActiveMemberByBranch(@Param("ajoinbranch") String ajoinbranch,
                                                       @Param("startIndex") Integer startIndex,
                                                       @Param("rsNum") Integer rsNum);

    @Select("select count(*) from activemembers where ajoinbranch like #{ajoinbranch}")
    public int countActiveMemberByBranch(String ajoinbranch);
    //*************************************************************


    //增
    @Insert("insert into activemembers (aname,asex,anationality,aidnum,aedulevel,aworkentrytime,aworkat,aduty,aaddress," +
            "aleagueentrydate,aapplydate,abeamdate,areferrer,ajoinbranch)values(#{aname},#{asex},#{anationality},#{aidnum},#{aedulevel}," +
            "#{aworkentrytime},#{aworkat},#{aduty},#{aaddress},#{aleagueentrydate},#{aapplydate},#{abeamdate},#{areferrer},#{ajoinbranch})")
    public void saveActiveMember(ActiveMember activeMember);


    //改 --修改依据是身份证号
    @Update("update activemembers set aname=#{aname},asex=#{asex},anationality=#{anationality},aidnum=#{aidnum}," +
            "aedulevel=#{aedulevel},aworkentrytime=#{aworkentrytime},aworkat=#{aworkat},aduty=#{aduty},aaddress=#{aaddress}," +
            "aleagueentrydate=#{aleagueentrydate},aapplydate=#{aapplydate},abeamdate=#{abeamdate},areferrer=#{areferrer},ajoinbranch=#{ajoinbranch} where aidnum=#{aidnum}")
    public void updateActiveMember(ActiveMember activeMember);


    //删 --删除依据是身份证号
    @Delete("delete from activemembers where aidnum=#{aidnum}")
    public void deleteActiveMember(String aidnum);


}
